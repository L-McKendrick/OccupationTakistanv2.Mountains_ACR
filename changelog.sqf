player createDiarySubject ["changelog","Changelog"];

#define CHANGELOG(VERSION,TXT,UPDATED) player createDiaryRecord ["changelog", [VERSION, ("(Updated " + UPDATED + ")<br></br> == Version #" + VERSION + " == <br></br>" + TXT)]];

private _txt = "";

_txt = "<br></br>Initial Release";
CHANGELOG("2.00",_txt,"Jun-15-2022");

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

CHANGELOG("2.01",_txt,"Jun-22-2022");

_txt = "
	<br></br> Added:
	<br></br>    - Throwable rocks avaliable at the civilian shop for free.
	<br></br>    - Mosin, Lee Enfield, M1 Garand, Ak-47, AKM, and Browning HP to INSURGENT shop.
	<br></br>	 - 'Purchase Success' text along with price when buying something from a shop.
	<br></br>    - Briefing tab for role info.
	<br></br>    - Ambient AfghanPrayer1 noise.
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
	<br></br>    - INSURGENTs and CIVILIANs were unable to see eachother's names.
	<br></br>    - INSURGENTs and CIVILIANs were unable to see eachother's names.
	<br></br>    - CIVILIANs who joined the INSURGENT were still in array of innocent CIVILIANs.
	<br></br>    - Buying equipment would also return false when purchasing.
	<br></br>    - Issue with civilians not able to contact their insurgent contact.
";

CHANGELOG("2.02",_txt,"Jun-23-2022");