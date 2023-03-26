sideSecurity = west;
sideCivilian = independent;
sideInsurgent = east;

civRadio = "ACRE_BF888S"; // Radio to be used by the CIVILIAN/INSURGENT players.
bluforRadio = "ACRE_PRC343"; // Radio to be used by the SECURITY players.

shopPriceCoeff = (paramsArray select 2); // Variable price rate for all shop items.

shopPriceMult = 100; // Base multiplier for all shop items.

securityItems = [["rhsusf_weap_m9"], ["FirstAidKit","FirstAidKit","rhsusf_mag_15Rnd_9x19_JHP","rhsusf_mag_15Rnd_9x19_JHP"], bluforRadio, "rhs_googles_black"]; // Items to be added along with any purchased SECURITY loadout.

execVM "scripts\shop\shopLists.sqf"; // Shops
