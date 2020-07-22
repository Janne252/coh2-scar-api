--- Remove an active event rule for squads in the 'sgroup'
---@param rule function
---@param sgroup SGroup
function Rule_RemoveSGroupEvent(rule, sgroup) end

--- Remove an active event rule for the 'squad'
---@param rule function
---@param squad Squad
function Rule_RemoveSquadEvent(rule, squad) end

--- Returns true if a squad blueprint exists with the given name.
---@param pbgShortname string
---@return boolean
function SBP_Exists(pbgShortname) end

--- Register an init function with the scar system.
---@param f function
function Scar_AddInit(f) end

--- Saves the game. the savegame name is built using the abbreviated mission name + checkpoint.
function Scar_Autosave() end

--- Complete a intel bulletin task of campaign type
---@param pCompleter Player
---@param taskId string
function Scar_CompleteIntelBulletinTask(pCompleter, taskId) end

--- execute console command string. Will only work if dev mode is enabled! (it's OFF by default in RTM builds)
---@param command string
function Scar_DebugConsoleExecute(command) end

--- Evaluates a SCAR string, e.g. Scar_DoString("Util_StartNIS(...)")
---@param string string
function Scar_DoString(string) end

--- Returns true if an init function exists.
---@param f function
---@return boolean
function Scar_InitExists(f) end

--- Play NIS through SCAR. Should only be used inside a event function
---@param filename string
function Scar_PlayNIS(filename) end

--- Play 2 NISs through SCAR. Should only be used inside a event function
---@param filename1 string
---@param filename2 string
function Scar_PlayNIS2(filename1, filename2) end

--- Reloads AI Scripts
function Scar_ReloadAIScripts() end

--- Unregister an init function that was registered from Scar_AddInit.
---@param f function
function Scar_RemoveInit(f) end

--- Get the victory point ticker option selected
---@return number
function Setup_GetVictoryPointTickerOption() end

--- Initializes the all of the players settings in one function and returns the playerID.
---@param playerIndex integer
---@param playerName LocString
---@param playerRace string
---@param team integer
---@return Player
function Setup_Player(playerIndex, playerName, playerRace, team) end

--- Set the UI name of a given player.
---@param player Player
---@param name LocString
function Setup_SetPlayerName(player, name) end

--- Set the race for a given player.  Use World_GetRaceIndex() to get the race id from the ME name.
---@param player Player
---@param raceIndex integer
function Setup_SetPlayerRace(player, raceIndex) end

--- Put a player in a team. Use TEAM_NEUTRAL as the team_id to set the player as neutral
---@param p Player
---@param team_id integer
function Setup_SetPlayerTeam(p, team_id) end

--- Adds an squadron to the end of a group if the group doesnt already have it.
---@param group SGroup
---@param squadron Squad
function SGroup_Add(group, squadron) end

--- Adds an ability to all squads in an sgroup.
---@param sgroup SGroup
---@param ability AbilityBlueprint
function SGroup_AddAbility(sgroup, ability) end

--- Same as EGroup_AddGroup.  Note: You cannot mix squad groups and entity groups.
---@param group SGroup
---@param grouptoadd SGroup
function SGroup_AddGroup(group, grouptoadd) end

--- Add a list of multiple sgroups into an existing group.
---@param sgroup SGroup
---@param groupList table
function SGroup_AddGroups(sgroup, groupList) end

--- Adds a leader to all squads in a group that can take a leader.
---@param sgroup SGroup
function SGroup_AddLeaders(sgroup) end

--- Add to the list of slot items to drop when any one of the squads is wiped out
---@param groupid SGroup
---@param itemid integer
---@param drop_chance number
---@param exclusive boolean
function SGroup_AddSlotItemToDropOnDeath(groupid, itemid, drop_chance, exclusive) end

--- Calls an Entity_ function on every entity in an sgroup
---@param sgroup SGroup
---@param entityFunction function
function SGroup_CallEntityFunction(sgroup, entityFunction) end

--- Calls a Squad_ function on every squad in an sgroup
---@param sgroup SGroup
---@param squadFunction function
---@param list any
function SGroup_CallSquadFunction(sgroup, squadFunction, list) end

--- Returns whether ALL or ANY squads in an sgroup satisfy a condition, using a Squad_ function to perform the query on each squad
---@param sgroup SGroup
---@param all boolean
---@param squadFunction function
---@param list any
function SGroup_CallSquadFunctionAllOrAny(sgroup, all, squadFunction, list) end

--- Test whether ANY or ALL of a group can be ordered to do this ability on the target squad
---@param caster SGroup
---@param ability AbilityBlueprint
---@param target_entity Entity
---@param all boolean
function SGroup_CanCastAbilityOnEntity(caster, ability, target_entity, all) end

--- Test whether ANY or ALL of a group can be ordered to do this ability on the target position
---@param caster SGroup
---@param ability AbilityBlueprint
---@param position ScarPosition
---@param all boolean
function SGroup_CanCastAbilityOnPosition(caster, ability, position, all) end

--- Test whether ANY or ALL of a group can be ordered to do this ability on the target entity
---@param caster SGroup
---@param ability AbilityBlueprint
---@param target_squad Squad
---@param all boolean
function SGroup_CanCastAbilityOnSquad(caster, ability, target_squad, all) end

--- Return true if ANY or ALL of a group can reinforce now
---@param group SGroup
---@param all boolean
---@return boolean
function SGroup_CanInstantReinforceNow(group, all) end

--- Returns true if ALL or ANY squads in a group can see ALL or ANY squads in a target sgroup.
---@param sgroup SGroup
---@param targetsgroup SGroup
---@param all boolean
---@return boolean
function SGroup_CanSeeSGroup(sgroup, targetsgroup, all) end

--- Removes all entities from a group.
---@param sgroup SGroup
function SGroup_Clear(sgroup) end

--- Clears any previous posture suggestions made to a squad
---@param sgroup SGroup
function SGroup_ClearPostureSuggestion(sgroup) end

--- Returns true if the contents of the two groups are equal. Order of the entities does not matter.
---@param group1 SGroup
---@param group2 SGroup
---@return boolean
function SGroup_Compare(group1, group2) end

--- Applies an upgrade to all squad entities in an sgroup.
---@param sgroup SGroup
---@param upgrade UpgradeID
function SGroup_CompleteEntityUpgrade(sgroup, upgrade) end

--- Check if a group contains ALL or ANY of the blueprints.
---@param sgroup SGroup
---@param blueprints Blueprint|table
---@param all boolean
---@return boolean
function SGroup_ContainsBlueprints(sgroup, blueprints, all) end

--- Returns true if SGroup1 contains ANY or ALL of SGroup2
---@param group1 SGroup
---@param group2 SGroup
---@param all boolean
---@return boolean
function SGroup_ContainsSGroup(group1, group2, all) end

--- Returns true if SGroup contains a particular SquadID
---@param group SGroup
---@param SquadID integer
---@return boolean
function SGroup_ContainsSquad(group, SquadID) end

--- Returns the total number of spawned and despawned squads in a group.
---@param sgroup SGroup
---@return integer
function SGroup_Count(sgroup) end

--- Returns the number of despawned squads in a group.
---@param sgroup SGroup
---@return integer
function SGroup_CountDeSpawned(sgroup) end

--- Returns the number of spawned squads in a group.
---@param sgroup SGroup
---@return integer
function SGroup_CountSpawned(sgroup) end

--- Returns a new squadron group with the given name.
---@param name string
---@return SGroup
function SGroup_Create(name) end

--- Find a squad group from name.  Creates a new one with given name if it doesnt exist.
---@param name string
---@return SGroup
function SGroup_CreateIfNotFound(name) end

--- Create and display kicker message on the each squad in the sgroup to the player
---@param group SGroup
---@param player Player
---@param textid LocString
function SGroup_CreateKickerMessage(group, player, textid) end

--- Returns a table of sgroups NOT in the world builder
---@param format string
---@param size integer
---@return table
function SGroup_CreateTable(format, size) end

--- Despawn all spawned squads in a group.
---@param groupid SGroup
function SGroup_DeSpawn(groupid) end

--- Manually destroy a group that you dont need anymore.
---@param egroup SGroup
function SGroup_Destroy(egroup) end

--- Destroys all items in a group that are in proximity to a given marker.
---@param sgroup SGroup
---@param marker Marker
function SGroup_DestroyAllInMarker(sgroup, marker) end

--- Destroys all spawned and despawned squads in a group.
---@param sgroup SGroup
function SGroup_DestroyAllSquads(sgroup) end

--- Disables all current combat plans for the squads in the sgroup
---@param groupID SGroup
function SGroup_DisableCombatPlans(groupID) end

--- Duplicates an SGroup
---@param sgroup1 SGroup
---@param sgroup2 SGroup
function SGroup_Duplicate(sgroup1, sgroup2) end

--- Sets whether an entity pays attention to its surroundings
---@param sgroup SGroup
---@param attentive boolean
function SGroup_EnableAttention(sgroup, attentive) end

--- Enable or disable minimap indicator on all squads in the sgroup
---@param group SGroup
---@param enable boolean
function SGroup_EnableMinimapIndicator(group, enable) end

--- Enables or disables the surprise feature for an sgroup
---@param groupid SGroup
---@param enable boolean
function SGroup_EnableSurprise(groupid, enable) end

--- Enable or disable decorators on all squads in the sgroup
---@param group SGroup
---@param enable boolean
function SGroup_EnableUIDecorator(group, enable) end

--- Returns true if the squad group with the given name exists
---@param name string
---@return boolean
function SGroup_Exists(name) end

--- Makes two SGroups face each other
---@param sgroup1 SGroup
---@param sgroup2 SGroup
function SGroup_FaceEachOther(sgroup1, sgroup2) end

--- Makes a SGroup face a marker.
---@param sgroup SGroup
---@param marker Marker
function SGroup_FaceMarker(sgroup, marker) end

--- Works like Squad_FacePosition.  All Squads will face the same direction, with the squad the closest to the center determining the direction.
---@param sgroup SGroup
---@param pos ScarPosition
function SGroup_FacePosition(sgroup, pos) end

--- Filters an SGroup by blueprint.
---@param sgroup SGroup
---@param blueprint ID|table
---@param unknown integer|filtertype
---@param splitSGroup SGroup
---@overload fun(sgroup: SGroup, blueprint: ID|table)
---@overload fun(sgroup: SGroup, blueprint: ID|table, unknown: integer|filtertype)
function SGroup_Filter(sgroup, blueprint, unknown, splitSGroup) end

--- Pass in a group and it will filter it down to the indicated number
---@param sgroup1 SGroup
---@param groupSize integer
function SGroup_FilterCount(sgroup1, groupSize) end

--- Searches an SGroup and finds the first threat within the table (searching first to last) and removes all other SBPs.
---@param sgroup SGroup
---@param tableSBPs table
---@param bEmpty boolean
---@overload fun(sgroup: SGroup, tableSBPs: table)
function SGroup_FilterThreat(sgroup, tableSBPs, bEmpty) end

--- Call a lua function for each item in a group. Function will recieve (groupid, itemindex, itemid) and should return true to break or false to continue.
---@param sgroup SGroup
---@param f function
---@return boolean
function SGroup_ForEach(sgroup, f) end

--- Call a lua function for each item in a group. Function will receive (groupid, itemindex, itemid) and should return a bool.
---@param sgroup SGroup
---@param all boolean
---@param f function
---@return boolean
function SGroup_ForEachAllOrAny(sgroup, all, f) end

--- Same as SGroup_ForEachAllOrAny except you have a choice to iterate over spawned squads, despawned squads, or both.
---@param sgroup SGroup
---@param all boolean
---@param f function
---@param spawned boolean
---@param despawned boolean
---@return boolean
function SGroup_ForEachAllOrAnyEx(sgroup, all, f, spawned, despawned) end

--- Same as SGroup_ForEach except you have a choice to iterate over spawned squads, despawned squads, or both.
---@param sgroup SGroup
---@param f function
---@param spawned boolean
---@param despawned boolean
---@return boolean
function SGroup_ForEachEx(sgroup, f, spawned, despawned) end

--- Find an squadron group with a given name.
---@param name string
---@return SGroup
function SGroup_FromName(name) end

--- Returns the average health of all units in a squad group.
---@param sgroup SGroup
---@return number
function SGroup_GetAvgHealth(sgroup) end

--- Returns the average loadout of all squads in a group as a percent [0.0, 1.0].
---@param sgroup SGroup
---@return number
function SGroup_GetAvgLoadout(sgroup) end

--- Returns the despawned squad at a certain position in the group.
---@param group SGroup
---@param index integer
---@return Squad
function SGroup_GetDeSpawnedSquadAt(group, index) end

--- Get the entity id of the building that any squad of the sgroup is garrisoned in
---@param groupid SGroup
---@return Entity
function SGroup_GetGarrisonedBuildingEntity(groupid) end

--- Gets all the entities that an SGroup may occupy and adds them to the EGroupHold
---@param sgroup SGroup
---@param EGroupHold EGroup
function SGroup_GetHoldEGroup(sgroup, EGroupHold) end

--- Gets all the squads that an SGroup may occupy and adds them to the SGroupHold
---@param sgroup SGroup
---@param SGroupHold SGroup
function SGroup_GetHoldSGroup(sgroup, SGroupHold) end

--- Check invulnerablity state for ALL or ANY squads in a squad group.
---@param sgroup SGroup
---@param all boolean
---@return boolean
function SGroup_GetInvulnerable(sgroup, all) end

--- Gets the last attacker(s) for all the squads in an SGroup Gets the last attacker for all the squads in an SGroup and stores that in SGroupAttacker
---@param SGroupVictim SGroup
---@param SGroupAttacker SGroup
---@param seconds number
---@overload fun(SGroupVictim: SGroup, SGroupAttacker: SGroup)
function SGroup_GetLastAttacker(SGroupVictim, SGroupAttacker, seconds) end

--- Get the squad id of the vehicle squad that any squad of the sgroup is loaded in
---@param groupid SGroup
---@return Squad
function SGroup_GetLoadedVehicleSquad(groupid) end

--- Returns the name of a given squad group.
---@param sgroup SGroup
---@return string
function SGroup_GetName(sgroup) end

--- Get the number of slot items with the same ID that the squads in the sgroup own
---@param group SGroup
---@param itemID integer
---@return integer
function SGroup_GetNumSlotItem(group, itemID) end

--- Returns a position (a certain distance away) relative to a squad's current position/orientation. see LuaConsts.scar for explanation of 'offset' parameter
---@param sgroup SGroup
---@param offset integer
---@param value number
---@return ScarPosition
function SGroup_GetOffsetPosition(sgroup, offset, value) end

--- Returns the center position of a squad group.
---@param group SGroup
---@return ScarPosition
function SGroup_GetPosition(group) end

--- Get a random spawned squad from sgroup
---@param sgroupid SGroup
---@return Squad
function SGroup_GetRandomSpawnedSquad(sgroupid) end

--- Builds a table of SGroupIDs that are named in a sequence. i.e. a name of "sg_killer" will find groups "sg_killer1", "sg_killer2" and so on, up until it looks for a group that isn't there.
---@param name string
---@return table
function SGroup_GetSequence(name) end

--- Returns the spawned squad at a certain position in the group.
---@param group SGroup
---@param index integer
---@return Squad
function SGroup_GetSpawnedSquadAt(group, index) end

--- Returns the distance from the centre of the group of the unit that furthest out.
---@param sgroup SGroup
---@return number
function SGroup_GetSpread(sgroup) end

--- Returns an sgroup containing all squads held by any squad in an sgroup
---@param sgroup SGroup
---@param sgroupRecipient SGroup
function SGroup_GetSquadsHeld(sgroup, sgroupRecipient) end

--- Get the suppression level for the first squad in the sgroup
---@param groupid SGroup
---@return number
function SGroup_GetSuppression(groupid) end

--- Returns a table of sgroups from the world builder
---@param format string
---@return table
function SGroup_GetWBTable(format) end

--- Get the veterancy experience value for the first squad in the sgroup
---@param groupid SGroup
---@return number
function SGroup_GetVeterancyExperience(groupid) end

--- Get the veterancy rank for the first squad in the sgroup
---@param groupid SGroup
---@return integer
function SGroup_GetVeterancyRank(groupid) end

--- Returns true if ANY or ALL of the squads in the SGroup have the specified critical
---@param group SGroup
---@param critical CriticalID
---@param all boolean
---@return boolean
function SGroup_HasCritical(group, critical, all) end

--- Returns true if ANY or ALL of the squad's entities have the specified upgrade
---@param egroup EGroup
---@param upgrade UpgradeID
---@param all boolean
---@return boolean
function SGroup_HasEntityUpgrade(egroup, upgrade, all) end

--- Check if ALL or ANY squads in a sgroup have a leader
---@param sgroup SGroup
---@param all boolean
---@return boolean
function SGroup_HasLeader(sgroup, all) end

--- Check if ALL or ANY of the squads in a group have a specific blueprint.
---@param sgroup SGroup
---@param blueprint Blueprint
---@param all boolean
---@return boolean
function SGroup_HasSquadBlueprint(sgroup, blueprint, all) end

--- Returns true if ANY or ALL of the squads in an SGroup are carrying some kind of team weapon
---@param sgroup SGroup
---@param all boolean
---@return boolean
function SGroup_HasTeamWeapon(sgroup, all) end

--- Returns whether ANY or ALL squads in an SGroup have the specified upgrade
---@param sgroup SGroup
---@param upgrade UpgradeID
---@param all boolean
---@return boolean
function SGroup_HasUpgrade(sgroup, upgrade, all) end

--- Hide or show all entities in all squads in an SGroup
---@param sgroup SGroup
---@param hide boolean
function SGroup_Hide(sgroup, hide) end

--- Increase squad veterancy experience for all squads in the sgroup. Can do silent promotion (no sound/UI). Can skip modifiers, giving you direct control of experience gained.
---@param groupid SGroup
---@param experience number
---@param silent boolean
---@param applyModifiers boolean
---@overload fun(groupid: SGroup, experience: number)
---@overload fun(groupid: SGroup, experience: number, silent: boolean)
function SGroup_IncreaseVeterancyExperience(groupid, experience, silent, applyModifiers) end

--- Increase squad veterancy rank for all squads in the sgroup. By default, increases rank by 1. Can do silent promotion (no sound/UI. ex: mass rank insrease at mission start)
---@param groupid SGroup
---@param numranks integer
---@param silent boolean
---@overload fun(groupid: SGroup)
---@overload fun(groupid: SGroup, numranks: integer)
function SGroup_IncreaseVeterancyRank(groupid, numranks, silent) end

--- Same as EGroup_Intersection. Note: You cannot mix squad groups and entity groups.
---@param group SGroup
---@param grouptointersect SGroup
function SGroup_Intersection(group, grouptointersect) end

--- Returns true if a named squad group is not empty and its average health is > 0.0
---@param sgroup SGroup
---@return boolean
function SGroup_IsAlive(sgroup) end

--- Returns true if ANY or ALL squads in an SGroup are attack moving.
---@param sgroup SGroup
---@param all boolean
---@return boolean
function SGroup_IsAttackMoving(sgroup, all) end

--- Returns true if ANY or ALL of the squads in an SGroup are camouflaged
---@param sgroup SGroup
---@param all boolean
---@return boolean
function SGroup_IsCamouflaged(sgroup, all) end

--- Checks if ANY or ALL squads in an SGroup are capturing
---@param sgroup SGroup
---@param ALL boolean
---@return boolean
function SGroup_IsCapturing(sgroup, ALL) end

--- Returns true if ALL or ANY squads in a group are currently constructing a building.
---@param sgroup SGroup
---@param all boolean
---@return boolean
function SGroup_IsConstructingBuilding(sgroup, all) end

--- Returns if ANY or ALL members of an SGroup are doing an ability
---@param sgroupid SGroup
---@param ability AbilityBlueprint
---@param all boolean
---@return boolean
function SGroup_IsDoingAbility(sgroupid, ability, all) end

--- Returns true if ALL or ANY squads are attacking within the time.
---@param sgroup SGroup
---@param all boolean
---@param time number
---@return boolean
function SGroup_IsDoingAttack(sgroup, all, time) end

--- Returns true if ANY or ALL of the squads in the SGroup is dug in (or in the process of digging in)
---@param group SGroup
---@param all boolean
---@return boolean
function SGroup_IsDugIn(group, all) end

--- Returns true if a named squad group is empty
---@param sgroup SGroup
---@return boolean
function SGroup_IsEmpty(sgroup) end

--- Returns true if ANY or ALL squads are female
---@param sgroup SGroup
---@param all boolean
---@return boolean
function SGroup_IsFemale(sgroup, all) end

--- Returns whether any entity in an SGroup has a hold on anything
---@param sgroup SGroup
function SGroup_IsHoldingAny(sgroup) end

--- Checks if ANY or ALL squads in an SGroup are idle
---@param sgroup SGroup
---@param ALL boolean
---@return boolean
function SGroup_IsIdle(sgroup, ALL) end

--- Returns the percentage of the SGroup members that are in cover. Alternatively, specify ANY or ALL as a second parameter to return true/false.
---@param sgroup SGroup
---@param all boolean
---@return number|boolean
---@overload fun(sgroup: SGroup)
function SGroup_IsInCover(sgroup, all) end

--- Returns true if ALL or ANY squads in a group are infiltrated
---@param sgroup SGroup
---@param all boolean
---@return boolean
function SGroup_IsInfiltrated(sgroup, all) end

--- Checks if ANY or ALL squads in an SGroup are garrisoned in an entity (building)
---@param sgroup SGroup
---@param ALL boolean
---@return boolean
function SGroup_IsInHoldEntity(sgroup, ALL) end

--- Checks if ANY or ALL squads in an SGroup are garrisoned in a squad (transport vehicle)
---@param sgroup SGroup
---@param ALL boolean
---@return boolean
function SGroup_IsInHoldSquad(sgroup, ALL) end

--- Returns true if ANY or ALL squads in an SGroup are moving.
---@param sgroup SGroup
---@param all boolean
---@return boolean
function SGroup_IsMoving(sgroup, all) end

--- Returns true if ANY or ALL (use those keywords) of the squads in the group are present onscreen. You can pass in a percentage of the screen to check, so 0.8 would be a centered rectangle occupying 80% of the screen.
---@param player Player
---@param group SGroup
---@param all boolean
---@param percent number
---@return boolean
---@overload fun(player: Player, group: SGroup, all: boolean)
function SGroup_IsOnScreen(player, group, all, percent) end

--- Returns true if ANY or ALL of a group is pinned
---@param group SGroup
---@param all boolean
---@return boolean
function SGroup_IsPinned(group, all) end

--- Returns true if ALL or ANY squads in a group are currently calling for reinforcments.
---@param sgroup SGroup
---@param all boolean
---@return boolean
function SGroup_IsReinforcing(sgroup, all) end

--- Returns true if ANY or ALL of the squads in an SGroup are currently retreating
---@param sgroup SGroup
---@param all boolean
---@return boolean
function SGroup_IsRetreating(sgroup, all) end

--- Returns true if ANY or ALL squads are setting demolitions
---@param sgroup SGroup
---@param all boolean
---@return boolean
function SGroup_IsSettingDemolitions(sgroup, all) end

--- Returns true is ANY or ALL of a group is suppressed
---@param group SGroup
---@param all boolean
---@return boolean
function SGroup_IsSuppressed(group, all) end

--- Returns true if ALL or ANY squads are under attack within the time.
---@param sgroup SGroup
---@param all boolean
---@param time number
---@return boolean
function SGroup_IsUnderAttack(sgroup, all, time) end

--- Check if the squads are attacked by the player
---@param group SGroup
---@param attackerplayer Player
---@param duration number
---@return boolean
function SGroup_IsUnderAttackByPlayer(group, attackerplayer, duration) end

--- Returns true if ALL or ANY squads are under attack from a direction within the time. see LuaConsts.scar for types of directions. you can pass in a table of directions
---@param sgroup SGroup
---@param all boolean
---@param offset integer
---@param time number
---@return boolean
function SGroup_IsUnderAttackFromDirection(sgroup, all, offset, time) end

--- Returns true if ALL or ANY squads in a group are currently upgrading. You can pass in nil for upgradeid if it doesn't matter what is being upgraded.
---@param sgroup SGroup
---@param blueprint UpgradeBlueprint
---@param all boolean
---@return boolean
function SGroup_IsUpgrading(sgroup, blueprint, all) end

--- Checks if ANY or ALL squads in an SGroup are using an ability
---@param sgroup SGroup
---@param ALL boolean
---@return boolean
function SGroup_IsUsingAbility(sgroup, ALL) end

--- Kills all squads in an SGroup. This kills them 'naturally', as opposed to SGroup_DestroyAllSquads() which makes them blink out of existance.
---@param sgroup SGroup
function SGroup_Kill(sgroup) end

--- Removes an squadron from a group.
---@param group SGroup
---@param squadron Squad
function SGroup_Remove(group, squadron) end

--- Remove from the first SGroup all squads contained in the second SGroup. SGroup2 remains untouched.
---@param group SGroup
---@param grouptoremove SGroup
function SGroup_RemoveGroup(group, grouptoremove) end

--- Removes upgrade(s) from an sgroup
---@param sgroup SGroup
---@param upgrade UpgradeBlueprint|table
function SGroup_RemoveUpgrade(sgroup, upgrade) end

--- Respawn all despawned squads in a group.
---@param groupid SGroup
function SGroup_ReSpawn(groupid) end

--- Restore all current combat plans for the squads in the sgroup
---@param sgroupID SGroup
function SGroup_RestoreCombatPlans(sgroupID) end

--- Give action points to the squad
---@param sgroup SGroup
---@param actionpoint number
function SGroup_RewardActionPoints(sgroup, actionpoint) end

--- Set animation state of a state machine for an SGroup. Please only use this for simple animations
---@param sgroupid SGroup
---@param stateMachineName string
---@param stateName string
function SGroup_SetAnimatorState(sgroupid, stateMachineName, stateName) end

--- Sets whether a weapon to auto-target things or not
---@param group SGroup
---@param hardpoint string
---@param enable boolean
function SGroup_SetAutoTargetting(group, hardpoint, enable) end

--- Sets the health of each squad in a squad group to a given percent [0.0, 1.0].
---@param sgroup SGroup
---@param healthpercent number
---@return number
function SGroup_SetAvgHealth(sgroup, healthpercent) end

--- Sets the moral of each squad in a squad group to a given percent [0.0, 1.0].
---@param sgroup SGroup
---@param moralepercent number
---@return number
function SGroup_SetAvgMorale(sgroup, moralepercent) end

--- Overrides crushable behavior for an sgroup
---@param sgroup SGroup
---@param crushable boolean
function SGroup_SetCrushable(sgroup, crushable) end

--- Enable/Disable invulnerablity for an entire SGroup. Use true and false for simple on/off, or use a number between 0.0 and 1.0 for more precise control on how much damage a squad can take before it takes no more.
---@param sgroup SGroup
---@param enabled boolean|number
---@param reset_time number
---@overload fun(sgroup: SGroup, enabled: boolean|number)
function SGroup_SetInvulnerable(sgroup, enabled, reset_time) end

--- Enable/Disable invulnerablity to criticals for an entire SGroup.
---@param sgroup SGroup
---@param enabled boolean|number
function SGroup_SetInvulnerableToCritical(sgroup, enabled) end

--- Set soldier mood mode. Mode could be MM_Auto, MM_ForceCalm or MM_ForceTense
---@param group SGroup
---@param mode integer
function SGroup_SetMoodMode(group, mode) end

--- Set the move type for an SGroup - find the move types in the MOVETYPE table in LuaConsts.scar
---@param group SGroup
---@param movetype MoveTypeBlueprint
function SGroup_SetMoveType(group, movetype) end

--- Changes the player owner of spawned and despawned squads in an SGroup.
---@param sgroup SGroup
---@param owner Player
function SGroup_SetPlayerOwner(sgroup, owner) end

--- Sets all squads in as sgroup to be recrewable or not when abandoned
---@param sgroup SGroup
---@param recrewable boolean
function SGroup_SetRecrewable(sgroup, recrewable) end

--- Set player selectable state of squads in the sgroup
---@param sgroupid SGroup
---@param selectable boolean
function SGroup_SetSelectable(sgroupid, selectable) end

--- Enables shared team production on a building (teammates can build using THEIR resources)
---@param egroup SGroup
---@param enable boolean
function SGroup_SetSharedProductionQueue(egroup, enable) end

--- Set the suppression level for all squads in the sgroup
---@param groupid SGroup
---@param suppression number
function SGroup_SetSuppression(groupid, suppression) end

--- Set team weapon in the squads to be capturable or not
---@param group SGroup
---@param enable boolean
function SGroup_SetTeamWeaponCapturable(group, enable) end

--- Sets the visibility of in-game veterancy art for the squads in given SGroup
---@param groupid SGroup
---@param visible boolean
function SGroup_SetVeterancyDisplayVisibility(groupid, visible) end

--- Makes an sgroup neutral
---@param sgroup SGroup
function SGroup_SetWorldOwned(sgroup) end

--- Creates a squad group containing a single squad
---@param groupID SGroup
---@param squad Squad
---@return SGroup
function SGroup_Single(groupID, squad) end

--- Makes two SGroups face each other at no time
---@param sgroup1 SGroup
---@param sgroup2 SGroup
function SGroup_SnapFaceEachOther(sgroup1, sgroup2) end

--- Works like SGroup_FacePosition except with no interpolation.  All Squads will face the same direction, with the squad the closest to the center determining the direction.
---@param sgroup SGroup
---@param pos ScarPosition
function SGroup_SnapFacePosition(sgroup, pos) end

--- Suggests a posture to an SGroup, lasting the passed duration
---@param sgroup SGroup
---@param posture integer
---@param duration number
function SGroup_SuggestPosture(sgroup, posture, duration) end

--- Returns the total count of all members of all the squads in a given SGroup.
---@param sgroup SGroup
---@param dontCountTeamWeapons boolean
---@return integer
function SGroup_TotalMembersCount(sgroup, dontCountTeamWeapons) end

--- Warps all members of an SGroup immediately to a marker
---@param sgroup SGroup
---@param marker Marker
function SGroup_WarpToMarker(sgroup, marker) end

--- Warps all members of an SGroup immediately to a new position
---@param sgroup SGroup
---@param pos ScarPosition
function SGroup_WarpToPos(sgroup, pos) end

--- Forces a sync weapon to shoot at the sky, so long as it's manned by a given player.
---@param syncweapon SyncWeaponID
---@param player Player
function ShootTheSky_AddSyncWeapon(syncweapon, player) end

--- Stops all sync weapons from going through their "shooting at the sky" routine.
function ShootTheSky_RemoveAll() end

--- Removes a sync weapon from the "shoot at the sky" system. It can then target people again.
---@param syncweapon SyncWeaponID
function ShootTheSky_RemoveSyncWeapon(syncweapon) end

--- Play the specified movie.
---@param url string
function SitRep_PlayMovie(url) end

--- Deprecated.
---@param icon string
---@param loc LocString
---@param disableIconSubtitle boolean
---@param continueButton boolean
---@param blockInput boolean
---@param stickySubtitle boolean
---@param additionalPath string
---@return integer
function SitRep_PlaySpeech(icon, loc, disableIconSubtitle, continueButton, blockInput, stickySubtitle, additionalPath) end

--- Stop the currently playing movie.
function SitRep_StopMovie() end

--- Triggers smoke to come in from the map edge, at the position and direction of the given marker
---@param marker Marker
function SmokeEntrance_Do(marker) end

--- Turns container debugging on/off
function Sound_ContainerDebug() end

--- Disables certain speech events.
---@param event integer
function Sound_DisableSpeechEvent(event) end

--- Returns true if the sound associated with the handle is currently playing.
---@param handle integer
---@return boolean
function Sound_IsPlaying(handle) end

--- Starts multiple 2D instances of the same sound.
---@param name string
---@param instances integer
function Sound_PerfTest_Play2D(name, instances) end

--- Plays a 2D sound from the Data:Sound folder.  Use the path relative to Sound folder without the file extension. Returns handle to the sound container
---@param name string
---@return integer
function Sound_Play2D(name) end

--- Plays a 3D sound from the Data:Sound folder on the entity.  Use the path relative to Sound folder without the file extension. Returns handle to the sound container
---@param name string
---@param actor Entity
---@return integer
function Sound_Play3D(name, actor) end

--- Plays music from the Data:Sound folder.
---@param name string
---@param fade number
---@param delay number
function Sound_PlayMusic(name, fade, delay) end

--- Play sound on the first entity of the squad in sgroup
---@param soundpathname string
---@param sgroupid SGroup|Squad
---@return integer
function Sound_PlayOnSquad(soundpathname, sgroupid) end

--- Plays a streaming sound from the Data:Sound folder.  Use the path relative to Sound folder without the file extension. Returns handle to the sound container
---@param name string
---@return integer
function Sound_PlayStreamed(name) end

--- Pre-caches single player speech. For instance pre-caching mission 1 speech is done like: Sound_PreCacheSinglePlayerSpeech("mission01")
---@param mission string
function Sound_PreCacheSinglePlayerSpeech(mission) end

--- pre-caches a sound
---@param name string
function Sound_PreCacheSound(name) end

--- pre-caches a sound folder
---@param name string
function Sound_PreCacheSoundFolder(name) end

--- Sets the value for a global control source.
---@param name string
---@param value number
function Sound_SetGlobalControlSource(name, value) end

--- immCombatValue is the new music combat value.  Override time is in seconds.  You can call this function with 0 for both values in order to cancel the override.
---@param immCombatValue number
---@param overrideTime number
function Sound_SetMusicCombatValue(immCombatValue, overrideTime) end

--- Sets a new volume for the group.  Valid volume values are 0 to 1.
---@param name string
---@param volume number
---@param time number
function Sound_SetVolume(name, volume, time) end

--- Sets the default volume for the group.
---@param name string
---@param time number
function Sound_SetVolumeDefault(name, time) end

