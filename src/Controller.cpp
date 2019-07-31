#include "Controller.hpp"

//Private/Auxiliary functions

int Controller::getRandKey() 
{
    auto it = _participants.begin();
    std::random_device generator;
    std::uniform_int_distribution<int> distribution(0, _participants.size());
    int dice = distribution(generator) % _participants.size();
    if (dice == 0)
        return it->first;
    std::advance(it, dice);
    return it->first;
}

int Controller::djb2(const std::string& string)
{
    unsigned long hash = 5381;
    for (const auto character : string) {
        hash = (hash << 5) + hash + character;
    }
    return hash;
}

float Controller::diceRoll(Participant& Participant)
{
    return (rand() + ((Participant.getKills() + 1) * round)) % 256;
}

//Public functions

Controller::Controller(bool mode) : teamMode(mode), round(1)
{
    _participants = std::map<int, Participant>();
    _teams = std::map<int, Team>();
}

bool Controller::checkWin()
{
    if (teamMode)
    {
        if (_teams.size() == 1)
            return true;
    }
    else
    {
        if (_participants.size() == 1)
            return true;
    }
    return false;
}

Team& Controller::winnerTeam()
{
    return _teams.begin()->second;
}

Participant& Controller::winner()
{
    return _participants.begin()->second;
}

void Controller::newTeam(std::string teamName) 
{
    if (teamName.size() == 0)
        std::cout << "Error: The name has to be atleast 1 character long\n";
    else if (_teams.find(djb2(teamName)) != _teams.end())
        std::cout << "Error: This name is already in use\n";
    else
        _teams.emplace(djb2(teamName),Team(teamName));
}

void Controller::newTeam()
{
    std::string aux;
    std::cout << "\nTeam's names have to be atleast 1 character long and unique\n";
    int counter = 0;
    while (aux.size() == 0 && counter < 3)
    {
        std::cout << "Type the new team's name: ";
        std::getline(std::cin >> std::ws, aux);
        if (aux.size() == 0)
            std::cout << "\nError: The name has to be atleast 1 character long\n\n";
        if (_teams.find(djb2(aux)) != _teams.end())
            std::cout << "\nError: This name is already in use\n\n";
        ++counter;
    }
    if (counter < 3)
    {
        _teams.emplace(djb2(aux),Team(aux));
        std::cout << "Team " << aux << " has been successfully added\n";
    }
    else
    {
        std::cout << "\nError: Too many attempts, cancelling\n\n";
    } 
}

void Controller::newMember(std::string teamName)
{
    bool validTeam = true;
    if (teamMode)
    {
        validTeam = false;
        if (_teams.find(djb2(teamName)) != _teams.end())
            validTeam = true;
    }
    if (validTeam)
    {
        std::string aux, aux2;
        std::cout << "\nParticipant's names have to be atleast 1 character long\nAliases have to be atleast 1 character long and unique\n";
        int counter = 0;
        while (aux.size() == 0 && counter < 3)
        {
            std::cout << "Type the new participant's name: ";
            std::getline(std::cin >> std::ws, aux);
            if (aux.size() == 0)
                std::cout << "\nError: The name has to be atleast 1 character long\n\n";
            ++counter;
        }
        if (counter < 3)
            counter = 0;
        else
        {
            std::cout << "\nError: Too many attempts, cancelling\n\n";
            counter = INT32_MAX;
        }
        while (aux2.size() == 0 && counter < 3)
        {
            std::cout << "Type the new participant's alias: ";
            std::getline(std::cin >> std::ws, aux2);
            if (aux2.size() == 0)
                std::cout << "\nError: The name has to be atleast 1 character long\n\n";
            if (_participants.find(djb2(aux2)) != _participants.end())
                std::cout << "\nError: Alias already in use\n\n";
            ++counter;
        }
        if (counter < 3)
        {
            newMember(teamName, aux, aux2);
        }
        else
        {
            std::cout << "\nError: Too many attempts, canceling\n\n";
        }
    }
    else
    {
        std::cout << "\nError: Invalid team name or miss typed\n\n";
    }   
}

void Controller::newMember(std::string teamName, std::string name, std::string alias)
{
    if (_participants.find(djb2(alias)) != _participants.end())
    {
        std::cout << "\nError: Alias already in use\n\n";
    }
    else if (teamMode)
    {
        _participants.emplace(djb2(alias),Participant(name, alias, _teams.find(djb2(teamName))->second));
        _teams.find(djb2(teamName))->second.addMember(_participants.find(djb2(alias))->second);
        std::cout << "Member " << name << " has been successfully added to team: " << teamName << "\n";
    }
    else
    {
        newTeam(std::to_string(StandAloneTeams));
        _participants.emplace(djb2(alias),Participant(name, alias, _teams.find(djb2(std::to_string(StandAloneTeams)))->second));
        std::cout << "Member " << name << " has been successfully added\n";
        ++StandAloneTeams;
    }
}

void Controller::removeMember(std::string alias)
{
    auto it = _participants.find(djb2(alias));
    auto team = _teams.find(djb2(it->second.getTeam().getName()));
    if (it != _participants.end())
    {
        team->second.removeMember(it->second);
        if (team->second.size() == 0)
            removeTeam(team->second.getName());
        _participants.erase(it);
    }
    else
    {
        std::cout << "Error: Participant has already been killed or wasn't added\n";
    }   
}

void Controller::removeTeam(std::string teamName)
{
    auto it = _teams.find(djb2(teamName));
    if (it != _teams.end())
    {
        _teams.erase(it);
    }
    else
    {
        std::cout << "Error: This team has already been defeated or never added\n";
    }
}

int Controller::teamsAlive()
{
    return _teams.size();
}

int Controller::playersAlive()
{
    return _participants.size();
}

Participant& Controller::doRound()
{
    if (_participants.size() == 1) 
    {
        return _participants.begin()->second;
    }
    else
    {
        Participant first = _participants.find(getRandKey())->second;
        Participant second = _participants.find(getRandKey())->second;
        while (first == second || first.getTeam() == second.getTeam())
        {
            second = _participants.find(getRandKey())->second;
        }
        float dice1 = diceRoll(first);
        float dice2 = diceRoll(second);
        while (dice1 == dice2)
        {
            dice1 = diceRoll(first);
            dice2 = diceRoll(second);
        }
        if (dice1 < dice2)
        {
            std::cout << std::endl <<  first.getName() << "(" << first.getAlias() << ") has been killed by " << second.getName() << "(" << second.getAlias() << ")\n\n";
            removeMember(first.getAlias());
            _participants.find(djb2(second.getAlias()))->second.killUp();
            ++round;
            return second;
        }
        else
        {
            std::cout << std::endl << second.getName() << "(" << second.getAlias() << ") has been killed by " << first.getName() << "(" << first.getAlias() << ")\n\n";
            removeMember(second.getAlias());
            _participants.find(djb2(first.getAlias()))->second.killUp();
            ++round;
            return first;
        }
    }
}

Controller::~Controller() { };