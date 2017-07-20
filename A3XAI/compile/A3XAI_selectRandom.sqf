#include "\A3XAI\globaldefines.hpp"

//scriptName "Functions\arrays\fn_selectRandom.sqf";
/************************************************************
    Random Select
    By Andrew Barron

Parameters: array

This returns a randomly selected element from the passed array.

Example: [1,2,3] call BIS_fnc_selectRandom
Returns: 1, 2, or 3
************************************************************/

private "_ret";

_ret = count _this;           //number of elements in the array
if (_ret > 0) then {
    _ret = floor (random _ret);   //floor it first 
    _ret = _this select _ret;     //get the element, return it
};
_ret