#include "Team.hpp"

Team::Team(const std::string name) : _name(name)
{
    _members = std::list<Participant*>();
}
void Team::changeName(const std::string name) 
{
    _name = name;
}
std::string Team::getName() 
{
    return _name;    
}
void Team::addMember(Participant& member)
{
    bool found = false;
    for (const auto& it : _members)
    {
        if (it == &member)
            found = true;
    }
    if (!found)
        _members.push_back(&member);
}
void Team::removeMember(Participant& member)
{
    for (const auto& it : _members)
    {
        if (it == &member)
            _members.remove(it);
    }
}
int Team::size()
{
    return _members.size();
}
bool Team::operator==(const Team& other)
{
    if (_name == other._name)
        return true;
    else
        return false;
}
Team::~Team() { }