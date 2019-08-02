#pragma once
#include "Team.hpp"
#include <string>
#include <vector>
#include <map>
#include <iostream>
#include <cstdint>
#include <random>

class Controller
{
private:
    std::map<int, Participant> _participants;
    std::map<int, Team> _teams;
    bool _teamMode;
    unsigned int _round;
    unsigned int _standAloneTeams;

    const int getRandKey();
    const int djb2(const std::string& s);
    const float diceRoll(Participant& participant);
public:
    Controller(bool mode);
    const bool checkWin();
    Team& winnerTeam();
    Participant& winner();
    void newTeam();
    void newTeam(std::string teamName);
    void newMember(std::string teamName);
    void newMember(std::string teamName, std::string name, std::string alias);
    void removeMember(std::string alias);
    void removeTeam(std::string teamName);
    const int teamsAlive();
    const int playersAlive();
    Participant& doRound();
    ~Controller();
};