#include <iostream>
#include <string>
#include <sstream>
#include <chrono>
#include <ctime>
#include <thread>
#include "Controller.hpp"

/**
 * Short: gets the system time and transforms it in a string.
 * Return: the time in a string.
 */

std::string timeToString()
{
    std::time_t timeNow = std::time(0);
    std::tm* now = std::localtime(&timeNow);
    char returnString [20];
    strftime(returnString,20,"%R",now);
    return returnString;
}

/**
 * Short: gets the system time and adds it the amount of time between battle to calculate the next one.
 * Args: int time, the time betweeen battles
 *       time baseTime, the reference time to get the time for the next battle.
 * Return: the time of the next battle in a string.
 */

std::string nextBattle(int time, std::time_t baseTime)
{
    std::tm* now = std::localtime(&baseTime);
    int hour = now->tm_hour + (time - (time % 60)) % 23;
    int minute = now->tm_min + (time % 59) % 59;
    std::stringstream returnString;
    if (hour < 10)
        returnString << "0" << hour << ":" << minute;
    else if (minute < 10)
    {
        returnString.clear();
        returnString << hour << "0" << minute;
    }
    else if (hour < 100 && minute < 10)
    {
        returnString.clear();
        returnString << "0" << hour << "0" << minute;
    }
    else 
    returnString << hour << ":" << minute;
    return returnString.str();
}

/**
 * Short: stops the thread for some time
 * Args: int time, the amount of time to stop the thread in seconds.
 * Note: due to how the main program is, to have an accurate stop the time needs to be passed to this fuction already changed into seconds.
 */

void waitForMinutes(int time)
{
    std::this_thread::sleep_for(std::chrono::seconds(time));
}

int main()
{
    char selection;
    char mode = 'n';
    bool started = false;
    int timeUntilbattle;

    std::cout << "You want the war to be team-based or players alone\nEnter y for team-based war, press enter to continue as a deathmatch\n";
    std::cin >> mode;
    Controller warbot(false);
    if (mode == 'y')
    {
        warbot = Controller(true);
        while (!started)
        {
            std::cout << "\nMain Menu\n" << std::endl <<
            "Pick a option:" << std::endl <<
            "1) Create team" << std::endl <<
            "2) Add a player" << std::endl <<
            "3) Start the war" << std::endl <<
            "4) exit now" << std::endl;
            std::cin >> selection;

            switch (selection)
            {
            case '1':
            {
                warbot.newTeam();
                break;
            }
            case '2':
            {
                std::string name;
                std::cout << "\nType the team name to add this player to: \n";
                std::cin >> name;
                warbot.newMember(name);
                break;
            }
            case '3':
            {
                started = true;
                break;
            }
            default:
            {
                return 1;
                break;
            }
            }
        }
    }
    else
    {
        while (!started)
        {
            std::cout << "\nMain Menu\n" << std::endl <<
            "Pick a option:" << std::endl <<
            "1) Add a player" << std::endl <<
            "2) Start the war" << std::endl <<
            "3) exit now" << std::endl;
            std::cin >> selection;

            switch (selection)
            {
            case '1':
            {
                warbot.newMember("null");
                break;
            }
            case '2':
            {
                started = true;
                break;
            }
            default:
            {
                return 2;
                break;
            }
            }
        }
    }
    std::cout << "\nEnter the time between battles in minutes\n";
    std::cin >> timeUntilbattle;
    std::cout << "\nWar started\n\n";
    while (!warbot.checkWin())
    {
        std::time_t baseTime = std::time(0);
        for (int i = 0; i < 4; ++i)
        {
            std::cout << "Current time is " << timeToString() << " next battle will be at " << nextBattle(timeUntilbattle, baseTime) << std::endl;
            waitForMinutes((timeUntilbattle*60)/4);
        }
        warbot.doRound();
    }
    if (mode == 'y')
        std::cout << "Team " << warbot.winnerTeam().getName() << " won the war with " << warbot.winnerTeam().size() << " member alive\nCONGRATULATIONS";
    else
        std::cout << warbot.winner().getName()<< " (" << warbot.winner().getAlias() << ") won the war, with " << warbot.winner().getKills() << " kills\nCONGRATULATIONS";
    
    std::cout << "\nThe war is over\n\nPress Enter to exit...";
    std::cin.get();
    return 0;
}