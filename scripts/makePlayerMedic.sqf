player addBackpack _this;
for "_i" from 1 to 10 do { player addItemToBackpack "ACE_fieldDressing" };
for "_i" from 1 to 3 do { player addItemToBackpack "ACE_salineIV" };
for "_i" from 1 to 3 do { player addItemToBackpack "ACE_epinephrine" };
for "_i" from 1 to 3 do { player addItemToBackpack "ACE_morphine" };
player setUnitTrait ["Medic", true];