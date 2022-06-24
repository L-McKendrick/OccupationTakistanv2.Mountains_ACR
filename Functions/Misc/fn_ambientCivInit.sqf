params ["_unit"];

_unit setUnitLoadout "UK3CB_TKC_C_CIV";

removeUniform _unit;
removeHeadgear _unit;

_unit forceAddUniform (selectRandom ["UK3CB_TKC_C_U_01","UK3CB_TKC_C_U_01_B","UK3CB_TKC_C_U_01_C","UK3CB_TKC_C_U_01_D","UK3CB_TKC_C_U_01_E","UK3CB_TKC_C_U_02","UK3CB_TKC_C_U_02_B","UK3CB_TKC_C_U_02_C","UK3CB_TKC_C_U_02_D","UK3CB_TKC_C_U_02_E","UK3CB_TKC_C_U_03","UK3CB_TKC_C_U_03_B","UK3CB_TKC_C_U_03_C","UK3CB_TKC_C_U_03_D","UK3CB_TKC_C_U_03_E","UK3CB_TKC_C_U_06","UK3CB_TKC_C_U_06_B","UK3CB_TKC_C_U_06_C","UK3CB_TKC_C_U_06_D","UK3CB_TKC_C_U_06_E"]);

_unit addHeadgear (selectRandom ["UK3CB_TKC_H_Turban_01_1","UK3CB_TKC_H_Turban_01_1","UK3CB_TKC_H_Turban_01_2","UK3CB_TKC_H_Turban_01_3","UK3CB_TKC_H_Turban_01_4","UK3CB_TKC_H_Turban_01_5","UK3CB_TKC_H_Turban_02_1","UK3CB_TKC_H_Turban_02_2","UK3CB_TKC_H_Turban_02_3","UK3CB_TKC_H_Turban_02_4","UK3CB_TKC_H_Turban_02_5","UK3CB_TKC_H_Turban_03_1","UK3CB_TKC_H_Turban_03_2","UK3CB_TKC_H_Turban_03_3","UK3CB_TKC_H_Turban_03_4","UK3CB_TKC_H_Turban_03_5","UK3CB_TKC_H_Turban_04_1","UK3CB_TKC_H_Turban_04_2","UK3CB_TKC_H_Turban_04_3","UK3CB_TKC_H_Turban_04_4","UK3CB_TKC_H_Turban_04_5","UK3CB_TKC_H_Turban_05_1","UK3CB_TKC_H_Turban_05_2","UK3CB_TKC_H_Turban_05_3","UK3CB_TKC_H_Turban_05_4","UK3CB_TKC_H_Turban_05_5","UK3CB_TKC_H_Turban_06_1","UK3CB_TKC_H_Turban_06_2","UK3CB_TKC_H_Turban_06_3","UK3CB_TKC_H_Turban_06_4","UK3CB_TKC_H_Turban_06_5"]);

[_unit, selectRandom ["PersianHead_A3_01", "PersianHead_A3_02", "PersianHead_A3_03"]] remoteExec ["setFace", 0, _unit];

_unit addMPEventHandler ["MPKilled", { 
  params ["_unit", "_killer", "_instigator", "_useEffects"];  
  [-1] remoteExecCall ["occupation_fnc_updateKarma", _instigator]; 
 }];

true;