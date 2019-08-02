#pragma once
#include <string>
class Team;

class Participant
{
private:
    std::string _name;
    std::string _alias;
    Team* _team;
    unsigned int _killCount;
public:
    Participant(const std::string name, const std::string alias);
    Participant(const std::string name, const std::string alias, Team& team);
    Participant(std::nullptr_t null);
    void setName(std::string name);
    void setAlias(std::string alias);
    void setTeam(Team& team);
    std::string getName();
    std::string getAlias();
    Team& getTeam();
    void killUp();
    const unsigned int getKills();
    bool operator==(const Participant& other);
    ~Participant();
};