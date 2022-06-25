player createDiarySubject ["changelog","Changelog"];

#define CHANGELOG(VERSION,TXT,UPDATED) player createDiaryRecord ["changelog", [VERSION, ("(Updated " + UPDATED + ")<br></br> == Version #" + VERSION + " == <br></br>" + TXT)]];

private _txt = "";

_txt = "<br></br>Initial Release";
CHANGELOG("2.0",_txt,"Jun-15-2022");

_txt = "
	<br></br> Added:
	<br></br>    - Karma system.
	<br></br>    - Price tables.
	<br></br>    - Karma gain/loss depending on win.
	<br></br>    - Dead man's switch to INSURGENT shop.
	<br></br>
	<br></br> Improved:
	<br></br>    - Shop will check player's money when trying to buy an item.
	<br></br>    - Karma min/max limits.
	<br></br>    - Universal -1 karma when killing ambient CIVILIANs.
	<br></br>    - Shop will show text indicating whether the transaction was successful.
	<br></br>
	<br></br> Fixed:
	<br></br>    - Incorrect win/lose displayed.";

CHANGELOG("2.1",_txt,"Jun-22-2022");

_txt = "
	<br></br> Added:
	<br></br>    - Throwable rocks avaliable at the civilian shop for free.
	<br></br>    - Mosin, Lee Enfield, M1 Garand, Ak-47, AKM, and Browning HP to INSURGENT shop.
	<br></br>	 - 'Purchase Success' text along with price when buying something from a shop.
	<br></br>    - Briefing tab for role info.
	<br></br>    - Ambient AfghanPrayer1 and ArabicCountryside noise.
	<br></br>    - Random cash piles around that map that can be picked up by non-Security players.
	<br></br>    - Mission parameter option to reset all player's karma.
	<br></br>
	<br></br> Improved:
	<br></br>    - Unlocked free cam and view options when in ACE Spectator.
	<br></br>    - Players can understand all languages when in ACE Spectator.
	<br></br>    - Scoreboard will no longer update kills, etc.
	<br></br>    - GPS item now added to all players by default.
	<br></br>    - Radio item now added to INSURGENTs by default.
	<br></br>    - Locations of INSURGENT cache to be a little less spread out.
	<br></br>
	<br></br> Fixed:
	<br></br>    - Some players not able to take damage.
	<br></br>    - CBA option for 'Enable Team Management' incorrectly enabled.
	<br></br>    - End of game karma points being applied to those who joined late/spectated.
	<br></br>    - INSURGENTs and CIVILIANs were unable to see eachother's names.
	<br></br>    - INSURGENTs and CIVILIANs were unable to see eachother's names.
	<br></br>    - CIVILIANs who joined the INSURGENT were still in array of innocent CIVILIANs.
	<br></br>    - Buying equipment would also return false when purchasing.
	<br></br>    - Issue with civilians not able to contact their insurgent contact.
	<br></br><br></br>HOTFIX 2.2.1
	<br></br>    - Fixed invicible players, final karma not working.
";

CHANGELOG("2.2",_txt,"Jun-23-2022");

_txt = "
	<br></br> Added:
	<br></br>    - ACE_CableTie to the Security shop.
	<br></br>    - Ambient Civs will randomly have backpacks.
	<br></br>    - A few decorative vehicles around the map.
	<br></br>
	<br></br> Tweaked:
	<br></br>    - IEDs and Deadman's Switch are slightly more expensive in the INSURGENT shop.
	<br></br>
	<br></br> Improved:
	<br></br>    - Shop will no longer automatically close after buying an item. Your current money will also update.
	<br></br>    - Disabled ACE stamina in favor of vanilla.
	<br></br>
	<br></br> Fixed:
	<br></br>    - Ambient countryside SFX was duplicated by client.
	<br></br>    - A single INSURGENT could be contact by more than once CIVILIANs.
	<br></br>    - The translator perk was free for CIVILIANs.
	<br></br>    - Civilians were unable to see names of INSURGENT players.
	<br></br>    - Karma not counting on kills.
	<br></br>    - CIVILIANS were not considered winners when alive at mission end.
	<br></br>    - INSURGENT radio not being given on game start.
";

CHANGELOG("2.3",_txt,"Jun-25-2022");