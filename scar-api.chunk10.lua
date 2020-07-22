--- If there's a squad under the mouse cursor, this adds it to a unique SGroup. Return value is the SGroup it was added to, or nil if there was no squad under the mouse cursor. Pass in true for 'clearGroup' to clear the sgroup before adding the squad.
---@param clearGroup boolean
---@return SGroup
---@overload fun()
function Util_AddMouseoverSquadToSGroup(clearGroup) end

--- [DEPRECATED. Use Event_Proximity() instead.] Add a proximity check.
---@param element Player|SGroup
---@param location EGroup|SGroup|ScarPosition|Marker
---@param all boolean
---@param range number
---@param callback function
---@param delay integer
---@return checkID
function Util_AddProxCheck(element, location, all, range, callback, delay) end

--- Applies any modifier to the target SGroup, EGroup, or Player
---@param groupid SGroup|EGroup|Player
---@param modifier string
---@param scalefactor number
---@param mathtype number
---@param applytype number
---@param exclusive boolean
---@param targetname string
---@return ModID
---@overload fun(groupid: SGroup|EGroup|Player, modifier: string, scalefactor: number, mathtype: number)
---@overload fun(groupid: SGroup|EGroup|Player, modifier: string, scalefactor: number, mathtype: number, applytype: number)
---@overload fun(groupid: SGroup|EGroup|Player, modifier: string, scalefactor: number, mathtype: number, applytype: number, exclusive: boolean)
function Util_ApplyModifier(groupid, modifier, scalefactor, mathtype, applytype, exclusive, targetname) end

--- Auto-generate an Ambient Event. These are Low priority, and will hopefully interrupt nothing.
---@param intelEventTable table
function Util_AutoAmbient(intelEventTable) end

--- Auto-generate an Intel Event. These are medium priority, and will interrupt a Stinger, but not an NIS.
---@param intelEventTable table
function Util_AutoIntel(intelEventTable) end

--- Auto-generate an NISlet Event, a simple NIS meant to convey mission location. These are high priority, and will interrupt a Stinger and Intel Events.
---@param nisletType integer
---@param intelEventTable table
---@param bFOWvisible boolean
---@overload fun(nisletType: integer, intelEventTable: table)
function Util_AutoNISlet(nisletType, intelEventTable, bFOWvisible) end

--- Automatically save the game for the player. The savegame name is built using the abbreviated mission name + checkpoint.
---@param checkpoint LocString
---@param delay number
---@param noFade boolean
---@overload fun(checkpoint: LocString)
---@overload fun(checkpoint: LocString, delay: number)
function Util_Autosave(checkpoint, delay, noFade) end

--- [DEPRECATED. DO NOT USE.] Removes all existing proximity checks.
function Util_ClearProxChecks() end

--- Clears vehicle wrecks from a given area.
---@param position Marker|ScarPosition|SectorID
---@param range number
---@param wrecksList table
---@overload fun(position: Marker|ScarPosition|SectorID)
---@overload fun(position: Marker|ScarPosition|SectorID, range: number)
function Util_ClearWrecksFromMarker(position, range, wrecksList) end

--- Creates a given number of entities at a location and adds them to an egroup. A PlayerID of nil will create the entities as world objects.
---@param player Player
---@param egroup EGroup
---@param blueprintID integer
---@param location Marker|ScarPosition
---@param numentities integer
---@param toward Marker|ScarPosition
---@overload fun(player: Player, egroup: EGroup, blueprintID: integer, location: Marker|ScarPosition, numentities: integer)
function Util_CreateEntities(player, egroup, blueprintID, location, numentities, toward) end

--- High level function to create squads and give them basic orders upon spawning. Detailed explanation found in ScarUtil.scar
---@param player Player
---@param sgroup SGroup|table|string
---@param sbp SquadBlueprint|table
---@param spawn_point Marker|ScarPosition|SGroup|EGroup
---@param destination ScarPosition
---@param numsquads integer
---@param loadout integer
---@param attackmove boolean
---@param dest_facing ScarPosition
---@param upgrades UpgradeBlueprint|table
---@param spawn_facing ScarPosition
---@return SGroup
---@overload fun(player: Player, sgroup: SGroup|table|string, sbp: SquadBlueprint|table, spawn_point: Marker|ScarPosition|SGroup|EGroup)
---@overload fun(player: Player, sgroup: SGroup|table|string, sbp: SquadBlueprint|table, spawn_point: Marker|ScarPosition|SGroup|EGroup, destination: ScarPosition)
---@overload fun(player: Player, sgroup: SGroup|table|string, sbp: SquadBlueprint|table, spawn_point: Marker|ScarPosition|SGroup|EGroup, destination: ScarPosition, numsquads: integer)
---@overload fun(player: Player, sgroup: SGroup|table|string, sbp: SquadBlueprint|table, spawn_point: Marker|ScarPosition|SGroup|EGroup, destination: ScarPosition, numsquads: integer, loadout: integer)
---@overload fun(player: Player, sgroup: SGroup|table|string, sbp: SquadBlueprint|table, spawn_point: Marker|ScarPosition|SGroup|EGroup, destination: ScarPosition, numsquads: integer, loadout: integer, attackmove: boolean)
---@overload fun(player: Player, sgroup: SGroup|table|string, sbp: SquadBlueprint|table, spawn_point: Marker|ScarPosition|SGroup|EGroup, destination: ScarPosition, numsquads: integer, loadout: integer, attackmove: boolean, dest_facing: ScarPosition)
---@overload fun(player: Player, sgroup: SGroup|table|string, sbp: SquadBlueprint|table, spawn_point: Marker|ScarPosition|SGroup|EGroup, destination: ScarPosition, numsquads: integer, loadout: integer, attackmove: boolean, dest_facing: ScarPosition, upgrades: UpgradeBlueprint|table)
function Util_CreateSquads(player, sgroup, sbp, spawn_point, destination, numsquads, loadout, attackmove, dest_facing, upgrades, spawn_facing) end

--- ReSpawns or DeSpawns sgroups (and egroups) for all players or the indicated player.
---@param despawn boolean
---@param playerNum boolean|any|integer
---@param egroups boolean
---@overload fun(despawn: boolean)
---@overload fun(despawn: boolean, playerNum: boolean|any|integer)
function Util_DespawnAll(despawn, playerNum, egroups) end

--- Takes in a table and chooses the right variable for the difficulty setting. 1-4 elements. Acquires current difficulty by default.
---@param difficultyVariables table
---@param difficulty integer
---@return any
---@overload fun(difficultyVariables: table)
function Util_DifVar(difficultyVariables, difficulty) end

--- Returns true if a Player/Team can see any or all of an SGroup/Squad/EGroup/Entity/Position/Marker
---@param playerID_teamID Player|integer
---@param element SGroup|EGroup|Entity|Squad|Marker|ScarPosition
---@return boolean
function Util_ElementCanSee(playerID_teamID, element) end

--- Checks the entity count for the world and returns true or false depending on the result. A specific value can be passed in to override the default amount.
---@param entityLimit integer
---@return boolean
---@overload fun()
function Util_EntityLimit(entityLimit) end

--- Try to garrison a loadable building within radius that is closer to the first squad of the sgroup than enemy
---@param sgroupid SGroup
---@param radius integer
---@return Entity
function Util_FallBackToGarrisonBuilding(sgroupid, radius) end

--- Finds a hidden position based on what the local player can and can't see.
---@param items ScarPosition|EGroup|Entity|SGroup|Squad
---@return EGroup
function Util_FindHiddenItem(items) end

--- Finds a hidden position within the FOW between two given points
---@param origin ScarPosition
---@param destination ScarPosition
---@return ScarPosition
function Util_FindHiddenSpawn(origin, destination) end

--- Forces all squads given to retreat, regardless of whether they are on team weapons or not. Disables aiEncounters input (true disables all encounters).
---@param sgroup SGroup
---@param marker Marker
---@param aiEncounterDisable boolean|AIEncounter
function Util_ForceRetreatAll(sgroup, marker, aiEncounterDisable) end

--- Finds a nearby building to garrison. can ignore occupied [friendly] buildings. return ID of entity it found, or nil if not found
---@param sgroup SGroup
---@param pos ScarPosition
---@param radius number
---@param occupied boolean
---@param filter SGroup|table
---@return Entity
---@overload fun(sgroup: SGroup, pos: ScarPosition, radius: number)
---@overload fun(sgroup: SGroup, pos: ScarPosition, radius: number, occupied: boolean)
function Util_GarrisonNearbyBuilding(sgroup, pos, radius, occupied, filter) end

--- Finds a nearby vehicle to garrison. can ignore occupied [friendly] vehicles. return ID of vehicle it found, or nil if not found,
---@param sgroup SGroup
---@param pos ScarPosition
---@param radius number
---@param occupied boolean
---@param filter SGroup|table
---@return Squad
---@overload fun(sgroup: SGroup, pos: ScarPosition, radius: number)
---@overload fun(sgroup: SGroup, pos: ScarPosition, radius: number, occupied: boolean)
function Util_GarrisonNearbyVehicle(sgroup, pos, radius, occupied, filter) end

--- Returns the closest MarkerID to the entity/marker/pos/egroup/sgroup/squad from the table of markers provided
---@param var any
---@param markers table
---@return Marker
function Util_GetClosestMarker(var, markers) end

--- Returns the distance between two objects
---@param Object1 Entity|Squad|EGroup|SGroup|Marker|ScarPosition
---@param Object2 Entity|Squad|EGroup|SGroup|Marker|ScarPosition
---@return number
function Util_GetDistance(Object1, Object2) end

--- Find all the entities with a given blueprint in sourcegroup and add them to destgroup.
---@param sourcegroup EGroup
---@param destgroup EGroup
---@param ebp Entity
function Util_GetEntitiesByBP(sourcegroup, destgroup, ebp) end

--- Determines the health percentage of a given object
---@param var Squad|Entity|SGroup|EGroup
---@return number
function Util_GetHealth(var) end

--- Returns a unique SGroup used to hold mouseover squads obtained from Util_AddMouseoverSquadToSGroup
function Util_GetMouseoverSGroup() end

--- Returns a position relative to a entity/squad/egroup/sgroup/marker/position's current position and orientation. see LuaConsts.scar for explanation of 'offset' parameter.
---@param pos Entity|Squad|EGroup|SGroup|Marker|ScarPosition
---@param offset integer
---@param distance number
---@return ScarPosition
function Util_GetOffsetPosition(pos, offset, distance) end

--- Returns the player owner for any of: entity, squad, egroup, sgroup, player. for groups, the first item is used. Returns nil for world owned or empty groups
---@param Object Entity|Squad|EGroup|SGroup|Player
---@return Player
function Util_GetPlayerOwner(Object) end

--- Returns a position from entity/marker/pos/egroup/sgroup/squad
---@param var any
---@return ScarPosition
function Util_GetPosition(var) end

--- Returns a random position within an area that is not near a player
---@param pos Marker|ScarPosition|EGroup|SGroup
---@param player Player
---@param searchRadius integer
---@param distance integer
---@return ScarPosition
---@overload fun(pos: Marker|ScarPosition|EGroup|SGroup, player: Player)
---@overload fun(pos: Marker|ScarPosition|EGroup|SGroup, player: Player, searchRadius: integer)
function Util_GetPositionAwayFromPlayer(pos, player, searchRadius, distance) end

--- Returns a position that is distance metres from point A, headed in the direction of point B.
---@param a Marker|ScarPosition
---@param b Marker|ScarPosition
---@param distance number
---@return ScarPosition
function Util_GetPositionFromAtoB(a, b, distance) end

--- Finds a hidden position based on what the local player can and can't see.
---@param items ScarPosition|EGroup|Entity|SGroup|Squad
---@return EGroup
function Util_GetRandomHiddenPosition(items) end

--- Returns a random position either within the marker's proximity or with a pos and range provided. Range is ignored for rectangular markers
---@param unknown Marker|ScarPosition
---@param range number
---@return ScarPosition
---@overload fun()
---@overload fun(unknown: Marker|ScarPosition)
function Util_GetRandomPosition(unknown, range) end

--- Gets the relationship between two of: entity, squad, egroup, sgroup, player. for groups, the first item is used.
---@param Object_1 Entity|Squad|EGroup|SGroup|Player
---@param Object_2 Entity|Squad|EGroup|SGroup|Player
---@return integer
function Util_GetRelationship(Object_1, Object_2) end

--- Returns a relative offset position to an element
---@param element Entity|Squad|EGroup|SGroup|Marker|ScarPosition
---@param pos Entity|Squad|EGroup|SGroup|Marker|ScarPosition
---@return Offset
function Util_GetRelativeOffset(element, pos) end

--- Find all the squads with a given blueprint in sourcegroup and add them to destgroup.
---@param sourcegroup SGroup
---@param destgroup SGroup
---@param sbp SquadBlueprint
function Util_GetSquadsByBP(sourcegroup, destgroup, sbp) end

--- Returns trailing numbers from a string, if it exists, nil otherwise. E.G. "marker23" would return 23.
---@param val string
---@return number
function Util_GetTrailingNumber(val) end

--- Grabs the selected squads/entities and returns them in a group. Only works with -dev.
---@param subselect boolean
---@return SGroup|EGroup
function Util_Grab(subselect) end

--- Returns true if given entity/marker/pos/egroup/sgroup/squad has a position; if false, Util_GetPosition will fail.
---@param var any
---@return boolean
function Util_HasPosition(var) end

--- Hides all of a player's squads and/or buildings
---@param player Player
---@param hide boolean
function Util_HidePlayerForNIS(player, hide) end

--- Returns whether the currently running sequence has been skipped
---@return boolean
function Util_IsSequenceSkipped() end

--- Kills a given object
---@param var Player|Squad|Entity|SGroup|EGroup
function Util_Kill(var) end

--- Tracks a syncweapon ID and destroys it (by default) or makes it uncapturable (if kill is set to false)
---@param syncweapon SGroup
---@param kill boolean
---@overload fun(syncweapon: SGroup)
function Util_LogSyncWpn(syncweapon, kill) end

--- Play an events file at a given markers location
---@param markername string
---@param eventfile string
function Util_MarkerFX(markername, eventfile) end

--- Play the mission title fade.
---@param title LocString
---@param time_fade_in integer
---@param lifetime integer
---@param time_fade_out integer
---@overload fun(title: LocString)
---@overload fun(title: LocString, time_fade_in: integer)
---@overload fun(title: LocString, time_fade_in: integer, lifetime: integer)
function Util_MissionTitle(title, time_fade_in, lifetime, time_fade_out) end

--- Monitors a territory point and warns the player if it goes below a certain capture threshold
---@param terrs table|EGroup
---@param captureThreshold number
---@param timeoutValue integer
---@param callback any
---@param alertIntel any
---@param parentObjective table
function Util_MonitorTerritory(terrs, captureThreshold, timeoutValue, callback, alertIntel, parentObjective) end

--- Enabling this function will mute the ambient sound (NOT all sound).
---@param enable boolean
---@param fade number
---@overload fun(enable: boolean)
function Util_MuteAmbientSound(enable, fade) end

--- Calls UI_NewHUDFeature() as an IntelEvent. Will get queued as any other event. See UI_NewHUDFeature() for parameter details.
---@param newHUDFeature HUDFeatureType
---@param featureText LocString
---@param featureIcon string
---@param duration number
function Util_NewHUDFeatureEvent(newHUDFeature, featureText, featureIcon, duration) end

--- Play a movie.
---@param name string
---@param fadeOut integer
---@param fadeIn integer
---@param onComplete function
---@param delay integer
---@param onCompleteAfterMovie boolean
---@overload fun(name: string)
---@overload fun(name: string, fadeOut: integer)
---@overload fun(name: string, fadeOut: integer, fadeIn: integer)
---@overload fun(name: string, fadeOut: integer, fadeIn: integer, onComplete: function)
---@overload fun(name: string, fadeOut: integer, fadeIn: integer, onComplete: function, delay: integer)
function Util_PlayMovie(name, fadeOut, fadeIn, onComplete, delay, onCompleteAfterMovie) end

--- Plays music from the Data:Sound folder, and stores the music track so it can be resumed after a save/load
---@param name string
---@param fade number
---@param delay number
function Util_PlayMusic(name, fade, delay) end

--- Prints out the entire contents of an Object
---@param obj any
---@param max_depth integer
---@param data_type string
---@param print_func function
---@overload fun(obj: any)
---@overload fun(obj: any, max_depth: integer)
---@overload fun(obj: any, max_depth: integer, data_type: string)
function Util_PrintObject(obj, max_depth, data_type, print_func) end

--- Prevents the construction of squads or enities based on blueprint tables passed into the function.
---@param sbps_upgs table
---@param ebps table
---@param Warning_1 LocString|any
---@param Warning_2 LocString|any
---@overload fun(sbps_upgs: table)
---@overload fun(sbps_upgs: table, ebps: table)
---@overload fun(sbps_upgs: table, ebps: table, Warning_1: LocString|any)
function Util_ProductionRestriction(sbps_upgs, ebps, Warning_1, Warning_2) end

--- Creates an Event Cue for an SGroup and repeats it until the SGroup is killed or selected.
---@param sgroupName SGroup
---@param custumTitle LocString
---@param customDescript LocString
---@overload fun(sgroupName: SGroup)
---@overload fun(sgroupName: SGroup, custumTitle: LocString)
function Util_ReinforceEvent(sgroupName, custumTitle, customDescript) end

--- Reloads the running scar script. Current running rules would also be updated to the redefined functioin.
function Util_ReloadScript() end

--- [DEPRECATED. DO NOT USE.] Remove proximity checks assigned to a location.
---@param location EGroup|SGroup|ScarPosition|Marker
function Util_RemoveProxCheck(location) end

--- [DEPRECATED. DO NOT USE.] Remove a specific proximity check based on its ID.
---@param checkID integer
function Util_RemoveProxCheckByID(checkID) end

--- Resumes playing the music track that was last triggered i.e. after a save/load
function Util_RestoreMusic() end

--- Converts a 2D top down position to a 3D ScarPosition.
---@param xpos number
---@param zpos number
---@param ypos number
---@return ScarPosition
function Util_ScarPos(xpos, zpos, ypos) end

--- Sets it so that a player can skip a scripted sequence. When the skip key is pressed, calls back the given function as a post-sequence setup. noFadeIn stops the system from fading back into gameplay when finished. Call Util_SetPlayerUnableToSkipSequence() when the sequence is finished to disable
---@param event function
---@param skippedCallback function
---@param noFadeIn boolean
---@param fadeInTime integer
---@overload fun(event: function, skippedCallback: function, noFadeIn: boolean)
function Util_SetPlayerCanSkipSequence(event, skippedCallback, noFadeIn, fadeInTime) end

--- Sets the player owner for an entity, squad, egroup or sgroup. Also sets player owner of whatever is garrisoned inside them
---@param Object Entity|Squad|EGroup|SGroup
---@param owner Player
---@param bApplyToSquadsHeldtrue boolean
---@overload fun(Object: Entity|Squad|EGroup|SGroup, owner: Player)
function Util_SetPlayerOwner(Object, owner, bApplyToSquadsHeldtrue) end

--- Disables Util_SetPlayerCanSkipSequence
---@param event function
---@param skippedCallback function
---@param noFadeIn boolean
function Util_SetPlayerUnableToSkipSequence(event, skippedCallback, noFadeIn) end

--- Returns a table of positions sorted from closest to furthest (or furthes to closest if reverse is true) from the origin
---@param origin SGroup|EGroup|Entity|Squad|Marker|ScarPosition
---@param positions table
---@return table
function Util_SortPositionsByClosest(origin, positions) end

--- Spawns a demo charge at a position and returns an egroup
---@param player Player
---@param location Marker|ScarPosition
---@return EGroup
function Util_SpawnDemoCharge(player, location) end

--- Play a Speech Stinger. These are the lowest priority, and will be bumped by Intel Events or NIS's.
---@param func function
function Util_StartAmbient(func) end

--- Play an Intel Event. These are medium priority, and will interrupt a Stinger, but not an NIS.
---@param func function
function Util_StartIntel(func) end

--- Play an NIS. See confluence link below for more info.
---@param NIS string|integer|function
---@param onComplete function
---@param hide EGroup|SGroup|Player|table
---@param preNIS function
---@param postNIS function
---@param framedump boolean
---@param preserveFOW boolean
---@overload fun(NIS: string|integer|function)
---@overload fun(NIS: string|integer|function, onComplete: function)
---@overload fun(NIS: string|integer|function, onComplete: function, hide: EGroup|SGroup|Player|table)
---@overload fun(NIS: string|integer|function, onComplete: function, hide: EGroup|SGroup|Player|table, preNIS: function)
---@overload fun(NIS: string|integer|function, onComplete: function, hide: EGroup|SGroup|Player|table, preNIS: function, postNIS: function)
---@overload fun(NIS: string|integer|function, onComplete: function, hide: EGroup|SGroup|Player|table, preNIS: function, postNIS: function, framedump: boolean)
function Util_StartNIS(NIS, onComplete, hide, preNIS, postNIS, framedump, preserveFOW) end

--- Play Nislet Event. Starts a Nislet event, and calls back a function for post-nislet setup if the Nislet is skipped. noFadeIn stops the system from fading back into gameplay when the player skips
---@param event function
---@param skippedCallback function
---@param noFadeIn boolean
---@param fadeInTime integer
function Util_StartNislet(event, skippedCallback, noFadeIn, fadeInTime) end

--- Play a quick, one-line Intel event.  These are medium priority, and will interrupt a Stinger, but not an NIS.
---@param actor string
---@param speech LocString
function Util_StartQuickIntel(actor, speech) end

--- Checks the first layer of a table and looks for a specified Object, returns true if found.
---@param targetTable table
---@param obj any
---@return boolean
function Util_TableContains(targetTable, obj) end

--- Debug function used to toggle whether or not IntelEvents are played. Only works with -dev parameter
function Util_ToggleAllowIntelEvents() end

--- Library function to trigger NIS event under a certain sets of conditions.  NOTE: if checking against a marker DO NOT specify a range.  The range of the marker set in the WorldBuilder will be used.
---@param playerid Player
---@param position Marker|EGroup|SGroup|ScarPosition
---@param range integer
---@param func function
---@param non_combat boolean
---@param onscreen_only boolean
---@param onscreen_duration integer
function Util_TriggerEvent(playerid, position, range, func, non_combat, onscreen_only, onscreen_duration) end

--- Auto-generate a Tutorial Intel Event. Called individually or using the traditional table format.
---@param Actor_String_Button_Sticky_Input table|any
function Util_TutorialIntel(Actor_String_Button_Sticky_Input) end

--- Returns a table containing either the total or a specific player's squad count, entity count, and vehicle count.
---@param player boolean|world|any|Player
---@return table
function Util_UnitCounts(player) end

--- Returns whether a specified wave table index is valid.
---@param waveManagerTable integer|table
---@param waveDataTableID integer
---@return table
function WaveManager_CheckWaveIsValid(waveManagerTable, waveDataTableID) end

--- WARNING! Clears the ENTIRE WaveManager table.
---@param Void any
function WaveManager_ClearWaveManager(Void) end

--- Forces the current wave to end.
---@param waveManagerTableID integer
function WaveManager_FinishWave(waveManagerTableID) end

--- Returns the Total Active Encounters.
---@param waveManagerTableID integer
---@return integer
function WaveManager_GetActiveEncountersCount(waveManagerTableID) end

--- Returns whether a Wave Manager Table is automated or not.
---@param waveManagerTableID integer
---@return boolean
function WaveManager_GetAutomation(waveManagerTableID) end

--- Gets a Wave Manager Command SGroup.
---@param waveManagerTableID integer
---@return SGroup
function WaveManager_GetCommandSGroup(waveManagerTableID) end

--- Gets a Wave Manager Completion Data Table.
---@param waveManagerTableID integer
---@param waveDataTableID integer
---@return table
function WaveManager_GetCompletionData(waveManagerTableID, waveDataTableID) end

--- Gets a Wave Manager Event Table.
---@param waveManagerTableID integer
---@return table
function WaveManager_GetEventsTable(waveManagerTableID) end

--- Returns a Wave Manager Table based on the ID.
---@param waveManagerTableID integer
---@return table
function WaveManager_GetManagerTable(waveManagerTableID) end

--- Returns the Total Waves.
---@param waveManagerTableID integer
---@return integer
function WaveManager_GetTotalWaves(waveManagerTableID) end

--- Returns the current Wave.
---@param waveManagerTableID integer
---@return integer
function WaveManager_GetWave(waveManagerTableID) end

--- Returns a Wave Data Table based off a Manager.
---@param waveManagerTable integer|table
---@param waveDataTableID integer
---@return table
function WaveManager_GetWaveDataTable(waveManagerTable, waveDataTableID) end

--- Gets a Wave Manager Vehicle SGroup.
---@param waveManagerTableID integer
---@return SGroup
function WaveManager_GetVehicleSGroup(waveManagerTableID) end

--- Return to the Previous Wave.
---@param waveManagerTableID integer
---@param finishCurrentWave boolean
function WaveManager_LastWave(waveManagerTableID, finishCurrentWave) end

--- Advance to the Next Wave.
---@param waveManagerTableID integer
---@param finishCurrentWave boolean
function WaveManager_NextWave(waveManagerTableID, finishCurrentWave) end

--- Removes a Wave Manager Table from the Wave Manager.
---@param waveManagerTableID integer
function WaveManager_RemoveWaveManager(waveManagerTableID) end

--- Restarts all goals for the Wave Manager Data Table .
---@param waveManagerTableID integer
function WaveManager_ResetGoals(waveManagerTableID) end

--- Tells a Wave Manager Table to select spawns.
---@param waveManagerTableID integer
function WaveManager_SelectSpawns(waveManagerTableID) end

--- Sets a Wave Manager Table to be automated or not.
---@param waveManagerTableID integer
---@param automated boolean
function WaveManager_SetAutomation(waveManagerTableID, automated) end

--- Used to update any portion of the required entries for a Wave Manager Table.
---@param waveManagerTableID integer
---@param newWaveManagerTable table
function WaveManager_SetCoreWaveManagerData(waveManagerTableID, newWaveManagerTable) end

--- Create a new Wave Manager Table and insert it into the manager. Can set the Manager to be automated (Must still be activated)
---@param waveManagerTable table
---@param automated boolean
---@return integer
function WaveManager_SetupNewManagerTable(waveManagerTable, automated) end

--- Jump to a specific Wave.
---@param waveManagerTableID integer
---@param newWave integer
---@param finishCurrentWave boolean
function WaveManager_SetWave(waveManagerTableID, newWave, finishCurrentWave) end

--- Tells a Wave Manager Table to spawn the current wave.
---@param waveManagerTableID integer
function WaveManager_SpawnWave(waveManagerTableID) end

--- Starts the WaveManager if it's automation is enabled.
---@param waveManagerTableID integer
function WaveManager_Start(waveManagerTableID) end

--- Sets a Wave Manager Main Goal Data .
---@param waveManagerTableID integer
---@param newGoalData table
---@param waveDataTableID integer
function WaveManager_UpdateMainGoalData(waveManagerTableID, newGoalData, waveDataTableID) end

--- changes the weather state of all objects (options: sunny, lightrain, mediumrain, heavyrain)
---@param weatherLevelName string
function Weather_SetType(weatherLevelName) end

--- Triggers a UI event cue and an audio cue that the player is about to lose the game.
---@param player Player
---@param warningLevel integer
function WinWarning_PublishLoseReminder(player, warningLevel) end

--- Clears the icons for iconographic score cards.
---@param icon string
---@param red integer
---@param green integer
---@param blue integer
---@param alpha integer
---@param tooltipName LocString
---@param tooltipHelp LocString
---@param tooltipIcon string
function WinWarning_ScoreDisplayIconAdd(icon, red, green, blue, alpha, tooltipName, tooltipHelp, tooltipIcon) end

--- Clears the icons for iconographic score cards.
function WinWarning_ScoreDisplayIconsClear() end

--- Flash the victory point scores.
---@param team1Critical boolean
---@param team2Critical boolean
function WinWarning_SetCritical(team1Critical, team2Critical) end

--- Sets the max victory point scores for the game
---@param team1MaxTickers integer
---@param team2MaxTickers integer
function WinWarning_SetMaxTickers(team1MaxTickers, team2MaxTickers) end

--- Sets the victory point scores for the game
---@param team1Tickers integer
---@param team2Tickers integer
function WinWarning_SetTickers(team1Tickers, team2Tickers) end

--- Sets the tooltip for the victory point score card.
---@param teamIndex integer
---@param name LocString
---@param help LocString
---@param icon string
function WinWarning_SetToolTip(teamIndex, name, help, icon) end

--- Call UI_TitleDestroy to remove.
---@param text LocString
---@param fadeIn number
---@param duration number
---@param fadeOut number
---@return integer
function WinWarning_ShowLoseWarning(text, fadeIn, duration, fadeOut) end

--- toggle the visibility of occlusion culling OBB
function VIS_OccCullToggleOBB() end

--- Add an area where pilferable weapons won't disappear due to timeout
---@param pos ScarPosition
---@param radius number
function World_AddPilferLockArea(pos, radius) end

--- Kill off a specific player's dead bodies (enter ALL to clean them all up)
---@param player Player
function World_CleanUpTheDead(player) end

--- 
function World_ClearCasualties() end

--- Damage a circle of ice with a gradient
---@param pos ScarPosition
---@param innerRadius number
---@param outerRadius number
---@param innerDamage number
---@param outerDamage number
function World_DamageIce(pos, innerRadius, outerRadius, innerDamage, outerDamage) end

--- Destroys walls (entities with a wall_ext) near a marker
---@param marker ScarMarker
function World_DestroyWallsNearMarker(marker) end

--- Get the distance between a squad group and a point.
---@param egroup EGroup
---@param p1 ScarPosition
---@param closest boolean
---@return number
function World_DistanceEGroupToPoint(egroup, p1, closest) end

--- Get the distance between two points.
---@param p1 ScarPosition
---@param p2 ScarPosition
---@return number
function World_DistancePointToPoint(p1, p2) end

--- Get the distance between a squad group and a point.
---@param sgroup SGroup
---@param p1 ScarPosition
---@param closest boolean
---@return number
function World_DistanceSGroupToPoint(sgroup, p1, closest) end

--- Get the distance squared between two points.
---@param p1 ScarPosition
---@param p2 ScarPosition
---@return number
function World_DistanceSquaredPointToPoint(p1, p2) end

--- *** You must call this from OnGameSetup, otherwise it's too late *** Determines whether empty players get converted to null resource points.
---@param enable boolean
function World_EnableReplacementObjectForEmptyPlayers(enable) end

--- Enables or disables shared line of sight between these two players
---@param p0 Player
---@param p1 Player
---@param enable boolean
function World_EnableSharedLineOfSight(p0, p1, enable) end

--- Wins/loses a single team mission for the local teams
---@param win boolean
function World_EndSP(win) end

--- Returns the closest object from the table of marker/pos/egroup/sgroup to the closest marker/pos/egroup/sgroup specified
---@param var any
---@param items table
---@return any
function World_GetClosest(var, items) end

--- Returns the current interaction stage (areas painted at this number or lower are currently interactable)
---@return integer
function World_GetCurrentInteractionStage() end

--- Find and add entities near the marker to the egroup
---@param player Player
---@param egroup EGroup
---@param marker ScarMarker
---@param ownerType OwnerType
---@return integer
function World_GetEntitiesNearMarker(player, egroup, marker, ownerType) end

--- Find and add entities near the point to the egroup
---@param player Player
---@param egroup EGroup
---@param pos ScarPosition
---@param radius number
---@param ownerType OwnerType
---@return integer
function World_GetEntitiesNearPoint(player, egroup, pos, radius, ownerType) end

--- Find and add entities within the territory sector to the egroup
---@param player Player
---@param egroup EGroup
---@param sectorID integer
---@param ownerType OwnerType
---@return integer
function World_GetEntitiesWithinTerritorySector(player, egroup, sectorID, ownerType) end

--- Returns the UniqueID at given index, use with World_GetNumEntities() to iterate through all the entities in the world
---@param index integer
---@return Entity
function World_GetEntity(index) end

--- Returns the furthest object from the table of marker/pos/egroup/sgroup to the furthest marker/pos/egroup/sgroup specified.
---@param var any
---@param items table
---@return any
function World_GetFurthest(var, items) end

--- Return the total game time in seconds.
---@return number
function World_GetGameTime() end

--- returns the height of ground at 2D pos x,y
---@param x number
---@param y number
---@return number
function World_GetHeightAt(x, y) end

--- Find a position on a path hidden from view, as close to the destination as possible whilst still satisfying your hidden checktype. Checktype can be either CHECK_IN_FOW, CHECK_OFFCAMERA or CHECK_BOTH.
---@param player Player
---@param origin Marker|ScarPosition
---@param destination Marker|ScarPosition
---@param checktype integer
---@return ScarPosition
function World_GetHiddenPositionOnPath(player, origin, destination, checktype) end

--- Returns the total playable length of the game world (z coordinate)
---@return number
function World_GetLength() end

--- returns the nearest intractable position to the supplied position
---@param position ScarPosition
---@return ScarPosition
function World_GetNearestInteractablePoint(position) end

--- Find and add neutral entities near the marker to the egroup
---@param egroup EGroup
---@param marker ScarMarker
---@return integer
function World_GetNeutralEntitiesNearMarker(egroup, marker) end

--- Find and add neutral entities near the point to the egroup
---@param egroup EGroup
---@param pos ScarPosition
---@param radius number
---@return integer
function World_GetNeutralEntitiesNearPoint(egroup, pos, radius) end

--- Find and add neutral entities within the territory sector to the egroup
---@param egroup EGroup
---@param sectorID integer
---@return integer
function World_GetNeutralEntitiesWithinTerritorySector(egroup, sectorID) end

--- Returns the number of spawned entities in the entire world (use sparingly and never at runtime)
---@return integer
function World_GetNumEntities() end

--- Return the number of entities of the same ebp in the sphere volume
---@param ebp ScarEntityPBG
---@param pos ScarPosition
---@param radius number
---@return integer
function World_GetNumEntitiesNearPoint(ebp, pos, radius) end

--- Returns the number of strategic points on this map (does not count strat. objectives)
---@return integer
function World_GetNumStrategicPoints() end

--- Returns the number of strategic objectives on this map
---@return integer
function World_GetNumVictoryPoints() end

--- Returns a position that is offset a certain distance from the position/heading passed in. see LuaConsts.scar for explanation of 'offset' parameter.
---@param position ScarPosition
---@param heading ScarPosition
---@param offset integer
---@param distance number
---@return ScarPosition
function World_GetOffsetPosition(position, heading, offset, distance) end

--- - Returns the player at a given index, numbers start at one
---@param index integer
---@return Player
function World_GetPlayerAt(index) end

--- Return the total number of players in the world
---@return integer
function World_GetPlayerCount() end

--- - Returns the player index given the Player*
---@param player Player
---@return integer
function World_GetPlayerIndex(player) end

--- Returns the blueprint of a chosen squad for a race
---@param race_index integer
---@param squad_index integer
---@return ScarSquadPBG
function World_GetPossibleSquadsBlueprint(race_index, squad_index) end

--- Returns the number of types of squads a race can build
---@param race_index integer
---@return integer
function World_GetPossibleSquadsCount(race_index) end

--- Returns the race index of a race, given its name (from the ME).
---@param racename string
---@return ScarRacePBG
function World_GetRaceBlueprint(racename) end

--- Returns the race index of a race, given its name (from the ME).
---@param racename string
---@return integer
function World_GetRaceIndex(racename) end

--- Returns a random integer with range [min, max]
---@param min integer
---@param max integer
---@return integer
function World_GetRand(min, max) end

--- Given any position in the world, this function will return position safe for spawning a given entity
---@param around ScarPosition
---@param entity Entity
---@return ScarPosition
function World_GetSpawnablePosition(around, entity) end

--- Find and add squads near the marker to the sgroup
---@param player Player
---@param sgroup SGroup
---@param marker ScarMarker
---@param ownerType OwnerType
---@return integer
function World_GetSquadsNearMarker(player, sgroup, marker, ownerType) end

--- Find and add squads near the point to the sgroup
---@param player Player
---@param sgroup SGroup
---@param pos ScarPosition
---@param radius number
---@param ownerType OwnerType
---@return integer
function World_GetSquadsNearPoint(player, sgroup, pos, radius, ownerType) end

--- Find and add squads within territory sector identified by sector ID
---@param player Player
---@param sgroup SGroup
---@param sectorID integer
---@param ownerType OwnerType
---@return integer
function World_GetSquadsWithinTerritorySector(player, sgroup, sectorID, ownerType) end

--- Appends all the strategic resource points to an egroup.
---@param group EGroup
---@param bIncludeVP boolean
function World_GetStrategyPoints(group, bIncludeVP) end

--- Returns one or more sector IDs that would connect two unconnected pieces of territory. return value is through a table (since there can be more than one way to connect territory) - each entry in this table is a table of sector IDs.
---@param sectorid1 integer
---@param sectorid2 integer
---@param results table
---@return boolean
function World_GetTeamTerritoryGaps(sectorid1, sectorid2, results) end

--- Returns the number of tickets that this team has
---@param teamID integer
---@return integer
function World_GetTeamVictoryTicker(teamID) end

--- Return the sector ID from the position
---@param pos ScarPosition
---@return integer
function World_GetTerritorySectorID(pos) end

--- Returns the position of a sector based on the capture entity (ex: the fuel point's position)
---@param sectorID integer
---@return ScarPosition
function World_GetTerritorySectorPosition(sectorID) end

--- Returns the total playable width of the game world (x coordinate)
---@return number
function World_GetWidth() end

--- Increases current interaction stage by 1
function World_IncreaseInteractionStage() end

--- - to document
---@return boolean
function World_IsGameOver() end

--- Returns true if position is in-supply for the given player
---@param player Player
---@param pos ScarPosition
---@return boolean
function World_IsInSupply(player, pos) end

--- Returns true if position if part of the entity territory
---@param player Player
---@param position ScarPosition
---@return boolean
function World_IsPointInPlayerTerritory(player, position) end

--- Returns TRUE if the game is currently in a replay state.
---@return boolean
function World_IsReplay() end

--- Find if player has ownership to this territory sector.
---@param player Player
---@param sectorID integer
---@return boolean
function World_IsTerritorySectorOwnedByPlayer(player, sectorID) end

--- Returns whether the current map is set in winter. Checks if 'g_isWinterMap' is set to true.
---@return boolean
function World_IsWinterMap() end

--- Kills ALL world entities near a marker
---@param marker Marker
function World_KillAllNeutralEntitesNearMarker(marker) end

