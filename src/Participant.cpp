#include "Participant.hpp"

Participant::Participant(const std::string name, const std::string alias) : _name(name), _alias(alias), _killCount(0) { }
Participant::Participant(const std::string name, const std::string alias, Team& team) : _name(name), _alias(alias), _team(&team), _killCount(0) { }
Participant::Participant(std::nullptr_t null) : _alias(nullptr) {}
std::string Participant::getName()
{
    return _name;
}
std::string Participant::getAlias()
{
    return _alias;
}
Team& Participant::getTeam()
{
    return *_team;
}
void Participant::setName(const std::string name)
{
    _name = name;
}
void Participant::setAlias(const std::string alias)
{
    _alias = alias;
}
void Participant::setTeam (Team& team)
{
    _team = &team;
}
void Participant::killUp()
{
    ++_killCount;
}
const unsigned int Participant::getKills()
{
    return _killCount;
}
bool Participant::operator==(const Participant& other)
{
    if (_alias == other._alias)
        return true;
    return false;
}
Participant::~Participant() { }