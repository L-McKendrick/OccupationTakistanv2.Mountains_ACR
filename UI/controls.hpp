

class dialogShop 
{
	idd = 1234;
	class controls 
	{
		////////////////////////////////////////////////////////
		// GUI EDITOR OUTPUT START (by McKendrick, v1.063, #Kuciny)
		////////////////////////////////////////////////////////

		class baseFrame: RscFrame
		{
			idc = 1800;

			text = "Shop"; //--- ToDo: Localize;
			x = 0.358372 * safezoneW + safezoneX;
			y = 0.276 * safezoneH + safezoneY;
			w = 0.278372 * safezoneW;
			h = 0.434 * safezoneH;
		};
		class optionListbox: RscListBox
		{
			idc = 1000;
			onLBSelChanged = "_this call occupation_fnc_updateInfo";

			x = 0.373023 * safezoneW + safezoneX;
			y = 0.318 * safezoneH + safezoneY;
			w = 0.122093 * safezoneW;
			h = 0.378 * safezoneH;
		};
		class buyButton: RscButton
		{
			idc = 1600;
			action = "[lbCurSel 1000, currentShopList] call occupation_fnc_doBuy; closeDialog 1";

			text = "Buy"; //--- ToDo: Localize;
			x = 0.529302 * safezoneW + safezoneX;
			y = 0.626 * safezoneH + safezoneY;
			w = 0.0683721 * safezoneW;
			h = 0.07 * safezoneH;
			tooltip = "Purchase the selected item"; //--- ToDo: Localize;
		};
		class textMoney: RscText
		{
			idc = 1001;
			style = "0x02";

			text = "MONEY HERE"; //--- ToDo: Localize;
			x = 0.563488 * safezoneW + safezoneX;
			y = 0.304 * safezoneH + safezoneY;
			w = 0.0683721 * safezoneW;
			h = 0.028 * safezoneH;
			tooltip = "Your current amount of money"; //--- ToDo: Localize;
		};
		class textPrice: RscText
		{
			idc = 1002;

			text = "SELECTED PRICE"; //--- ToDo: Localize;
			x = 0.504884 * safezoneW + safezoneX;
			y = 0.584 * safezoneH + safezoneY;
			w = 0.122093 * safezoneW;
			h = 0.028 * safezoneH;
		};
		class textType: RscText
		{
			idc = 1003;

			text = "TYPE"; //--- ToDo: Localize;
			x = 0.504884 * safezoneW + safezoneX;
			y = 0.542 * safezoneH + safezoneY;
			w = 0.122093 * safezoneW;
			h = 0.028 * safezoneH;
		};
		class textItem: RscText
		{
			idc = 1004;

			text = "ITEM"; //--- ToDo: Localize;
			x = 0.504884 * safezoneW + safezoneX;
			y = 0.5 * safezoneH + safezoneY;
			w = 0.122093 * safezoneW;
			h = 0.028 * safezoneH;
		};
		class shopPicture: RscPicture
		{
			idc = 1200;
			text = "#(argb,8,8,3)color(1,1,1,1)";
			x = 0.509767 * safezoneW + safezoneX;
			y = 0.346 * safezoneH + safezoneY;
			w = 0.107442 * safezoneW;
			h = 0.14 * safezoneH;
		};
	};
};
		////////////////////////////////////////////////////////
		// GUI EDITOR OUTPUT END
		////////////////////////////////////////////////////////


	/*
	{
				////////////////////////////////////////////////////////
		// GUI EDITOR OUTPUT START (by McKendrick, v1.063, #Qiguco)
		////////////////////////////////////////////////////////

		class baseFrame: RscFrame
		{
			idc = 1800;
			text = "Shop"; //--- ToDo: Localize;
			x = 0.358372 * safezoneW + safezoneX;
			y = 0.276 * safezoneH + safezoneY;
			w = 0.278372 * safezoneW;
			h = 0.434 * safezoneH;
		};
		class optionListbox: RscListBox
		{
			idc = 1000;
			onLBSelChanged = "_this call occupation_fnc_updateInfo";

			x = 0.373023 * safezoneW + safezoneX;
			y = 0.318 * safezoneH + safezoneY;
			w = 0.122093 * safezoneW;
			h = 0.378 * safezoneH;
		};
		class buyButton: RscButton
		{
			idc = 1600;
			action = "[lbCurSel 1000, currentShopList] call occupation_fnc_doBuy; closeDialog 1";

			text = "Buy"; //--- ToDo: Localize;
			x = 0.53 * safezoneW + safezoneX;
			y = 0.626 * safezoneH + safezoneY;
			w = 0.0683721 * safezoneW;
			h = 0.056 * safezoneH;
			tooltip = "Purchase the selected item"; //--- ToDo: Localize;
		};
		class textMoney: RscText
		{
			idc = 1001;
			style = "0x02";

			text = "MONEY HERE"; //--- ToDo: Localize;
			x = 0.563488 * safezoneW + safezoneX;
			y = 0.304 * safezoneH + safezoneY;
			w = 0.0683721 * safezoneW;
			h = 0.028 * safezoneH;
			tooltip = "Your current amount of money"; //--- ToDo: Localize;
		};
		class textPrice: RscText
		{
			idc = 1002;

			text = "SELECTED PRICE"; //--- ToDo: Localize;
			x = 0.504884 * safezoneW + safezoneX;
			y = 0.57 * safezoneH + safezoneY;
			w = 0.122093 * safezoneW;
			h = 0.028 * safezoneH;
		};
		class textType: RscText
		{
			idc = 1003;

			text = "TYPE"; //--- ToDo: Localize;
			x = 0.504884 * safezoneW + safezoneX;
			y = 0.528 * safezoneH + safezoneY;
			w = 0.122093 * safezoneW;
			h = 0.028 * safezoneH;
		};
		class textItem: RscText
		{
			idc = 1004;
			text = "ITEM"; //--- ToDo: Localize;
			x = 0.504884 * safezoneW + safezoneX;
			y = 0.486 * safezoneH + safezoneY;
			w = 0.122093 * safezoneW;
			h = 0.028 * safezoneH;
		};
		////////////////////////////////////////////////////////
		// GUI EDITOR OUTPUT END
		////////////////////////////////////////////////////////

	};
};

*/