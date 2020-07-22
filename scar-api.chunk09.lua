--- Returns a random item from a table. You can return multiple items (without duplicates) by passing in an optional number parameter.
---@param table table
---@param numberofitems integer
---@return Item|table
---@overload fun(table: table)
function Table_GetRandomItem(table, numberofitems) end

--- Returns true if the taskbar is visible. (not strict)
---@return boolean
function Taskbar_IsVisible() end

--- Sets taskbar visibility.
---@param visible boolean
function Taskbar_SetVisibility(visible) end

--- Determine how many tasks with the given PBG are of the provided active state, passing no last parameters means to check both
---@param pPlayer Player
---@param pbg PropertyBagGroup
---@param buildtype ProductionItemType
---@param bCheckState boolean
---@param bCheckActive boolean
---@return integer
function TaskCountActivePBG(pPlayer, pbg, buildtype, bCheckState, bCheckActive) end

--- Determine how many requested are currently created for this pbg
---@param pPlayer Player
---@param pbg PropertyBagGroup
---@param buildtype ProductionItemType
---@return integer
function TaskCountPBG(pPlayer, pbg, buildtype) end

--- Add resource to each member of a team, as opposed to just setting it. Possible resource types are RT_Manpower, RT_Munition, RT_Fuel, RT_Action
---@param team integer
---@param resourceType integer
---@param value number
function Team_AddResource(team, resourceType, value) end

--- For the given team, get all of the squads gathered into a squadgroup of your naming.
---@param team integer
---@param squadgroupName string
---@return SGroup
function Team_AddSquadsToSGroup(team, squadgroupName) end

--- Returns true if ANY of a teams squads are in proximity of a marker
---@param team integer
---@param marker Marker
---@return boolean
function Team_AreSquadsNearMarker(team, marker) end

--- Returns true if a team can see ALL or ANY items
---@param teamid integer
---@param item EGroup|SGroup|Entity|Squad|ScarPosition|Marker
---@param all boolean
---@return boolean
function Team_CanSee(teamid, item, all) end

--- Any of the team's units in the marker area move out of the area, and can be made invulnerable for a bit whilst they do it
---@param team integer
---@param marker Marker
---@param invulnerable boolean
function Team_ClearArea(team, marker, invulnerable) end

--- Returns 4 playerIDs (player1, player2, player3, player4) for Humans/Allies
---@return Player
function Team_DefineAllies() end

--- Returns 4 playerIDs (player5, player6, player7, player8) for Enemy Players
---@return Player
function Team_DefineEnemies() end

--- Returns the TeamID for a given race. See LuaConsts for constants to use.
---@param race string
---@param race2 string
---@return integer
---@overload fun(race: string)
function Team_FindByRace(race, race2) end

--- Tests a condition on teams. Calls your function for each player. Parameters of your function: (TeamID, player index, PlayerID). Your function must return true or false to indicate whether the player meets the condition.
---@param team integer
---@param all boolean
---@param _function function
---@return boolean
function Team_ForEachAllOrAny(team, all, _function) end

--- Creates/Clears groups that contain all of a team's units and buildings. Defaults - sg_allsquads and eg_allentities
---@param team integer
---@param sgroup SGroup
---@param egroup EGroup
---@overload fun(team: integer)
---@overload fun(team: integer, sgroup: SGroup)
function Team_GetAll(team, sgroup, egroup) end

--- Gather together all of a teams's entities that are in proximity to a marker, a position, or within a territory sector into an EGroup. The EGroup is cleared beforehand.
---@param team integer
---@param egroup EGroup
---@param position Marker|ScarPosition|SectorID
---@param range number
---@overload fun(team: integer, egroup: EGroup, position: Marker|ScarPosition|SectorID)
function Team_GetAllEntitiesNearMarker(team, egroup, position, range) end

--- Gather together all of a teams's squads that are in proximity to a marker, a position, or within a territory sector into an SGroup. The SGroup is cleared beforehand.
---@param team integer
---@param sgroup SGroup
---@param position Marker|ScarPosition|SectorID
---@param range number
---@overload fun(team: integer, sgroup: SGroup, position: Marker|ScarPosition|SectorID)
function Team_GetAllSquadsNearMarker(team, sgroup, position, range) end

--- Returns the entityID of the first team owned building listed in the table.
---@param player Player
---@param entitytypes table
---@param bool any
---@return Entity|table
---@overload fun(player: Player, entitytypes: table)
function Team_GetBuildingID(player, entitytypes, bool) end

--- Returns the total number of buildings owned by this team.
---@param team integer
---@return integer
function Team_GetBuildingsCount(team) end

--- Returns the total number of buildings owned by this team (with exclusions).
---@param team integer
---@param exceptions table
---@return integer
function Team_GetBuildingsCountExcept(team, exceptions) end

--- Returns the number of buildings owned by this team (inclusive).
---@param team integer
---@param ebplist table
---@return integer
function Team_GetBuildingsCountOnly(team, ebplist) end

--- Returns a team's enemy
---@param team integer
---@return integer
function Team_GetEnemyTeam(team) end

--- Returns an EGroup containing all of the teams entities of a specific unit_type (as defined by the type_ext on the entity)
---@param team integer
---@param unitType string
---@return EGroup
function Team_GetEntitiesFromType(team, unitType) end

--- Finds the greatest (or least) concentration of entities owned by a team.
---@param team integer
---@param popcapOnly boolean
---@param includeBlueprints table
---@param excludeBlueprints table
---@param bLeastConcentrated boolean
---@param onlyInThisMarker Marker|table
---@return EGroup
---@overload fun(team: integer)
---@overload fun(team: integer, popcapOnly: boolean)
---@overload fun(team: integer, popcapOnly: boolean, includeBlueprints: table)
---@overload fun(team: integer, popcapOnly: boolean, includeBlueprints: table, excludeBlueprints: table)
---@overload fun(team: integer, popcapOnly: boolean, includeBlueprints: table, excludeBlueprints: table, bLeastConcentrated: boolean)
function Team_GetEntityConcentration(team, popcapOnly, includeBlueprints, excludeBlueprints, bLeastConcentrated, onlyInThisMarker) end

--- Finds the greatest (or least) concentration of squads owned by a team.
---@param team integer
---@param popcapOnly boolean
---@param includeBlueprints table
---@param excludeBlueprints table
---@param bLeastConcentrated boolean
---@param onlyInThisMarker Marker|table
---@return SGroup
---@overload fun(team: integer)
---@overload fun(team: integer, popcapOnly: boolean)
---@overload fun(team: integer, popcapOnly: boolean, includeBlueprints: table)
---@overload fun(team: integer, popcapOnly: boolean, includeBlueprints: table, excludeBlueprints: table)
---@overload fun(team: integer, popcapOnly: boolean, includeBlueprints: table, excludeBlueprints: table, bLeastConcentrated: boolean)
function Team_GetSquadConcentration(team, popcapOnly, includeBlueprints, excludeBlueprints, bLeastConcentrated, onlyInThisMarker) end

--- Returns true if this team owns any buildings listed in the table.
---@param team integer
---@param entitytypes table
---@param bool any
---@return boolean
---@overload fun(team: integer, entitytypes: table)
function Team_HasBuilding(team, entitytypes, bool) end

--- Returns true if this team owns any buildings. (with exclusions).
---@param team integer
---@param exceptions table
---@param bool any
---@return boolean
---@overload fun(team: integer, exceptions: table)
function Team_HasBuildingsExcept(team, exceptions, bool) end

--- Returns true if this team owns any buildings listed in the table currently under construction.
---@param team integer
---@param entitytypes table
---@param bool any
---@return boolean
---@overload fun(team: integer, entitytypes: table)
function Team_HasBuildingUnderConstruction(team, entitytypes, bool) end

--- Returns true if this team has any players that are human.
---@param team integer
---@param bool any
---@return boolean
function Team_HasHuman(team, bool) end

--- Returns whether a team is still alive or not (all member players must be 'alive')
---@return boolean
function Team_IsAlive() end

--- Returns true if a given team owns ALL or ANY items in a group
---@param team integer
---@param egroup EGroup
---@param any boolean
---@return boolean
---@overload fun(team: integer, egroup: EGroup)
function Team_OwnsEGroup(team, egroup, any) end

--- Returns true if a given team owns an entity
---@param team integer
---@param entity Entity
---@return boolean
function Team_OwnsEntity(team, entity) end

--- Returns true if a given team owns ALL or ANY items in a group
---@param team integer
---@param sgroup SGroup
---@param all boolean
---@return boolean
---@overload fun(team: integer, sgroup: SGroup)
function Team_OwnsSGroup(team, sgroup, all) end

--- Returns true if a given team owns a squad
---@param team integer
---@param squad Squad
---@return boolean
function Team_OwnsSquad(team, squad) end

--- Restrict a list of addons.
---@param team integer
---@param addonlist table
function Team_RestrictAddOnList(team, addonlist) end

--- Restrict a list of buildings.
---@param team integer
---@param blueprintlist table
function Team_RestrictBuildingList(team, blueprintlist) end

--- Restrict a list of research items.
---@param team integer
---@param list table
function Team_RestrictResearchList(team, list) end

--- Sets the availability of an ability. Availability can be either ITEM_LOCKED, ITEM_UNLOCKED, ITEM_REMOVED or ITEM_DEFAULT
---@param team integer
---@param bp AbilityBlueprint|table
---@param availability integer
function Team_SetAbilityAvailability(team, bp, availability) end

--- Sets the availability of entity, squad and player commands. Availability can be either ITEM_LOCKED, ITEM_UNLOCKED, ITEM_REMOVED or ITEM_DEFAULT
---@param team integer
---@param command integer|table
---@param availability integer
function Team_SetCommandAvailability(team, command, availability) end

--- Sets the availability of a construction menu. Availability can be either ITEM_LOCKED, ITEM_UNLOCKED, ITEM_REMOVED or ITEM_DEFAULT
---@param team integer
---@param menuname string|table
---@param availability integer
function Team_SetConstructionMenuAvailability(team, menuname, availability) end

--- Sets the availability of an entity production item. Availability can be either ITEM_LOCKED, ITEM_UNLOCKED, ITEM_REMOVED or ITEM_DEFAULT
---@param team integer
---@param bp Entity|table
---@param availability integer
function Team_SetEntityProductionAvailability(team, bp, availability) end

--- Sets the current personnel or vehicle max-cap for each player on a team. The captype is either CT_Personnel or CT_Vehicle (you can't adjust Medic caps just yet).
---@param team integer
---@param captype integer
---@param newcap integer
function Team_SetMaxCapPopulation(team, captype, newcap) end

--- Sets the current personnel or vehicle cap for each player on a team. The captype is either CT_Personnel or CT_Vehicle (you can't adjust Medic caps just yet).
---@param team integer
---@param captype integer
---@param newcap integer
function Team_SetMaxPopulation(team, captype, newcap) end

--- Sets the availability of a squad production item. Availability can be either ITEM_LOCKED, ITEM_UNLOCKED, ITEM_REMOVED or ITEM_DEFAULT
---@param team integer
---@param bp SquadBlueprint|table
---@param availability integer
function Team_SetSquadProductionAvailability(team, bp, availability) end

--- Sets up the tech tree for a whole team based off the year
---@param team integer
---@param year integer
function Team_SetTechTreeByYear(team, year) end

--- Sets the availability of an upgrade. Availability can be either ITEM_LOCKED, ITEM_UNLOCKED, ITEM_REMOVED or ITEM_DEFAULT
---@param team integer
---@param bp UpgradeBlueprint|table
---@param availability integer
function Team_SetUpgradeAvailability(team, bp, availability) end

--- Sets the cost of an upgrade.
---@param team integer
---@param upgrade UpgradeID
---@param manpower number
---@param fuel number
---@param munition number
---@param action number
---@param command number
function Team_SetUpgradeCost(team, upgrade, manpower, fuel, munition, action, command) end

--- Add a gun to the gun manager. The manager will take care of turning it around to attack units.  Turntime is how often the weapon can turn (default 10 seconds), Total Responses is how many times he will adjust before stopping.
---@param group SGroup|EGroup
---@param facingdirections table
---@param currentfacing integer
---@param threatarrow boolean
---@param turnTime integer
---@param totalResponses integer
function TeamWeapon_AddGroup(group, facingdirections, currentfacing, threatarrow, turnTime, totalResponses) end

--- Remove's the direction settings for a gun, turning it into a fire-at-anything type.
---@param gun SGroup|EGroup|SyncWeaponID
function TeamWeapon_RemoveDirections(gun) end

--- Remove a gun from the gun manager.
---@param gun SGroup|EGroup|SyncWeaponID
function TeamWeapon_RemoveGroup(gun) end

--- Adds a threat to an existing group
---@param GroupID integer
---@param Threat Entity|Squad|EGroup|SGroup|ScarPosition|Marker
---@param icon string
---@overload fun(GroupID: integer, Threat: Entity|Squad|EGroup|SGroup|ScarPosition|Marker)
function ThreatArrow_Add(GroupID, Threat, icon) end

--- Creates a group of threats that are represented by a single arrow. Threats can be entities, squads, egroups, sgroups, positions or markers
---@param threats any|table
---@return integer
function ThreatArrow_CreateGroup(threats) end

--- Destroy all threat groups
function ThreatArrow_DestroyAllGroups() end

--- Destroy a threat group
---@param GroupID integer
function ThreatArrow_DestroyGroup(GroupID) end

--- Removes a threat from an existing group
---@param GroupID integer
---@param Threat Entity|Squad|EGroup|SGroup|ScarPosition|Marker
function ThreatArrow_Remove(GroupID, Threat) end

--- Add the amount of time to the specified timer
---@param timerID integer
---@param period number
function Timer_Add(timerID, period) end

--- Advances the timer by the specified amount of time
---@param timerID integer
---@param period number
function Timer_Advance(timerID, period) end

--- Display (in the console) the amount of time remaining in the specified timer.
---@param timerID integer
function Timer_Display(timerID) end

--- Displays a timer on the screen - You need to call this regularly (i.e. every second) to update the onscreen display. THIS IS A TEMPORARY FUNCTION - WELL GET PROPER UI SUPPORT LATER ON
---@param timerID integer
function Timer_DisplayOnScreen(timerID) end

--- Stop the specified timer.
---@param timerID integer
function Timer_End(timerID) end

--- Returns whether the timer with this ID exists
---@param timerID integer
---@return boolean
function Timer_Exists(timerID) end

--- Returns how much time has elapsed since this timer has been started
---@param timerID integer
---@return number
function Timer_GetElapsed(timerID) end

--- Returns TWO values: minutes and seconds. Provide it a function like Timer_GetRemaining or Timer_GetElapsed
---@param getTimeFunction function
---@param TimerID integer
function Timer_GetMinutesAndSeconds(getTimeFunction, TimerID) end

--- Get the remaining time for the specified timer.
---@param timerID integer
---@return number
function Timer_GetRemaining(timerID) end

--- Check if the timer is paused.
---@param timerID integer
---@return boolean
function Timer_IsPaused(timerID) end

--- Pause the specified timer.
---@param timerID integer
function Timer_Pause(timerID) end

--- Resume the specified timer.
---@param timerID integer
function Timer_Resume(timerID) end

--- Start a timer with the specified id, taking the required period ( in seconds )
---@param timerID integer
---@param period number
function Timer_Start(timerID, period) end

--- Add a rule to be executed every frame.
---@param f function
---@param priority integer
function TimeRule_Add(f, priority) end

--- Add a rule to be executed at every 'interval' seconds.
---@param f function
---@param interval number
---@param priority integer
function TimeRule_AddInterval(f, interval, priority) end

--- Add a rule to be executed 'calls' times, at every 'interval' seconds.
---@param f function
---@param delay number
---@param interval number
---@param calls integer
---@param priority integer
function TimeRule_AddIntervalEx(f, delay, interval, calls, priority) end

--- Add a rule to be executed once, after 'interval' seconds.
---@param f function
---@param interval number
---@param priority integer
function TimeRule_AddOneShot(f, interval, priority) end

--- Change 'interval' seconds of an existing rule.
---@param f function
---@param interval number
function TimeRule_ChangeInterval(f, interval) end

--- Test if a rule is currently active.
---@param f function
---@return boolean
function TimeRule_Exists(f) end

--- Remove a currently active rule.
---@param f function
function TimeRule_Remove(f) end

--- Kills all rules.
---@param maxpriority integer
function TimeRule_RemoveAll(maxpriority) end

--- Remove a currently executing rule (only works inside a rule function)
function TimeRule_RemoveMe() end

--- the old reference function with a new one
---@param oldf function
---@param newf function
function TimeRule_Replace(oldf, newf) end

--- Starts an enemy wave in a ToW mission set up with proper data. See TheatreOfWar.scar for example data.
---@param waveNumber integer
function ToW_DefenseCreateWave(waveNumber) end

--- Set a player to have standard starting resources, or use optional override data.
---@param player Player
---@param overrideData table
---@overload fun(player: Player)
function ToW_SetStandardResources(player, overrideData) end

--- Sets up a default mission objective for Victory Point battles.
function ToW_SetUpBattleObjectives() end

--- Restricts a given player's tech tree to just the units that were available in a specific year.
---@param player Player
---@param year integer
function ToW_SetUpTechTreeByYear(player, year) end

--- There is also a helper function UI_AddControl in UI.scar which will take a table and call the appropriate functions to build the UI
---@param control table
function UI_AddControl(control) end

--- Creates and flashes an ability button on the taskbar if the unit is selected
---@param playerid Player
---@param abilityID AbilityBlueprint
---@param text LocString
---@param length integer
---@param blueprint_filter table|Blueprint
---@overload fun(playerid: Player, abilityID: AbilityBlueprint, text: LocString, length: integer)
function UI_AddHintAndFlashAbility(playerid, abilityID, text, length, blueprint_filter) end

--- Removes a message added by UI_AutosaveMessageShow.
function UI_AutosaveMessageHide() end

--- Shows a message indicating that the game is autosaving.
function UI_AutosaveMessageShow() end

--- 
---@param path string
---@param name string
---@param x number
---@param y number
---@param width number
---@param height number
---@param callback string
---@param enabled boolean
---@param icon string
---@param style ButtonIconStyle
---@param tag string
---@param text LocString
function UI_ButtonAdd(path, name, x, y, width, height, callback, enabled, icon, style, tag, text) end

--- 
---@param path string
---@param callback string
function UI_ButtonSetCallback(path, callback) end

--- 
---@param path string
---@param enabled boolean
function UI_ButtonSetEnabled(path, enabled) end

--- 
---@param path string
---@param icon string
function UI_ButtonSetIcon(path, icon) end

--- 
---@param path string
---@param tag string
function UI_ButtonSetTag(path, tag) end

--- 
---@param path string
---@param text LocString
function UI_ButtonSetText(path, text) end

--- Clears all active event cues
function UI_ClearEventCues() end

--- Clears the ability phase callback.
function UI_ClearModalAbilityPhaseCallback() end

--- Clears the callback function called at the current NIS.
function UI_ClearNISEndCallback() end

--- 
---@param path string
function UI_ControlClear(path) end

--- 
---@param path string
function UI_ControlRemove(path) end

--- 
---@param path string
---@param red integer
---@param green integer
---@param blue integer
---@param alpha integer
function UI_ControlSetColour(path, red, green, blue, alpha) end

--- 
---@param path string
---@param x number
---@param y number
function UI_ControlSetPosition(path, x, y) end

--- 
---@param path string
---@param x number
---@param y number
---@param width number
---@param height number
function UI_ControlSetRect(path, x, y, width, height) end

--- Toggle off cover preview. Each call to UI_CoverPreviewHide must be matched by a call to UI_CoverPreviewShow
function UI_CoverPreviewHide() end

--- Toggle on cover preview. Each call to UI_CoverPreviewShow must be matched by a call to UI_CoverPreviewHide
function UI_CoverPreviewShow() end

--- Create a coloured custom kicker message on the entity and display to the player, rgb values are 0-255.
---@param player Player
---@param entity Entity
---@param message LocString
---@param red integer
---@param green integer
---@param blue integer
---@param alpha integer
function UI_CreateColouredEntityKickerMessage(player, entity, message, red, green, blue, alpha) end

--- Create a coloured custom kicker message on the entity and display to the player, rgb values are 0-255.
---@param player Player
---@param position ScarPosition
---@param message LocString
---@param red integer
---@param green integer
---@param blue integer
---@param alpha integer
function UI_CreateColouredPositionKickerMessage(player, position, message, red, green, blue, alpha) end

--- Create a coloured custom kicker message on the entity and display to the player, rgb values are 0-255.
---@param player Player
---@param squad Squad
---@param message LocString
---@param red integer
---@param green integer
---@param blue integer
---@param alpha integer
function UI_CreateColouredSquadKickerMessage(player, squad, message, red, green, blue, alpha) end

--- Create a custom kicker message on the entity and display to the player.
---@param player Player
---@param entity Entity
---@param message LocString
function UI_CreateEntityKickerMessage(player, entity, message) end

--- Creates an event cue without a callback (you won't know when it's clicked)
---@param iconPath string
---@param soundPath string
---@param title LocString
---@param description LocString
---@param lifetime number
---@param dismissOnClick boolean
---@return ID
---@overload fun(iconPath: string, soundPath: string, title: LocString, description: LocString)
---@overload fun(iconPath: string, soundPath: string, title: LocString, description: LocString, lifetime: number)
function UI_CreateEventCue(iconPath, soundPath, title, description, lifetime, dismissOnClick) end

--- Creates a blip on the minimap; return the ID of the blip.
---@param where any
---@param lifetime number
---@param blipType integer
---@return blipID
function UI_CreateMinimapBlip(where, lifetime, blipType) end

--- Create a custom kicker message on the entity and display to the player.
---@param player Player
---@param position ScarPosition
---@param message LocString
function UI_CreatePositionKickerMessage(player, position, message) end

--- Create a custom kicker message on the squad and display to the player.
---@param player Player
---@param sgroup SGroup
---@param message LocString
function UI_CreateSGroupKickerMessage(player, sgroup, message) end

--- Create a custom kicker message on the entity and display to the player.
---@param player Player
---@param squad Squad
---@param message LocString
function UI_CreateSquadKickerMessage(player, squad, message) end

--- Removes a blip already created on the minimap
---@param blipID integer
function UI_DeleteMinimapBlip(blipID) end

--- Turn on or off entity decorator. The default is decorator enabled.
---@param entity Entity
---@param enabled boolean
function UI_EnableEntityDecorator(entity, enabled) end

--- Turn on or off entity minimap indicator. The default is enabled.
---@param entity Entity
---@param enabled boolean
function UI_EnableEntityMinimapIndicator(entity, enabled) end

--- Turn on or off entity selection visuals. The default is visuals enabled.
---@param entity Entity
---@param enabled boolean
function UI_EnableEntitySelectionVisuals(entity, enabled) end

--- Enables or disables event cues.
---@param gameEventType GameEventType
---@param enable boolean
function UI_EnableGameEventCueType(gameEventType, enable) end

--- Enables or disables resource kickers.
---@param resourceType ResourceType
---@param enable boolean
function UI_EnableResourceTypeKicker(resourceType, enable) end

--- Turn on or off squad decorator. The default is decorator enabled.
---@param squad Squad
---@param enabled boolean
function UI_EnableSquadDecorator(squad, enabled) end

--- Turn on or off squad minimap indicator. The default is enabled.
---@param squad Squad
---@param enabled boolean
function UI_EnableSquadMinimapIndicator(squad, enabled) end

--- Enables or disables event cues.
---@param uiEventType UIEventType
---@param enable boolean
function UI_EnableUIEventCueType(uiEventType, enable) end

--- Flash an ability command button.  Pass the return value to UI_StopFlashing to stop flashing the button.
---@param ability ScarAbilityPBG
---@param stopOnClick boolean
---@return integer
function UI_FlashAbilityButton(ability, stopOnClick) end

--- Flash a construction item command button.  Pass the return value to UI_StopFlashing to stop flashing the button.
---@param ebp ScarEntityPBG
---@param stopOnClick boolean
---@return integer
function UI_FlashConstructionButton(ebp, stopOnClick) end

--- Flash a construction menu command button.  Pass the return value to UI_StopFlashing to stop flashing the button.
---@param menuName string
---@param stopOnClick boolean
---@return integer
function UI_FlashConstructionMenu(menuName, stopOnClick) end

--- Flashes the entity using attributes from [tuning][ui]
---@param entity Entity
---@param actionOnName string
function UI_FlashEntity(entity, actionOnName) end

--- Flash an entity order command button.  Pass the return value to UI_StopFlashing to stop flashing the button.
---@param command Entity
---@param stopOnClick boolean
---@return integer
function UI_FlashEntityCommandButton(command, stopOnClick) end

--- Flash an event cue item.  Pass the return value to UI_StopFlashing to stop flashing the button.
---@param eventCueID integer
---@param stopOnClick boolean
---@return integer
function UI_FlashEventCue(eventCueID, stopOnClick) end

--- Flash an objective counter.  Pass the return value to UI_StopFlashing to stop flashing the button.
---@param objectiveID integer
---@return integer
function UI_FlashObjectiveCounter(objectiveID) end

--- Flash an objective.  Pass the return value to UI_StopFlashing to stop flashing the button.
---@param objectiveID integer
---@param stopOnClick boolean
---@return integer
function UI_FlashObjectiveIcon(objectiveID, stopOnClick) end

--- Flash a production building button.  Pass the return value to UI_StopFlashing to stop flashing the button.
---@param type string
---@param stopOnClick boolean
---@return integer
function UI_FlashProductionBuildingButton(type, stopOnClick) end

--- Flash a production item command button.  Pass the return value to UI_StopFlashing to stop flashing the button.
---@param type ProductionItemType
---@param pbg PropertyBagGroup
---@param stopOnClick boolean
---@return integer
function UI_FlashProductionButton(type, pbg, stopOnClick) end

--- Flash a squad order command button.  Pass the return value to UI_StopFlashing to stop flashing the button.
---@param command Squad
---@param stopOnClick boolean
---@return integer
function UI_FlashSquadCommandButton(command, stopOnClick) end

--- Returns the icon name for a given ability
---@param abilityBag ScarAbilityPBG
---@return string
function UI_GetAbilityIconName(abilityBag) end

--- Returns whether all decorators are enabled or not
---@return boolean
function UI_GetDecoratorsEnabled() end

--- 
---@param Void any
---@return number
function UI_GetViewportHeight(Void) end

--- 
---@param Void any
---@return number
function UI_GetViewportWidth(Void) end

--- Hides the tactical map
function UI_HideTacticalMap() end

--- Highlights an SGroup in the UI for the given duration
---@param sgroup SGroup
---@param duration number
function UI_HighlightSGroup(sgroup, duration) end

--- Turn on squad highlight UI feature for the specified duration.
---@param squad Squad
---@param duration number
function UI_HighlightSquad(squad, duration) end

--- 
---@param path string
---@param name string
---@param x number
---@param y number
---@param width number
---@param height number
---@param icon string
function UI_IconAdd(path, name, x, y, width, height, icon) end

--- 
---@param path string
---@param icon string
function UI_IconSetIcon(path, icon) end

--- Returns whether the tactical map is being shown (not strict)
---@return boolean
function UI_IsTacticalMapShown() end

--- 
---@param path string
---@param name string
---@param x number
---@param y number
---@param width number
---@param height number
---@param alignHorizontal LabelAlignHorizontal
---@param alignVertical LabelAlignVertical
---@param bold boolean
---@param italic boolean
---@param size number
---@param text LocString
function UI_LabelAdd(path, name, x, y, width, height, alignHorizontal, alignVertical, bold, italic, size, text) end

--- 
---@param path string
---@param text LocString
function UI_LabelSetText(path, text) end

--- If the message box is activated, close it.  The callback will receive the button parameter given.
---@param button DialogResult
function UI_MessageBoxHide(button) end

--- Set the text/tooltip/enabled state of a button on the dialog.
---@param dialogResult DialogResult
---@param text LocString
---@param tooltip LocString
---@param bEnabled boolean
function UI_MessageBoxSetButton(dialogResult, text, tooltip, bEnabled) end

--- Set the title and message body of the dialog.
---@param title LocString
---@param message LocString
function UI_MessageBoxSetText(title, message) end

--- Brings up a message and arrow pointing to a HUD feature.
---@param newHUDFeature HUDFeatureType
---@param featureText LocString
---@param featureIcon string
---@param duration number
---@return integer
function UI_NewHUDFeature(newHUDFeature, featureText, featureIcon, duration) end

--- Toggle off terrain out of bounds lines. Each call to UI_OutOfBoundsLinesHide must be matched by a call to UI_OutOfBoundsLinesShow
function UI_OutOfBoundsLinesHide() end

--- Toggle on terrain out of bounds lines. Each call to UI_OutOfBoundsLinesShow must be matched by a call to UI_OutOfBoundsLinesShowHide
function UI_OutOfBoundsLinesShow() end

--- 
---@param path string
---@param name string
---@param x number
---@param y number
function UI_PanelAdd(path, name, x, y) end

--- Auto-generate a popup message with callbacks. See OpUtil.scar for an example of how to use this function.
---@param locstring_1 LocString
---@param locstring_2 LocString
---@param table_1 table
---@param table_2 table
---@param unknown table
---@overload fun(locstring_1: LocString, locstring_2: LocString)
---@overload fun(locstring_1: LocString, locstring_2: LocString, table_1: table)
---@overload fun(locstring_1: LocString, locstring_2: LocString, table_1: table, table_2: table)
function UI_PopUpMessage(locstring_1, locstring_2, table_1, table_2, unknown) end

--- Only allow buildings to be placed inside a marker.
---@param marker ScarMarker
function UI_RestrictBuildingPlacement(marker) end

--- Fades the screen to a given RGBA colour over a number of seconds. mouse input is blocked during the fade, and you can control whether the input keeps being blocked after the fade has ended (be careful!)
---@param r number
---@param g number
---@param b number
---@param a number
---@param duration number
---@param persistent boolean
---@return integer
function UI_ScreenFade(r, g, b, a, duration, persistent) end

--- Sets the visibility of the Commander Ability card.
---@param visible boolean
function UI_SetAbilityCardVisibility(visible) end

--- Sets the game to allow allied squads to be selected at the same time as your own squads
---@param allow boolean
function UI_SetAlliedBandBoxSelection(allow) end

--- Enables or disable load and save features at the pause menu
---@param allowLoadAndSave boolean
function UI_SetAllowLoadAndSave(allowLoadAndSave) end

--- Sets the visibility of the Command Point meter.
---@param visible boolean
function UI_SetCPMeterVisibility(visible) end

--- Enables or disables all decorators
---@param enabled boolean
function UI_SetDecoratorsEnabled(enabled) end

--- Sets the game to force show subtitles even if the player has them turned off.
---@param forceShowSubtitles boolean
function UI_SetForceShowSubtitles(forceShowSubtitles) end

--- Sets a function to be called when the player clicks an ability and gets a targeting UI. Your function will have 2 arguments: [Blueprint] ability blueprint, [integer] phase: MAP_Placing, MAP_Facing (only if ability requires facing) or MAP_Confirmed (not strict)
---@param _function function
function UI_SetModalAbilityPhaseCallback(_function) end

--- Sets the callback function called at the end of an NIS, note this function is automatically cleared after being called once.
---@param _function function
function UI_SetNISEndCallback(_function) end

--- Sets a level decorator that's defined in all of the squads squad_ui_ext in the target SGroup
---@param sgroup SGroup
---@param level integer
function UI_SetSGroupSpecialLevel(sgroup, level) end

--- Blink the Soviet 227/progression UI
---@param blinking boolean
function UI_SetSoviet227Blinking(blinking) end

--- Sets the visibility of the Soviet 227/progression UI
---@param visible boolean
function UI_SetSoviet227Visibility(visible) end

--- Shows the tactical map
function UI_ShowTacticalMap() end

--- 
---@param path string
---@param name string
---@param x number
---@param y number
---@param width number
---@param height number
---@param value number
function UI_StatusIndicatorAdd(path, name, x, y, width, height, value) end

--- 
---@param path string
---@param value number
function UI_StatusIndicatorSetValue(path, value) end

--- Stop flashing a flash created with a previous call to UI_Flash*().
---@param id integer
function UI_StopFlashing(id) end

--- Removes a message added by Game_ShowSystemMessage.
---@param message LocString
function UI_SystemMessageHide(message) end

--- Shows a system message in the area where Game Paused text appears.
---@param message LocString
function UI_SystemMessageShow(message) end

--- Toggle off territory lines. Each call to UI_TerritoryHide must be matched by a call to UI_TerritoryShow
function UI_TerritoryHide() end

--- Toggle on territory lines. Each call to UI_TerritoryShow must be matched by a call to UI_TerritoryHide
function UI_TerritoryShow() end

--- Removes a title using an id returned by the title creating function.
---@param id integer
function UI_TitleDestroy(id) end

--- Toggles all decorators on or off.
function UI_ToggleDecorators() end

--- Removes the restriction on building placement.
function UI_UnrestrictBuildingPlacement() end

--- Displays a brief UI warning in the critical alert message area.
---@param text LocString
---@return integer
function UIWarning_Show(text) end

