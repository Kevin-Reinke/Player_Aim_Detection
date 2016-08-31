/*
	Player Aim Detection ~ Kevin-Reinke

	This program is free software: you can redistribute it and/or modify
	it under the terms of the GNU General Public License as published by
	the Free Software Foundation, either version 3 of the License, or
	(at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program. If not, see <http://www.gnu.org/licenses/>.
*/

// ** INCLUDES

#include <a_samp>

// ** DEFINES

// *** GENERAL

#define KEY_AIM KEY_HANDBRAKE

// *** FUNCTIONS

// **** KEY SIMULATIONS

#define PRESSED(%0) (((newkeys & (%0)) == (%0)) && ((oldkeys & (%0)) != (%0)))
#define RELEASED(%0) (((newkeys & (%0)) != (%0)) && ((oldkeys & (%0)) == (%0)))

// ** CALLBACKS

public OnFilterScriptInit()
{
	return 1;
}

public OnFilterScriptExit()
{
	return 1;
}

public OnPlayerKeyStateChange(playerid, newkeys, oldkeys)
{
	if(GetPlayerState(playerid) == PLAYER_STATE_ONFOOT)
	{
		if(PRESSED(KEY_AIM))
		{
			SendClientMessage(playerid, -1, "You have started to aim.");
		}
		else if(RELEASED(KEY_AIM))
		{
			SendClientMessage(playerid, -1, "You have stopped aiming.");
		}
	}
	return 1;
}