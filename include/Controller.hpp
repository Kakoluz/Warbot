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
    int getRandKey();
    int djb2(const std::string& s);
    float diceRoll(Participant& participant);
    std::map<int, Participant> _participants;
    std::map<int, Team> _teams;
    bool teamMode;
    int round;
    int StandAloneTeams;
public:
    Controller(bool mode);
    bool checkWin();
    Team& winnerTeam();
    Participant& winner();
    void newTeam();
    void newTeam(std::string teamName);
    void newMember(std::string teamName);
    void newMember(std::string teamName, std::string name, std::string alias);
    void removeMember(std::string alias);
    void removeTeam(std::string teamName);
    int teamsAlive();
    int playersAlive();
    Participant& doRound();
    ~Controller();
};