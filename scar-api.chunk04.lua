--- Callback given callback function with data, when player owns none of the given territories.
---@param callback function
---@param data table
---@param player Player
---@param sectorID_group_entity integer|table|EGroup|Entity
---@param delay number
---@return EventID
---@overload fun(callback: function, data: table, player: Player, sectorID_group_entity: integer|table|EGroup|Entity)
function Event_PlayerDoesntOwnTerritory(callback, data, player, sectorID_group_entity, delay) end

--- Callback given  function with data, when player owns the given element
---@param callback function
---@param data table
---@param player Player
---@param unknown Entity|EGroup|Squad|SGroup|any
---@param delay number
---@return EventID
---@overload fun(callback: function, data: table, player: Player)
---@overload fun(callback: function, data: table, player: Player, unknown: Entity|EGroup|Squad|SGroup|any)
function Event_PlayerOwnsElement(callback, data, player, unknown, delay) end

--- Callback given callback function with data, when player owns all given territories.
---@param callback function
---@param data table
---@param player Player
---@param territory SectorID|EGroup|Entity|table
---@param all any|boolean
---@param delay number
---@return EventID
---@overload fun(callback: function, data: table, player: Player, territory: SectorID|EGroup|Entity|table)
---@overload fun(callback: function, data: table, player: Player, territory: SectorID|EGroup|Entity|table, all: any|boolean)
function Event_PlayerOwnsTerritory(callback, data, player, territory, all, delay) end

--- Callback given callback function with data, when player has more than amount of resourceType.
---@param callback function
---@param data table
---@param player Player
---@param resourceType ResourceType
---@param amount integer
---@param delay number
---@return EventID
---@overload fun(callback: function, data: table, player: Player, resourceType: ResourceType, amount: integer)
function Event_PlayerResourceLevel(callback, data, player, resourceType, amount, delay) end

--- Callback given callback function with data, when no narrative events are running.
---@param callback function
---@param data table
---@param _false boolean
---@param delay number
---@return EventID
---@overload fun(callback: function, data: table)
---@overload fun(callback: function, data: table, _false: boolean)
function Event_PlayerSquadCount(callback, data, _false, delay) end

--- Callback given callback function with data when target enters location.
---@param callback function
---@param data table
---@param target Player|Squad|table|integer
---@param location Marker|ScarPosition|SectorID|table|SGroup|EGroup
---@param range number
---@param all any|boolean
---@param delay number
---@return EventID
---@overload fun(callback: function, data: table, target: Player|Squad|table|integer, location: Marker|ScarPosition|SectorID|table|SGroup|EGroup, range: number)
---@overload fun(callback: function, data: table, target: Player|Squad|table|integer, location: Marker|ScarPosition|SectorID|table|SGroup|EGroup, range: number, all: any|boolean)
function Event_Proximity(callback, data, target, location, range, all, delay) end

--- Remove the given callback
---@param eventID EventID
function Event_Remove(eventID) end

--- Remove all existing callback events.
function Event_RemoveAll() end

--- Completes execution of the event immediately (all calls to Wait() are ignored)
function Event_Skip() end

--- Starts event. Event will not start until all rules are evaluated for this frame!
---@param f function
---@param priority integer
function Event_Start(f, priority) end

--- Starts an event the same way as Event_Start, but calls a user defined function when the event is over.
---@param f function
---@param priority integer
---@param onComplete function
function Event_StartEx(f, priority, onComplete) end

--- Callback given function with data, when player has greater than or equal to amountOfBuildings
---@param callback function
---@param data table
---@param team integer
---@param unknown integer
---@param delay number
---@return EventID
---@overload fun(callback: function, data: table, team: integer)
---@overload fun(callback: function, data: table, team: integer, unknown: integer)
function Event_TeamBuildingCount(callback, data, team, unknown, delay) end

--- Callback given callback function with data, when the given team can not see the element.
---@param callback function
---@param data table
---@param team integer
---@param element Squad|SGroup|Entity|EGroup|Marker|ScarPosition|table
---@param all any|boolean
---@param delay number
---@return EventID
---@overload fun(callback: function, data: table, team: integer, element: Squad|SGroup|Entity|EGroup|Marker|ScarPosition|table)
---@overload fun(callback: function, data: table, team: integer, element: Squad|SGroup|Entity|EGroup|Marker|ScarPosition|table, all: any|boolean)
function Event_TeamCanNotSeeElement(callback, data, team, element, all, delay) end

--- Callback given callback function with data, when the given team can see the element.
---@param callback function
---@param data table
---@param team integer
---@param element Squad|SGroup|Entity|EGroup|Marker|ScarPosition|table
---@param all any|boolean
---@param delay number
---@return EventID
---@overload fun(callback: function, data: table, team: integer, element: Squad|SGroup|Entity|EGroup|Marker|ScarPosition|table)
---@overload fun(callback: function, data: table, team: integer, element: Squad|SGroup|Entity|EGroup|Marker|ScarPosition|table, all: any|boolean)
function Event_TeamCanSeeElement(callback, data, team, element, all, delay) end

--- Callback given callback function with data, when a team owns none of the given territories.
---@param callback function
---@param data table
---@param team integer
---@param sectorID_group_entity integer|table|EGroup|Entity
---@param delay number
---@return EventID
---@overload fun(callback: function, data: table, team: integer, sectorID_group_entity: integer|table|EGroup|Entity)
function Event_TeamDoesntOwnTerritory(callback, data, team, sectorID_group_entity, delay) end

--- Callback given  function with data, when a team owns the given element
---@param callback function
---@param data table
---@param team integer
---@param unknown Entity|EGroup|Squad|SGroup|any
---@param delay number
---@return EventID
---@overload fun(callback: function, data: table, team: integer)
---@overload fun(callback: function, data: table, team: integer, unknown: Entity|EGroup|Squad|SGroup|any)
function Event_TeamOwnsElement(callback, data, team, unknown, delay) end

--- Callback given callback function with data, when a team owns all given territories.
---@param callback function
---@param data table
---@param team integer
---@param sectorID_group_entity integer|table|EGroup|Entity
---@param all any|boolean
---@param delay number
---@return EventID
---@overload fun(callback: function, data: table, team: integer, sectorID_group_entity: integer|table|EGroup|Entity)
---@overload fun(callback: function, data: table, team: integer, sectorID_group_entity: integer|table|EGroup|Entity, all: any|boolean)
function Event_TeamOwnsTerritory(callback, data, team, sectorID_group_entity, all, delay) end

--- Callback given callback function with data, when a team has a combined amount more than amount of resourceType.
---@param callback function
---@param data table
---@param team integer
---@param resourceType ResourceType
---@param amount integer
---@param delay number
---@return EventID
---@overload fun(callback: function, data: table, team: integer, resourceType: ResourceType, amount: integer)
function Event_TeamResourceLevel(callback, data, team, resourceType, amount, delay) end

--- Callback given callback function with data, when no narrative events are running.
---@param callback function
---@param data table
---@param team integer
---@param _false boolean
---@param delay number
---@return EventID
---@overload fun(callback: function, data: table, team: integer)
---@overload fun(callback: function, data: table, team: integer, _false: boolean)
function Event_TeamSquadCount(callback, data, team, _false, delay) end

--- Callback when a territory is/is not in supply.
---@param callback function
---@param data table
---@param player Player
---@param territory ScarPosition
---@param inSupply boolean
---@param delay number
---@return EventID
function Event_TerritoryInSupply(callback, data, player, territory, inSupply, delay) end

--- Callback given callback function with data, after a specified delay.
---@param callback function
---@param data table
---@param delay integer|table
---@return EventID
function Event_Timer(callback, data, delay) end

--- Toggles the ScarEvent debugger ON and OFF
function Event_ToggleDebug() end

--- Calls the view_manager on a ScarEvent with a specific ID.
---@param eventID integer
function Event_View(eventID) end

--- Creates an Event Cue message which automatically sends the camera to a specified point when clicked on.
---@param style CueStyleID
---@param title LocString
---@param description LocString
---@param cameratarget Marker|ScarPosition|EGroup|SGroup
---@param hintpointtext LocString
---@param _function function
---@param lifetime number
---@param dismissOnClick boolean
---@return EventCueID
---@overload fun(style: CueStyleID, title: LocString, description: LocString, cameratarget: Marker|ScarPosition|EGroup|SGroup)
---@overload fun(style: CueStyleID, title: LocString, description: LocString, cameratarget: Marker|ScarPosition|EGroup|SGroup, hintpointtext: LocString)
---@overload fun(style: CueStyleID, title: LocString, description: LocString, cameratarget: Marker|ScarPosition|EGroup|SGroup, hintpointtext: LocString, _function: function)
---@overload fun(style: CueStyleID, title: LocString, description: LocString, cameratarget: Marker|ScarPosition|EGroup|SGroup, hintpointtext: LocString, _function: function, lifetime: number)
function EventCue_Create(style, title, description, cameratarget, hintpointtext, _function, lifetime, dismissOnClick) end

--- Callback helper function for adding unitse an Encounter. Name of parameters: 'units'.
---@param data table
function EventHandler_AddEncounterUnits(data) end

--- Callback helper function for assigning a goal to an Encounter. Name of parameters: 'goalData', 'encounter'.
---@param data table
function EventHandler_AssignEncounterGoal(data) end

--- Callback helper function for completing an objective. Received parameters: Table objective, Bool showTitle, Bool skipIntel
---@param data table
function EventHandler_ObjectiveComplete(data) end

--- Callback helper function for starting an objective, name of objective parameter is objective, additional parameters: Bool showTitle, Bool skipIntel
---@param data table
function EventHandler_ObjectiveStart(data) end

--- Callback helper function for removing in-game hints. Name of hintpointID parameter is 'hint'. Can receive a table of ID's.
---@param data table
function EventHandler_RemoveHint(data) end

--- Callback helper function for removing in minimap blips, name of blipID parameter is blip
---@param data table
function EventHandler_RemoveMinimapBlip(data) end

--- Callback helper function that removes objective UI elements, name of parameters: objective, element
---@param data table
function EventHandler_RemoveObjectiveUI(data) end

--- Callback helper function that causes the input group to retreat, name of parameters: group, location, deleteAtMarker, queued
---@param data table
function EventHandler_Retreat(data) end

--- Callback helper function that causes the input group to retreat, name of parameters: group, location, maxTries
---@param data table
function EventHandler_StaggeredRetreat(data) end

--- Callback helper function for Intel events, name of intel parameter is intel
---@param data table
function EventHandler_StartIntel(data) end

--- Callback helper function for Intel Nislet events, name of intel parameter is intel
---@param data table
function EventHandler_StartNislet(data) end

--- Callback helper function for removing UI flashing. Name of ID parameter is flashID
---@param data table
function EventHandler_StopFlashing(data) end

--- Callback helper function for triggering an Encounter goal. Name of parameters: 'encounter'.
---@param data table
function EventHandler_TriggerEncounterGoal(data) end

--- Uses targettingData to determine if a target has moved or not and progressively homes-in on it.
---@param caster SGroup|Player
---@param target SGroup
---@param targettingData table
function FireTargettingArtillery(caster, target, targettingData) end

--- Enables or disables the FOW, including out of bound areas and all entities on the map
---@param enable boolean
function FOW_Enable(enable) end

--- Explores entire map for one player
---@param player Player
function FOW_PlayerExploreAll(player) end

--- Reveal FOW for specified player
---@param player Player
function FOW_PlayerRevealAll(player) end

--- Reveals a circular area for the given player over a given duration. YOU SHOULD ONLY CALL THIS ONCE FOR EACH AREA.
---@param player Player
---@param pos ScarPosition
---@param radius number
---@param durationSecs number
function FOW_PlayerRevealArea(player, pos, radius, durationSecs) end

--- Unexplores entire map for one player
---@param player Player
function FOW_PlayerUnExploreAll(player) end

--- Use to undo a FOW_RevealAll for specified player
---@param player Player
function FOW_PlayerUnRevealAll(player) end

--- UnReveals a circular area for a given player. YOU SHOULD ONLY CALL THIS ONCE FOR EACH AREA.
---@param player Player
---@param pos ScarPosition
---@param radius number
function FOW_PlayerUnRevealArea(player, pos, radius) end

--- Reveal FOW for all players
function FOW_RevealAll() end

--- Reveals a circular area for all alive players over a given duration. YOU SHOULD ONLY CALL THIS ONCE FOR EACH AREA.
---@param pos ScarPosition
---@param radius number
---@param durationSecs number
function FOW_RevealArea(pos, radius, durationSecs) end

--- Reveals an entity groups line of sight(LOS) for all alive players over a given duration. YOU SHOULD ONLY CALL THIS ONCE FOR EACH AREA.
---@param group EGroup
---@param durationSecs number
function FOW_RevealEGroup(group, durationSecs) end

--- Reveals an entity groups in FOW for all alive players over a given duration.
---@param group EGroup
---@param durationSecs number
function FOW_RevealEGroupOnly(group, durationSecs) end

--- Reveals an entities line of sight (LOS) for all alive players over a given duration. YOU SHOULD ONLY CALL THIS ONCE FOR EACH AREA.
---@param entity Entity
---@param durationSecs number
function FOW_RevealEntity(entity, durationSecs) end

--- Reveals an area the size of a given markers proximity at that markers position for a given amount of time. Pass in a duration of 1 for indefinite duration. YOU SHOULD ONLY CALL THIS ONCE FOR EACH AREA.
---@param marker Marker
---@param duration number
function FOW_RevealMarker(marker, duration) end

--- Reveals a squad groups line of sight(LOS) for all alive players over a given duration. YOU SHOULD ONLY CALL THIS ONCE FOR EACH AREA.
---@param group SGroup
---@param durationSecs number
function FOW_RevealSGroup(group, durationSecs) end

--- Reveals a squad groups in fow for all alive players over a given duration. YOU SHOULD ONLY CALL THIS ONCE FOR EACH AREA.
---@param group SGroup
---@param durationSecs number
function FOW_RevealSGroupOnly(group, durationSecs) end

--- Reveals a squads line if sight(LOS) for all alive players over a given duration. YOU SHOULD ONLY CALL THIS ONCE FOR EACH AREA.
---@param squad Squad
---@param durationSecs number
function FOW_RevealSquad(squad, durationSecs) end

--- Reveals a territory to a player
---@param player Player
---@param sectorID integer
---@param durationSecs number
---@param mustOwn boolean
function FOW_RevealTerritory(player, sectorID, durationSecs, mustOwn) end

--- Use to undo a FOW_RevealAll
function FOW_UnRevealAll() end

--- UnReveals a circular area for all alive players. YOU SHOULD ONLY CALL THIS ONCE FOR EACH AREA.
---@param pos ScarPosition
---@param radius number
function FOW_UnRevealArea(pos, radius) end

--- Unreveals an area the size of a given markers proximity at that markers position. YOU SHOULD ONLY CALL THIS ONCE FOR EACH AREA.
---@param marker Marker
function FOW_UnRevealMarker(marker) end

--- Unreveals a territory sector
---@param player Player
---@param sectorID integer
function FOW_UnRevealTerritory(player, sectorID) end

--- Restores various aspects of the single player game after loading a mission from a save game
function Game_DefaultGameRestore() end

--- Enables/Disables all input EXCEPT for ESC and F10.
---@param enabled boolean
function Game_EnableInput(enabled) end

--- Ends the single player game (win/lose).
---@param win boolean
---@param nis boolean
---@param sandmap boolean
---@overload fun(win: boolean)
---@overload fun(win: boolean, nis: boolean)
function Game_EndSP(win, nis, sandmap) end

--- Removes title text displayed with Game_SubTextFade(...) immediately
function Game_EndSubTextFade() end

--- Removes title text displayed with Game_TextTitleFade(...) immediately
function Game_EndTextTitleFade() end

--- Fades the screen to black - FADE_OUT to fade to black, FADE_IN to fade back in
---@param direction boolean
---@param length number
function Game_FadeToBlack(direction, length) end

--- Checks whether a callback
---@param callback function
function Game_GetGameRestoreCallbackExists(callback) end

--- Get the local player. (should only be used for UI purpose) (not strict)
---@return Player
function Game_GetLocalPlayer() end

--- Returns the current game screen mode.
---@return UIMode
function Game_GetMode() end

--- Returns current single player difficulty. Values are GD_EASY, GD_NORMAL, GD_HARD, GD_EXPERT.
---@return integer
function Game_GetSPDifficulty() end

--- Determine if there is a valid local player. (UI only -- nondeterminstic) (not strict)
---@return boolean
function Game_HasLocalPlayer() end

--- Returns true if the ui is in letterbox mode . (not strict)
---@return boolean
function Game_IsLetterboxed() end

--- Returns true if the we're running the performance test.
---@return boolean
function Game_IsPerformanceTest() end

--- Use to test whether the game is running in RTM mode or not. Using -rtm from the command line will cause this function to also return true in non-RTM builds.
---@return boolean
function Game_IsRTM() end

--- Enters/Exits letterbox mode in amount of time specified by timeSecs.
---@param on boolean
---@param timeSecs number
function Game_Letterbox(on, timeSecs) end

--- Transitions to another atmosphere. Overwrites current transitions.
---@param filename string
---@param transitionTime number
function Game_LoadAtmosphere(filename, transitionTime) end

--- If you are running something that is non-deterministic like a getlocalplayer conditional, you can lock the random to make sure no one down the callstack will throw the game random index out of sync and cause a sync error. REMEMBER TO UNLOCK WHEN YOU ARE DONE
function Game_LockRandom() end

--- Dumps a profile series
---@param name string
---@param frameCount integer
function Game_ProfileDumpFrames(name, frameCount) end

--- Quits the app immediately
function Game_QuitApp() end

--- Removes a callback from being called on game restore
---@param callback function
function Game_RemoveGameRestoreCallback(callback) end

--- Fades the screen to a given RGBA colour over a number of seconds
---@param r number
---@param g number
---@param b number
---@param a number
---@param timeSecs number
function Game_ScreenFade(r, g, b, a, timeSecs) end

--- Adds a function and set of arguments to be automatically called during restore from a saved game. Maxiumum of 9 parameters. Callback will be called like this: Callback(arg[1], arg[2], ...)
---@param callback function
function Game_SetGameRestoreCallback(callback) end

--- Sets the local player. (not strict)
---@param player Player
function Game_SetLocalPlayer(player) end

--- Set the game screen mode
---@param mode UIMode
function Game_SetMode(mode) end

--- Brings up the pause menu. The game does not get paused until the end of the current sim tick, so anything that comes after Game_ShowPauseMenu in your function will still get executed, as well as any rules set to run during that frame.
function Game_ShowPauseMenu() end

--- Skips all events. Can either delete or skip queued events.
---@param deleteQueued boolean
function Game_SkipAllEvents(deleteQueued) end

--- Skips the currently playing event (and stops current sound).
function Game_SkipEvent() end

--- Do not unmute game sounds when the mission starts (must be called in OnInit).  Use this is you transition into a NIS to prevent any audio from playing until the NIS is over.
---@param startMuted boolean
function Game_StartMuted(startMuted) end

--- Fade in and out two or three lines of subtext.
---@param location LocString
---@param time LocString
---@param detail LocString
---@param _in number
---@param lifetime number
---@param out number
function Game_SubTextFade(location, time, detail, _in, lifetime, out) end

--- Shows title text that fades in and out over a specified durations
---@param text LocString
---@param fadeIn number
---@param duration number
---@param fadeOut number
---@return integer
function Game_TextTitleFade(text, fadeIn, duration, fadeOut) end

--- Triggers lightning on the next frame
function Game_TriggerLightning() end

--- Unlocks user/camera input during letterbox. This should be used for debug only.
function Game_UnlockInputOnLetterBox() end

--- unlock the random from a previous lockrandom call only
function Game_UnLockRandom() end

--- Disable the spotting of enemy entities that may become ghosts in the FoW.
function Ghost_DisableSpotting() end

--- Enable the spotting of enemy entities that may become ghosts in the FoW.
function Ghost_EnableSpotting() end

--- Adds a Hint Point that will only appear on Mouseover of the target.
---@param hintText LocString
---@param hintTarget Marker|ScarPosition|EGroup|SGroup
---@param targetRadius number
---@param looping boolean
function HintMouseover_Add(hintText, hintTarget, targetRadius, looping) end

--- Removes a Mouseover Hint Point from the managing function.
---@param hintText LocString
---@param hintTarget Marker|EGroup|SGroup
function HintMouseover_Remove(hintText, hintTarget) end

--- Creates a hintpoint attached to a Marker, EGroup, SGroup or position
---@param where any
---@param bVisible boolean
---@param hintText LocString
---@param height number
---@param actionType HintPointActionType
---@param iconName string
---@return HintPointID
---@overload fun(where: any, bVisible: boolean, hintText: LocString)
---@overload fun(where: any, bVisible: boolean, hintText: LocString, height: number)
---@overload fun(where: any, bVisible: boolean, hintText: LocString, height: number, actionType: HintPointActionType)
function HintPoint_Add(where, bVisible, hintText, height, actionType, iconName) end

--- Deprecated.
---@param egroup EGroup
---@param priority integer
---@param visible boolean
---@param _function function
---@param hint LocString
---@param arrow boolean
---@param arrowOffset ScarPosition
---@param actionType HintPointActionType
---@param iconName string
---@return integer
function HintPoint_AddToEGroup(egroup, priority, visible, _function, hint, arrow, arrowOffset, actionType, iconName) end

--- For internal use only.
---@param entity Entity
---@param priority integer
---@param visible boolean
---@param _function function
---@param hint LocString
---@param arrow boolean
---@param arrowOffset ScarPosition
---@param objectiveID integer
---@param actionType HintPointActionType
---@param iconName string
---@return integer
function HintPoint_AddToEntity(entity, priority, visible, _function, hint, arrow, arrowOffset, objectiveID, actionType, iconName) end

--- For internal use only.
---@param position ScarPosition
---@param priority integer
---@param visible boolean
---@param _function function
---@param hint LocString
---@param arrow boolean
---@param arrowOffset ScarPosition
---@param objectiveID integer
---@param actionType HintPointActionType
---@param iconName string
---@return integer
function HintPoint_AddToPosition(position, priority, visible, _function, hint, arrow, arrowOffset, objectiveID, actionType, iconName) end

--- Deprecated.
---@param sgroup SGroup
---@param priority integer
---@param visible boolean
---@param _function function
---@param hint LocString
---@param arrow boolean
---@param arrowOffset ScarPosition
---@param actionType HintPointActionType
---@param iconName string
---@return integer
function HintPoint_AddToSGroup(sgroup, priority, visible, _function, hint, arrow, arrowOffset, actionType, iconName) end

--- For internal use only.
---@param squad Squad
---@param priority integer
---@param visible boolean
---@param _function function
---@param hint LocString
---@param arrow boolean
---@param arrowOffset ScarPosition
---@param objectiveID integer
---@param actionType HintPointActionType
---@param iconName string
---@return integer
function HintPoint_AddToSquad(squad, priority, visible, _function, hint, arrow, arrowOffset, objectiveID, actionType, iconName) end

--- Clear the hint point arrow facing value.
---@param id integer
function HintPoint_ClearFacing(id) end

--- Removes a hintpoint.
---@param HintPointID integer
function HintPoint_Remove(HintPointID) end

--- Remove all hint points.
function HintPoint_RemoveAll() end

--- Sets a hintpoint's display offset, which is 3D for world hintpoints and 2D for taskbar binding hintpoints (ignore z)
---@param hintpointID integer
---@param x number
---@param y number
---@param z number
---@overload fun(hintpointID: integer, x: number, y: number)
function HintPoint_SetDisplayOffset(hintpointID, x, y, z) end

--- Add a projected offset to the specified hint point.
---@param id integer
---@param offset ScarPosition
function HintPoint_SetDisplayOffsetInternal(id, offset) end

--- Face the hint point arrow towards this entity.
---@param id integer
---@param entity Entity
function HintPoint_SetFacingEntity(id, entity) end

--- Face the hint point arrow towards this position.
---@param id integer
---@param position ScarPosition
function HintPoint_SetFacingPosition(id, position) end

--- Face the hint point arrow towards this squad.
---@param id integer
---@param squad Squad
function HintPoint_SetFacingSquad(id, squad) end

--- Sets a hintpoint's visibility. Currently, FOW is not accounted for.
---@param HintPointID integer
---@param bVisible boolean
function HintPoint_SetVisible(HintPointID, bVisible) end

--- Show or hide the specified hint point.
---@param id integer
---@param visible boolean
function HintPoint_SetVisibleInternal(id, visible) end

--- Loads a scar file if it hasn't been loaded yet
---@param Path string
function Import_Once(Path) end

--- Returns true if this object is of the specified type
---@param pbg PropertyBagGroup
---@param type string
---@return boolean
function IsOfType(pbg, type) end

--- Can this structure be used to secure territory
---@param pbg PropertyBagGroup
---@return boolean
function IsSecuringStructure(pbg) end

--- Returns true if this object is a structure (something with a site_ext)
---@param pbg PropertyBagGroup
---@return boolean
function IsStructure(pbg) end

--- Returns whether the installed version of the game allows the player to play this race
---@param raceName string
---@return boolean
function License_CanPlayRace(raceName) end

--- DEV ONLY: Converts ansi text to localized text.
---@param text string
---@return LocString
function LOC(text) end

--- Returns a localized string containing the number.
---@param number integer
---@return LocString
function Loc_ConvertNumber(number) end

--- Empty string.
---@return LocString
function Loc_Empty() end

--- Returns a formatted localized string.
---@param FormatID integer
---@param parameters any
---@return LocString
---@overload fun(FormatID: integer)
function Loc_FormatText(FormatID, parameters) end

--- Returns a formatted time string. can omit hours and leading zeroes (for example, 4:57 instead of 00:04:57)
---@param secs integer
---@param show_hours boolean
---@param leading_zeroes boolean
---@return LocString
function Loc_FormatTime(secs, show_hours, leading_zeroes) end

--- Returns the LocString message of a LocString reference, e.g. 1009 -> "YES", "$1009" -> "YES"
---@param locStringID LocString
---@return string
function Loc_ToAnsi(locStringID) end

--- Creates an arrow on the metamap between the two locations provided.
---@param position_from Marker|ScarPosition
---@param position_to Marker|ScarPosition
---@param red integer
---@param green integer
---@param blue integer
---@param alpha integer
function MapIcon_CreateArrow(position_from, position_to, red, green, blue, alpha) end

--- Kill off a specific player's dead bodies (enter ALL to clean them all up) in a marker radius
---@param player Player
---@param marker Marker
function Marker_CleanUpTheDead(player, marker) end

--- Returns true if a generic number attribute exists for the marker type.
---@param marker ScarMarker
---@param attrname string
---@return boolean
function Marker_DoesNumberAttributeExist(marker, attrname) end

--- Returns true if a generic string attribute exists for the marker type.
---@param marker ScarMarker
---@param attrname string
---@return boolean
function Marker_DoesStringAttributeExist(marker, attrname) end

--- Returns true if marker exists. If you don't care about the type, pass in an empty string ( "" )
---@param name string
---@param type string
---@return boolean
function Marker_Exists(name, type) end

--- Returns a ScarMarker from the Mission Editor. If you don't care about the type, pass in an empty string ( "" )
---@param name string
---@param type string
---@return ScarMarker
function Marker_FromName(name, type) end

--- Returns a vector for the marker direction
---@param marker ScarMarker
---@return ScarPosition
function Marker_GetDirection(marker) end

--- Returns the name of a given marker.  This value gets set in the Mission Editor.
---@param marker ScarMarker
---@return string
function Marker_GetName(marker) end

--- Returns a fixed size table of markers from the world builder.  Markers that do not exist in the WB, will be nil in the table.  This is why we call it 'non-sequential'
---@param format string
---@param size integer
---@return table
function Marker_GetNonSequentialTable(format, size) end

--- Returns a generic number attribute defined in a marker.
---@param marker ScarMarker
---@param attrname string
---@return number
function Marker_GetNumberAttribute(marker, attrname) end

--- Returns the position of a given marker.
---@param marker ScarMarker
---@return ScarPosition
function Marker_GetPosition(marker) end

--- Returns the proximity radius of a given marker.  Only for marker with proximity type PT_Circle. This value gets set in the Mission Editor.
---@param marker ScarMarker
---@return number
function Marker_GetProximityRadius(marker) end

--- Returns the proximity type of a given marker.  The possible results are PT_Circle and PT_Rectangle
---@param marker ScarMarker
---@return ProximityType
function Marker_GetProximityType(marker) end

--- Builds a table of MarkerIDs that are named in a sequence. i.e. a name of "spot" will find markers "spot1", "spot2" and so on, up until it looks for a marker that isn't there.
---@param name string
---@param type string
---@return table
function Marker_GetSequence(name, type) end

--- Returns a generic string attribute defined in a marker.
---@param marker ScarMarker
---@param attrname string
---@return string
function Marker_GetStringAttribute(marker, attrname) end

--- Returns a table of markers from the world builder. Creates as many as it finds
---@param format string
---@return table
function Marker_GetTable(format) end

--- Returns the typename of a given marker.  This is the typename from the Mission Editor (name displayed when placing markers)
---@param marker ScarMarker
---@return string
function Marker_GetType(marker) end

--- Returns true if the given position is in the markers proximity radius or proximity rectangle (depending on the type).
---@param marker ScarMarker
---@param pos ScarPosition
---@return boolean
function Marker_InProximity(marker, pos) end

--- Merge clones two table (recursively) into a single table combining into a new table allowing for unadulterated use of the data
---@param defaultTable table
---@param overrideTable table
---@return table
function MergeClone(defaultTable, overrideTable) end

--- Adjust default goal data. Sets the default GoalData to the current defaults plus additionalDefaultGoalData; any values specified are used for unspecified encounter goal values.
---@param modifyGoalData table
function MergeCloneTable(modifyGoalData) end

--- Abort straight out of the game to the frontend, without asking the user
function Misc_AbortToFE() end

--- Add another marker in which commands are restricted to.
---@param marker ScarMarker
function Misc_AddRestrictCommandsMarker(marker) end

--- Let AI take over local player
function Misc_AIControlLocalPlayer() end

--- Returns the enabled/disabled state of the right-click command input.  (not strict)
---@return boolean
function Misc_AreDefaultCommandsEnabled() end

--- Returns true if the app has had any keyboard input in the last second
---@return boolean
function Misc_DetectKeyboardInput() end

--- Returns true if the app has had any mouse input in the last second
---@return boolean
function Misc_DetectMouseInput() end

--- Do weapon hit effect on the entity from the view camera origin
---@param entity Entity
---@param pos ScarPosition
---@param weaponPBG ScarWeaponPBG
---@param penetrated boolean
function Misc_DoWeaponHitEffectOnEntity(entity, pos, weaponPBG, penetrated) end

--- Do weapon hit effect on the ground
---@param pos ScarPosition
---@param weaponPBG ScarWeaponPBG
---@param penetrated boolean
function Misc_DoWeaponHitEffectOnPosition(pos, weaponPBG, penetrated) end

--- Turn on or off the performance test monitoring
---@param toEnable boolean
function Misc_EnablePerformanceTest(toEnable) end

--- Returns the string argument for a command line option. ex: for "-init test.lua" it would return "test.lua"
---@param option string
---@return string
function Misc_GetCommandLineString(option) end

--- Returns contents of a control group (0 to 9). Squads are put into an sgroup, and non-squad entities are put into an egroup.
---@param groupIndex integer
---@param squads SGroup
---@param nonSquadEntities EGroup
function Misc_GetControlGroupContents(groupIndex, squads, nonSquadEntities) end

--- Returns the control group index that this entity belongs to, from 0 to 9, or -1 if none.
---@param entity Entity
---@return integer
function Misc_GetEntityControlGroup(entity) end

--- Returns a hidden position on path from origin to destination. If there's none, it returns the origin position
---@param checkType CheckHiddenType
---@param origin ScarPosition
---@param destination ScarPosition
---@param ebp ScarEntityPBG
---@param stepDistance number
---@param cameraPadding number
---@param fowPlayer Player
---@param debugDisplay boolean
---@return ScarPosition
function Misc_GetHiddenPositionOnPath(checkType, origin, destination, ebp, stepDistance, cameraPadding, fowPlayer, debugDisplay) end

--- Returns the world position of the mouse on the terrain (not strict)
---@return ScarPosition
function Misc_GetMouseOnTerrain() end

--- Returns the entity under the mouse (if any) (not strict)
---@return Entity
function Misc_GetMouseOverEntity() end

--- Returns the full path name to the main SCAR script.
---@return string
function Misc_GetScarFullFilename() end

--- Clears a given group and adds the current full selection (or subselection if true) to the group.
---@param group EGroup
---@param subselection boolean
function Misc_GetSelectedEntities(group, subselection) end

--- Clears a given group and adds the current full selection (or subselection if true) to the group.
---@param group SGroup
---@param subselection boolean
function Misc_GetSelectedSquads(group, subselection) end

--- Returns the control group index that this squad belongs to, from 0 to 9, or -1 if none.
---@param squad Squad
---@return integer
function Misc_GetSquadControlGroup(squad) end

--- Returns the terrain height at the top-down co-ordinate specified (for terrain entities can walk on only)
---@param p ScarPosition
---@return number
function Misc_GetTerrainHeight(p) end

--- Returns true if -option is specified on the command line
---@param option string
---@return boolean
function Misc_IsCommandLineOptionSet(option) end

--- Returns whether the game is running in dev mode. The rules for dev mode are a bit complicated between builds, so we cannot simply check the command line.
---@return boolean
function Misc_IsDevMode() end

--- Test whether ANY or ALL of an EGroup is on screen currently (not strict)
---@param group EGroup
---@param percent number
---@param all boolean
function Misc_IsEGroupOnScreen(group, percent, all) end

--- Returns true if ANY or ALL of the EGroup is selected
---@param egroup EGroup
---@param all boolean
---@return boolean
function Misc_IsEGroupSelected(egroup, all) end

--- Check if the squad is on screen currently (not strict)
---@param entity Entity
---@param percent number
---@return boolean
function Misc_IsEntityOnScreen(entity, percent) end

--- Returns true if the specified entity is currently selected.
---@param entity Entity
---@return boolean
function Misc_IsEntitySelected(entity) end

--- Returns true if the mouse is over an entity (not strict)
---@return boolean
function Misc_IsMouseOverEntity() end

--- Check if position is on screen, (1 being the entire screen, 0.5 being 50% of the screen from the center point)
---@param pos ScarPosition
---@param percent number
---@return boolean
function Misc_IsPosOnScreen(pos, percent) end

--- Returns the enabled/disabled state of the selection input.  (not strict)
---@return boolean
function Misc_IsSelectionInputEnabled() end

--- Test whether ANY or ALL of an SGroup is on screen currently (not strict)
---@param group SGroup
---@param percent number
---@param all boolean
function Misc_IsSGroupOnScreen(group, percent, all) end

--- Returns true if ANY or ALL of the SGroup is selected
---@param sgroup SGroup
---@param all boolean
---@return boolean
function Misc_IsSGroupSelected(sgroup, all) end

