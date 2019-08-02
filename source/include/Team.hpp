#pragma once
#include <string>
#include <list>
#include "Participant.hpp"

class Team 
{
private:
    std::string _name;
    std::list<Participant*> _members;
public:
    Team(const std::string name);
    void changeName(const std::string name);
    void addMember(Participant& member);
    void removeMember(Participant& member);
    const std::string getName();
    const int size();
    bool operator==(const Team& other);
    ~Team();
};