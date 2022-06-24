waitUntil {!(isNull (findDisplay 602))};
while {!(isNull (findDisplay 602))} do {// Keep the "uniform slot" control on lockdown. Else there are loop holes. No pun intended.
ctrlEnable [6331, false]; 
};