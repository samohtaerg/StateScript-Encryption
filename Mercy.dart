settings
{
	main
	{
		Description: "6ABHJ"
	}

	lobby
	{
		Allow Players Who Are In Queue: Yes
		Max Spectators: 0
		Use Experimental Update If Available: Yes
	}

	modes
	{
		disabled Assault
		{
			Competitive Rules: On
		}

		disabled Control
		{
			Competitive Rules: On
		}

		Deathmatch
		{
			Game Length In Minutes: 15
			Score To Win: 5000

			enabled maps
			{
				Workshop Island Night
			}
		}

		disabled Escort
		{
			Competitive Rules: On
		}

		disabled Hybrid
		{
			Competitive Rules: On
		}

		General
		{
			Game Mode Start: Immediately
			Hero Limit: Off
			Respawn As Random Hero: On
		}
	}

	heroes
	{
		General
		{
			Ability Cooldown Time: 0%
			No Ammunition Requirement: On
			Spawn With Ultimate Ready: On
		}
	}

	extensions
	{
		Spawn More Dummy Bots
	}
}

variables
{
	global:
		20: var_b
		32: blacklisted
		38: var_f
		77: var_i
		102: var_k
		105: constants
		127: var_l

	player:
		39: mercy
		113: var_n
}

subroutines
{
	30: start_game
}

rule("This program has been deobfuscated.")
{
	event
	{
		Ongoing - Global;
	}

	actions
	{
		Disable Inspector Recording;
		Global.constants = Array(Map(Busan Sanctuary Lunar New Year), Button(Primary Fire), Map(Ecopoint: Antarctica Winter), Map(
			Lijiang Tower), Map(Hollywood), Map(Lijiang Control Center), Color(Turquoise), Game Mode(Freezethaw Elimination), Game Mode(
			Control), Game Mode(Practice Range), Hero(Roadhog), Button(Reload), Color(Team 1), Map(Havana), Color(Orange), Game Mode(
			Lúcioball), Map(Junkertown), Game Mode(Assault), Color(Team 2), Map(Ecopoint: Antarctica), Hero(Reaper), Game Mode(
			Bounty Hunter), Color(Aqua), Hero(Echo), Color(Sky Blue), Hero(Genji), Map(Kanezaka), Button(Ability 2), Hero(McCree), Color(
			Lime Green), Map(Ilios Ruins), Map(Horizon Lunar Colony), Map(Château Guillard Halloween), Map(Estádio das Rãs), Color(Team 2),
			Hero(Junkrat), Map(Workshop Chamber), Hero(Symmetra), Map(Workshop Green Screen), Color(Black), Color(White), Map(
			Black Forest Winter), Game Mode(Hybrid), Button(Melee), Map(Ilios), All Teams, Map(Busan Downtown Lunar New Year), Button(
			Interact), Map(Nepal Village), Map(Eichenwalde Halloween), Map(Dorado), Game Mode(Team Deathmatch), Map(Workshop Island), Hero(
			Winston), Map(King's Row), Map(Lijiang Night Market), Button(Ability 1), Map(Blizzard World), Map(King's Row Winter), Button(
			Secondary Fire), Hero(Tracer), Color(Violet), Game Mode(Capture the Flag), Map(Castillo), Color(Green), Map(
			Lijiang Garden Lunar New Year), Map(Nepal Village Winter), Map(Hanamura), Hero(Lúcio), Hero(Wrecking Ball), Color(Purple), Map(
			Ilios Lighthouse), Game Mode(Snowball Deathmatch), Map(Volskaya Industries), Hero(Baptiste), Game Mode(
			Mei's Snowball Offensive), Hero(Mei), Color(Rose), Color(Red), Hero(Doomfist), Map(Lijiang Tower Lunar New Year), Hero(
			Bastion), Map(Workshop Expanse Night), Hero(Zenyatta), Map(Temple of Anubis), Hero(Pharah), Map(Oasis), Map(Lijiang Garden),
			Color(Yellow), Map(Nepal Shrine), Map(Hanamura Winter), Map(Château Guillard), Hero(D.Va), Map(Black Forest), Map(
			Lijiang Control Center Lunar New Year), Button(Ultimate), Hero(Sigma), Game Mode(Escort), Game Mode(Yeti Hunter), Map(
			Sydney Harbour Arena Classic), Map(Ilios Well), Map(Nepal Sanctum), Hero(Hanzo), Button(Crouch), Map(Workshop Island Night),
			Hero(Soldier: 76), Game Mode(Deathmatch), Map(Paris), Map(Route 66), Map(Hollywood Halloween), Game Mode(Elimination), Map(
			Junkenstein's Revenge), Map(Ayutthaya), Color(Team 1), Map(Rialto), Map(Busan Stadium), Hero(Moira), Map(
			Lijiang Night Market Lunar New Year), Game Mode(Junkenstein's Revenge), Hero(Orisa), Map(Oasis City Center), Hero(Widowmaker),
			Button(Jump), Map(Busan), Hero(Sombra), Map(Practice Range), Map(Necropolis), Hero(Reinhardt), Map(Numbani), Hero(Zarya), Map(
			Blizzard World Winter), Map(Sydney Harbour Arena), Color(Blue), Hero(Ana), Hero(Brigitte), Hero(Torbjörn), Map(Eichenwalde),
			Map(Watchpoint: Gibraltar), Map(Busan Stadium Classic), Map(Workshop Expanse), Color(Gray), Hero(Mercy), Map(Oasis University),
			Map(Petra), Hero(Ashe), Game Mode(Skirmish), Map(Oasis Gardens), Map(Nepal));
	}
}

rule("")
{
	event
	{
		Ongoing - Global;
	}

	actions
	{
		Set Match Time(Is Match Complete);
		Set Slow Motion(80);
		Disable Built-In Game Mode Completion;
		Disable Built-In Game Mode Announcer;
		Disable Built-In Game Mode Music;
		Chase Global Variable At Rate(var_k, 100000000, 0.300, Destination and Rate);
		Create Effect(All Players(All Teams), Good Aura, Custom Color((Cosine From Degrees(Global.var_k * 360) + 0.500) * 255, (
			Cosine From Degrees(Global.var_k * 360 - 120) + 0.500) * 255, (Cosine From Degrees(Global.var_k * 360 - 240) + 0.500) * 255,
			255), Vector(False, 50, False), 200, Visible To and Color);
		Global.var_i = Array(Custom String("哥哥~他们都是骗你的，按F就可以开始游戏，快开始玩吧"), Custom String("这就是为了拉人进来所以建立的工坊呀"), Custom String(
			"当你拉到12个小傻瓜就可以一起上当受骗了呀"), Custom String(""), Custom String(""));
		disabled Create HUD Text(Local Player, Custom String(
			" \r\n\r\n{0}Angel: {1} Hurry up and bring friends in~ People are waiting for you to change my clothes\r\n~ Hurry up~ People can'{2}",
			Hero Icon String(Global.constants[140.994]), Local Player, Custom String("t wait~! ! ! Exchange group: 939114819 \r\n\r\n")),
			Null, Null, Top, 2, Custom Color((Cosine From Degrees(Global.var_k * 360) + 0.500) * 255, (Cosine From Degrees(
			Global.var_k * 360 - 120) + 0.500) * 255, (Cosine From Degrees(Global.var_k * 360 - 240) + 0.500) * 255, 255), Null, Null,
			Visible To String and Color, Default Visibility);
		disabled Create Progress Bar HUD Text(All Players(All Teams), Count Of(Filtered Array(All Players(All Teams), !Is Dummy Bot(
			Current Array Element))) / 0.120, Custom String(
			"Only {0} people can unlock and dress up for angels\r\n\r\nYou can unlock and dress up for angels if you reach 12 people ",
			12 - Count Of(Filtered Array(All Players(All Teams), !Is Dummy Bot(Current Array Element)))), Top, 5, Custom Color((
			Cosine From Degrees(Global.var_k * 360) + 0.500) * 255, (Cosine From Degrees(Global.var_k * 360 - 120) + 0.500) * 255, (
			Cosine From Degrees(Global.var_k * 360 - 240) + 0.500) * 255, 255), Custom Color((Cosine From Degrees(Global.var_k * 360)
			+ 0.500) * 255, (Cosine From Degrees(Global.var_k * 360 - 120) + 0.500) * 255, (Cosine From Degrees(Global.var_k * 360 - 240)
			+ 0.500) * 255, 255), Visible To Values and Color, Default Visibility);
	}
}

rule("")
{
	event
	{
		Player Joined Match;
		All;
		All;
	}

	conditions
	{
		Is Dummy Bot(Event Player) == False;
	}

	actions
	{
		Create In-World Text(All Players(All Teams), Event Player, Event Player, Match Round, Clip Against Surfaces,
			Visible To Position and String, Global.constants[39.981], Default Visibility);
		Start Camera(Event Player, Event Player + World Vector Of(Vector(False, False, False), Event Player, Rotation)
			+ Up * 3 + Facing Direction Of(Event Player) * -4, Event Player + Facing Direction Of(Event Player) * 1000, 60);
		If(String Contains(Custom String("{0}", Event Player), Custom String("Matchmaker")) || String Contains(Custom String("{0}",
			Event Player), Custom String("Tracer")) || String Contains(Custom String("{0}", Event Player), Custom String("Yue Lao")));
			Global.blacklisted = Event Player;
		Else;
			Disable Death Spectate Target HUD(Event Player);
			Disable Scoreboard(Event Player);
			Disable Kill Feed(Event Player);
			Disable Messages(Event Player);
			Disable Nameplates(Event Player, All Players(All Teams));
			Disable Game Mode HUD(Event Player);
			Disable Game Mode In-World UI(Event Player);
			Disable Hero HUD(Event Player);
		End;
		Wait Until(Has Spawned(Event Player), 99999);
		While(Entity Exists(Event Player));
			Wait(Random Integer(2, 5), Ignore Condition);
			Start Forcing Player Outlines(Event Player, All Players(All Teams), False, Color(Red), Default);
			Small Message(Event Player, Custom String("{0}天使姐姐:  {1}~{2}小宝贝", Hero Icon String(Global.constants[141.210]), Event Player,
				Random Value In Array(Global.var_i)));
		End;
	}
}

rule("")
{
	event
	{
		Ongoing - Each Player;
		All;
		All;
	}

	conditions
	{
		"@Condition (len([player for player in getAllPlayers() if not player.isDummy()])) == 12"
		Is Button Held(Host Player, Button(Interact)) == True;
		Workshop Setting Toggle(Custom String("Mode (closed means normal fights will not open for dressing) "), Custom String(
			"Dress mode switch"), True, 0) == True;
	}

	actions
	{
		If(String Contains(Custom String("{0}", Event Player), Custom String("Matchmaker")) || String Contains(Custom String("{0}",
			Event Player), Custom String("Tracer")) || String Contains(Custom String("{0}", Event Player), Custom String("月老")));
			Global.blacklisted = Event Player;
		Else;
			"eventPlayer.disableTextChat()\neventPlayer.disableVoiceChat(true, true, true)\neventPlayer.var_n = 20"
			Start Rule(start_game, Do Nothing);
	}
}

rule("")
{
	event
	{
		Ongoing - Each Player;
		All;
		All;
	}

	conditions
	{
		Has Spawned(Event Player) == True;
		Is Dummy Bot(Event Player) == False;
		Entity Exists(Event Player.mercy) == False;
		Is Dummy Bot(Event Player.mercy) == False;
	}

	actions
	{
		Event Player.var_n = 0.500;
		Create Dummy Bot(Hero(Mercy), All Teams, Slot Of(Event Player) + 12, Null, Null);
		Event Player.mercy = Players In Slot(Slot Of(Event Player) + 12, All Teams);
		Players In Slot(Slot Of(Event Player) + 12, All Teams).mercy = Event Player;
		Start Forcing Player Position(Event Player.mercy, World Vector Of(Vector(1.500, True, -0.750), Event Player,
			Rotation And Translation), True);
		Start Scaling Player(Event Player.mercy, Event Player.var_n, True);
		Start Facing(Event Player.mercy, Facing Direction Of(Event Player), 500, To World, Direction and Turn Rate);
		Start Holding Button(Event Player.mercy, Button(Primary Fire));
		Start Damage Modification(Event Player.mercy, Event Player, Is Match Complete, Receivers Damagers and Damage Percent);
		Wait(True, Ignore Condition);
		Loop If Condition Is True;
	}
}

rule("")
{
	event
	{
		Ongoing - Each Player;
		All;
		All;
	}

	conditions
	{
		Is Dummy Bot(Event Player) == True;
		Entity Exists(Event Player.mercy) == False;
	}

	actions
	{
		Destroy Dummy Bot(All Teams, Slot Of(Event Player));
	}
}

rule("")
{
	event
	{
		Subroutine;
		start_game;
	}

	actions
	{
		Big Message(All Players(All Teams), Custom String("Dressing up the angel will start right away! ! ! ! Host {0}, please come on ",
			Random Value In Array(All Living Players(Global.constants[44.643]))));
		Wait(10, Ignore Condition);
		Set Slow Motion(10);
		"if entityExists(blacklisted):\nremoveFromGame(blacklisted)\nwaitUntil(not entityExists(blacklisted), 99999)"
		Create Effect(All Living Players(Global.constants[44.924]), Sphere, Global.constants[39.860], Vector(Global.var_f, Global.var_b,
			Global.var_l), Is Match Complete, Visible To Position and Radius);
		Wait(0.250, Ignore Condition);
		Loop If Condition Is True;
	}
}

rule("")
{
	event
	{
		Player Died;
		All;
		All;
	}

	conditions
	{
		Is Dummy Bot(Event Player) == True;
	}

	actions
	{
		Kill(Event Player.mercy, Event Player);
		Small Message(Event Player.mercy, Custom String(
			"You do not blame protect people dead friends are bad guys you kill your victims "));
	}
}

rule("")
{
	event
	{
		Ongoing - Each Player;
		All;
		Mercy;
	}

	conditions
	{
		Has Spawned(Event Player) == True;
		Is Dummy Bot(Event Player) == True;
	}

	actions
	{
		Set Ultimate Charge(Event Player, 100);
		Press Button(Event Player, Button(Primary Fire));
		Wait(True, Ignore Condition);
		Loop If Condition Is True;
	}
}
