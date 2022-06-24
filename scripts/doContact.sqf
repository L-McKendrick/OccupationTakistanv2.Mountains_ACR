params ["_unit"];

_unit setVariable ["beenContacted", true];

"cMark" setMarkerAlphaLocal 1;

[player] joinSilent (group _unit);

redGuys append [player];
greenGuys = greenGuys - [player];
publicVariable "greenGuys";
publicVariable "redGuys";