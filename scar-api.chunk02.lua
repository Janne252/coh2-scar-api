--- Send a player command to a player with a custom flag
---@param player Player
---@param dest Player
---@param playerCommand Player
---@param cmdparam integer
---@param queued boolean
function Command_PlayerExt(player, dest, playerCommand, cmdparam, queued) end

--- Send a position command to a player.
---@param player Player
---@param dest Player
---@param playerCommand Player
---@param pos ScarPosition
function Command_PlayerPos(player, dest, playerCommand, pos) end

--- Send a positional ability command (PCMD_Ability) to a player
---@param player Player
---@param dest Player
---@param pos ScarPosition
---@param abilityPBG ScarAbilityPBG
---@param skipCostPrereq boolean
function Command_PlayerPosAbility(player, dest, pos, abilityPBG, skipCostPrereq) end

--- Send a positional/directional ability command (PCMD_Ability) to a player
---@param player Player
---@param dest Player
---@param pos ScarPosition
---@param dir ScarPosition
---@param abilityPBG ScarAbilityPBG
---@param skipCostPrereq boolean
function Command_PlayerPosDirAbility(player, dest, pos, dir, abilityPBG, skipCostPrereq) end

--- Send a position command to a player with extra info
---@param player Player
---@param dest Player
---@param playerCommand Player
---@param pos ScarPosition
---@param cmdparam integer
---@param queued boolean
function Command_PlayerPosExt(player, dest, playerCommand, pos, cmdparam, queued) end

--- Send a player command to itself to order squads in the sgroup to construct the building at specific position and facing
---@param player Player
---@param sgroup SGroup
---@param ebp ScarEntityPBG
---@param position ScarPosition
---@param facing ScarPosition
---@param queued boolean
function Command_PlayerSquadConstructBuilding(player, sgroup, ebp, position, facing, queued) end

--- Send a player command to itself to order squads in the sgroup to construct fences from posStart to posEnd
---@param player Player
---@param sgroup SGroup
---@param ebp ScarEntityPBG
---@param posStart ScarPosition
---@param posEnd ScarPosition
---@param queued boolean
function Command_PlayerSquadConstructFence(player, sgroup, ebp, posStart, posEnd, queued) end

--- Send a player command to itself to order squads in the sgroup to construct a field ranging from posStart to posEnd
---@param player Player
---@param sgroup SGroup
---@param ebp ScarEntityPBG
---@param posStart ScarPosition
---@param posEnd ScarPosition
---@param queued boolean
function Command_PlayerSquadConstructField(player, sgroup, ebp, posStart, posEnd, queued) end

--- Send a player command to itself to act upon all entities in the sgroup with custom parameter and index data (PCMD_CriticalHit)
---@param player Player
---@param sgroup SGroup
---@param playerCommand Player
---@param criticalPBG ScarCriticalPBG
---@param removeAtHealth number
---@param queued boolean
function Command_PlayerSquadCriticalHit(player, sgroup, playerCommand, criticalPBG, removeAtHealth, queued) end

--- Sends an upgrade command to a player
---@param player Player
---@param upgrade ScarUpgradePBG
---@param instant boolean
---@param queued boolean
function Command_PlayerUpgrade(player, upgrade, instant, queued) end

--- Send a squad command to a squad group
---@param player Player
---@param sgroup SGroup
---@param squadCommand Squad
---@param queued boolean
function Command_Squad(player, sgroup, squadCommand, queued) end

--- Send a ability command (SCMD_Ability) to a squad
---@param player Player
---@param sgroup SGroup
---@param abilityPBG ScarAbilityPBG
---@param skipCostPrereq boolean
---@param queued boolean
function Command_SquadAbility(player, sgroup, abilityPBG, skipCostPrereq, queued) end

--- Send a position ATTACK MOVE command to a squad group with custom data
---@param player Player
---@param sgroup SGroup
---@param squadCommand Squad
---@param target ScarPosition
---@param planName string
---@param queued boolean
function Command_SquadAttackMovePos(player, sgroup, squadCommand, target, planName, queued) end

--- Send a custom squad AI plan command to the squad to execute the plan specified towards the position
---@param player Player
---@param sgroup SGroup
---@param planFile string
---@param queued boolean
function Command_SquadDoCustomPlan(player, sgroup, planFile, queued) end

--- Send a custom squad AI plan command to the squad to execute the plan specified towards the position
---@param player Player
---@param sgroup SGroup
---@param pos ScarPosition
---@param planFile string
---@param queued boolean
function Command_SquadDoCustomPlanTarget(player, sgroup, pos, planFile, queued) end

--- Send an entity command to a squad group.
---@param player Player
---@param sgroup SGroup
---@param squadCommand Squad
---@param target EGroup
---@param queued boolean
function Command_SquadEntity(player, sgroup, squadCommand, target, queued) end

--- Send a entity ability command (SCMD_Ability) to a squad
---@param player Player
---@param sgroup SGroup
---@param target EGroup
---@param abilityPBG ScarAbilityPBG
---@param skipCostPrereq boolean
---@param queued boolean
function Command_SquadEntityAbility(player, sgroup, target, abilityPBG, skipCostPrereq, queued) end

--- Send an entity command ATTACK to a squad group.
---@param player Player
---@param sgroup SGroup
---@param target EGroup
---@param bCheckFOW boolean
---@param bStationary boolean
---@param planName string
---@param queued boolean
function Command_SquadEntityAttack(player, sgroup, target, bCheckFOW, bStationary, planName, queued) end

--- Send a entity command to a squad group with custom BOOLEAN data
---@param player Player
---@param sgroup SGroup
---@param squadCommand Squad
---@param target EGroup
---@param cmdparam boolean
---@param queued boolean
function Command_SquadEntityBool(player, sgroup, squadCommand, target, cmdparam, queued) end

--- Send a entity command to a squad group with custom data
---@param player Player
---@param sgroup SGroup
---@param squadCommand Squad
---@param target EGroup
---@param cmdparam integer
---@param queued boolean
function Command_SquadEntityExt(player, sgroup, squadCommand, target, cmdparam, queued) end

--- Send special squad command to a squad group with squad load parameters
---@param player Player
---@param sgroup SGroup
---@param squadCommand Squad
---@param target EGroup
---@param bOverLoad boolean
---@param queued boolean
function Command_SquadEntityLoad(player, sgroup, squadCommand, target, bOverLoad, queued) end

--- Send a squad command to a squad group with custom data
---@param player Player
---@param sgroup SGroup
---@param squadCommand Squad
---@param cmdparam integer
---@param queued boolean
function Command_SquadExt(player, sgroup, squadCommand, cmdparam, queued) end

--- Send a move to position command for a squad group.
---@param player Player
---@param sgroup SGroup
---@param target ScarPosition
---@param queued boolean
---@param reverseMove boolean
function Command_SquadMovePos(player, sgroup, target, queued, reverseMove) end

--- Send a move-facing command to a squad group
---@param player Player
---@param sgroup SGroup
---@param target ScarPosition
---@param facing ScarPosition
---@param queued boolean
---@param reverseMove boolean
function Command_SquadMovePosFacing(player, sgroup, target, facing, queued, reverseMove) end

--- Send a position command to a squad group.
---@param player Player
---@param sgroup SGroup
---@param squadCommand Squad
---@param target ScarPosition
---@param queued boolean
function Command_SquadPos(player, sgroup, squadCommand, target, queued) end

--- Send a positional ability command (SCMD_Ability) to a squad
---@param player Player
---@param sgroup SGroup
---@param pos ScarPosition
---@param abilityPBG ScarAbilityPBG
---@param skipCostPrereq boolean
---@param queued boolean
function Command_SquadPosAbility(player, sgroup, pos, abilityPBG, skipCostPrereq, queued) end

--- Send a position command to a squad group with custom data
---@param player Player
---@param sgroup SGroup
---@param squadCommand Squad
---@param target ScarPosition
---@param cmdparam integer
---@param queued boolean
function Command_SquadPosExt(player, sgroup, squadCommand, target, cmdparam, queued) end

--- Send an position command ATTACK to a squad group.
---@param player Player
---@param sgroup SGroup
---@param target ScarPosition
---@param bCheckFOW boolean
---@param bStationary boolean
---@param planName string
---@param queued boolean
function Command_SquadPositionAttack(player, sgroup, target, bCheckFOW, bStationary, planName, queued) end

--- Send an squad-based command to a squad group.
---@param player Player
---@param sgroup SGroup
---@param squadCommand Squad
---@param target SGroup
---@param queued boolean
function Command_SquadSquad(player, sgroup, squadCommand, target, queued) end

--- Send a squad ability command (SCMD_Ability) to a squad
---@param player Player
---@param sgroup SGroup
---@param target SGroup
---@param abilityPBG ScarAbilityPBG
---@param skipCostPrereq boolean
---@param queued boolean
function Command_SquadSquadAbility(player, sgroup, target, abilityPBG, skipCostPrereq, queued) end

--- Send an squad-based command to a squad group.
---@param player Player
---@param sgroup SGroup
---@param target SGroup
---@param bCheckFOW boolean
---@param bStationary boolean
---@param planName string
---@param queued boolean
function Command_SquadSquadAttack(player, sgroup, target, bCheckFOW, bStationary, planName, queued) end

--- Send a squad command to a squad group with custom data
---@param player Player
---@param sgroup SGroup
---@param squadCommand Squad
---@param target SGroup
---@param cmdparam integer
---@param queued boolean
function Command_SquadSquadExt(player, sgroup, squadCommand, target, cmdparam, queued) end

--- Send special squad command to a squad group with squad load parameters
---@param player Player
---@param sgroup SGroup
---@param squadCommand Squad
---@param target SGroup
---@param bOverLoad boolean
---@param queued boolean
function Command_SquadSquadLoad(player, sgroup, squadCommand, target, bOverLoad, queued) end

--- Sends an upgrade command to a squad group.
---@param player Player
---@param sgroup SGroup
---@param upgrade ScarUpgradePBG
---@param instant boolean
---@param queued boolean
function Command_SquadUpgrade(player, sgroup, upgrade, instant, queued) end

--- Returns true if an entity blueprint exists with the given name.
---@param pbgShortname string
---@return boolean
function EBP_Exists(pbgShortname) end

--- Adds an entity to the end of a group if the group doesnt already have it.
---@param group EGroup
---@param entity Entity
function EGroup_Add(group, entity) end

--- Appends the entities in one group to another group.
---@param group EGroup
---@param grouptoadd EGroup
function EGroup_AddEGroup(group, grouptoadd) end

--- Calls an Entity_ function on every entity in an egroup
---@param egroup EGroup
---@param entityFunction function
---@param list any
function EGroup_CallEntityFunction(egroup, entityFunction, list) end

--- Returns whether ALL or ANY entities in an egroup satisfy a condition, using an Entity_ function to perform the query on each entity
---@param egroup EGroup
---@param all boolean
---@param entityFunction function
---@param list any
function EGroup_CallEntityFunctionAllOrAny(egroup, all, entityFunction, list) end

--- Returns true if ALL or ANY entities in a group can see ALL or ANY entities in a given egroup.
---@param egroup EGroup
---@param targetegroup EGroup
---@param all boolean
---@return boolean
function EGroup_CanSeeEGroup(egroup, targetegroup, all) end

--- Returns true if ALL or ANY entities in a group can see ALL or ANY squads in a given sgroup.
---@param egroup EGroup
---@param targetsgroup SGroup
---@param all boolean
---@return boolean
function EGroup_CanSeeSGroup(egroup, targetsgroup, all) end

--- Removes all entities from a group
---@param egroup EGroup
function EGroup_Clear(egroup) end

--- Returns true if the contents of the two groups are equal. Order of the entities does not matter.
---@param group1 EGroup
---@param group2 EGroup
---@return boolean
function EGroup_Compare(group1, group2) end

--- Check if a group contains ALL or ANY of the blueprints.
---@param egroup EGroup
---@param blueprint Blueprint|table
---@param all boolean
---@return boolean
function EGroup_ContainsBlueprints(egroup, blueprint, all) end

--- Returns true if EGroup1 contains ANY or ALL of EGroup2
---@param egroup1 EGroup
---@param egroup2 EGroup
---@param all boolean
---@return boolean
function EGroup_ContainsEGroup(egroup1, egroup2, all) end

--- Returns true if EGroup contains a particular EntityID
---@param egroup EGroup
---@param entity Entity
---@return boolean
function EGroup_ContainsEntity(egroup, entity) end

--- Returns the total number of spawned and despawned entities in a group.
---@param egroup EGroup
---@return integer
function EGroup_Count(egroup) end

--- Get the number of alive entities (both spawned and despawned)
---@param egroup EGroup
---@return integer
function EGroup_CountAlive(egroup) end

--- Returns the number of despawned entities in a group.
---@param egroup EGroup
---@return integer
function EGroup_CountDeSpawned(egroup) end

--- Returns the number of spawned entities in a group.
---@param egroup EGroup
---@return integer
function EGroup_CountSpawned(egroup) end

--- Returns a new entity group with the given name.
---@param name string
---@return EGroup
function EGroup_Create(name) end

--- Find a entity group from name.  Creates a new one with given name if it doesnt exist.
---@param egroupname string
---@return EGroup
function EGroup_CreateIfNotFound(egroupname) end

--- Create and display kicker message on the each entity in the egroup to the player
---@param group EGroup
---@param textid LocString
function EGroup_CreateKickerMessage(group, textid) end

--- Returns a table of egroups NOT in the world builder
---@param format string
---@param size integer
---@return table
function EGroup_CreateTable(format, size) end

--- Despawn all spawned entities in a group.
---@param egroup EGroup
function EGroup_DeSpawn(egroup) end

--- Manually destroy a group that you dont need anymore.
---@param egroup EGroup
function EGroup_Destroy(egroup) end

--- Destroys all spawned and despawned entities in a group.
---@param egroup EGroup
function EGroup_DestroyAllEntities(egroup) end

--- Duplicates an EGroup
---@param egroupid1 EGroup
---@param egroupid2 EGroup
function EGroup_Duplicate(egroupid1, egroupid2) end

--- Enables or disables the minimap indicator for all entities in a group
---@param egroup EGroup
---@param enable boolean
function EGroup_EnableMinimapIndicator(egroup, enable) end

--- Enable or disable decorators on all entities in the egroup. Sets selection visuals as well unless enableSelection is specified.
---@param group SGroup
---@param enable boolean
---@param enableSelection boolean
function EGroup_EnableUIDecorator(group, enable, enableSelection) end

--- Returns true if the entity group with the given name exists
---@param name string
---@return boolean
function EGroup_Exists(name) end

--- Filters an EGroup by blueprint.
---@param egroup EGroup
---@param blueprint string|ID|table
---@param filtertype integer
function EGroup_Filter(egroup, blueprint, filtertype) end

--- Filters an EGroup by construction status.
---@param egroup EGroup
---@param filtertype integer
function EGroup_FilterUnderConstruction(egroup, filtertype) end

--- Call a lua function for each item in a group. Function will recieve (groupid, itemindex, itemid) and should return true to break or false to continue.
---@param egroup EGroup
---@param f function
---@return boolean
function EGroup_ForEach(egroup, f) end

--- Call a lua function for each item in a group. Function will receive (groupid, itemindex, itemid) and should return a bool.
---@param egroup EGroup
---@param all boolean
---@param f function
---@return boolean
function EGroup_ForEachAllOrAny(egroup, all, f) end

--- Same as EGroup_ForEachAllOrAny except you have a choice to iterate over spawned entities, despawned entities, or both.
---@param egroup EGroup
---@param all boolean
---@param f function
---@param spawned boolean
---@param despawned boolean
---@return boolean
function EGroup_ForEachAllOrAnyEx(egroup, all, f, spawned, despawned) end

--- Same as EGroup_ForEach except you have a choice to iterate over spawned entities, despawned entities, or both.
---@param egroup EGroup
---@param f function
---@param spawned boolean
---@param despawned boolean
---@return boolean
function EGroup_ForEachEx(egroup, f, spawned, despawned) end

--- Find an entity group with a given name.
---@param name string
---@return EGroup
function EGroup_FromName(name) end

--- Returns the average health of all units in a entity group.
---@param egroup EGroup
---@return number
function EGroup_GetAvgHealth(egroup) end

--- Returns the despawned entity at the given index.
---@param group EGroup
---@param index integer
---@return Entity
function EGroup_GetDeSpawnedEntityAt(group, index) end

--- Check invulnerablity state for ALL or ANY entity in an entity group.
---@param egroup EGroup
---@param all boolean
---@return boolean
function EGroup_GetInvulnerable(egroup, all) end

--- Gets the last attacker(s) for all the entities in an EGroup Gets the last attacker for all the squads in an SGroup and stores that in SGroupAttacker
---@param EGroupVictim EGroup
---@param SGroupAttacker SGroup
function EGroup_GetLastAttacker(EGroupVictim, SGroupAttacker) end

--- Returns the name of a given entity group.
---@param egroup EGroup
---@return string
function EGroup_GetName(egroup) end

--- Returns a position (a certain distance away) relative to an entity's current position/orientation. see LuaConsts.scar for explanation of 'offset' parameter
---@param egroup EGroup
---@param offset integer
---@param value number
---@return ScarPosition
function EGroup_GetOffsetPosition(egroup, offset, value) end

--- Returns the center position of an entity group.
---@param group EGroup
---@return ScarPosition
function EGroup_GetPosition(group) end

--- Get a random spawned entity from egroup
---@param egroupid EGroup
---@return Entity
function EGroup_GetRandomSpawnedEntity(egroupid) end

--- Builds a table of EGroupIDs that are named in a sequence. i.e. a name of "eg_building" will find groups "eg_building1", "eg_building2" and so on, up until it looks for a group that isn't there.
---@param name string
---@return table
function EGroup_GetSequence(name) end

--- Returns the spawned entity at the given index.
---@param group EGroup
---@param index integer
---@return Entity
function EGroup_GetSpawnedEntityAt(group, index) end

--- Get the first spawned entity from egroup that meets the condition (a function that takes an entity)
---@param egroupid EGroup
---@param condition function
---@return Entity
function EGroup_GetSpawnedEntityFilter(egroupid, condition) end

--- Returns the distance from the centre of the group of the entity that furthest out.
---@param egroup EGroup
---@return number
function EGroup_GetSpread(egroup) end

--- Returns an sgroup containing all squads held by any entities in an egroup
---@param egroup EGroup
---@param sgroupRecipient SGroup
function EGroup_GetSquadsHeld(egroup, sgroupRecipient) end

--- Returns a table of egroups from the world builder
---@param format string
---@return table
function EGroup_GetWBTable(format) end

--- Returns whether ANY or ALL entities in an EGroup have the specified upgrade
---@param egroup EGroup
---@param upgrade UpgradeID
---@param all boolean
---@return boolean
function EGroup_HasUpgrade(egroup, upgrade, all) end

--- Hide or show all entities in an EGroup
---@param egroup EGroup
---@param hide boolean
function EGroup_Hide(egroup, hide) end

--- Change the ownership of a Strategic Point
---@param egroup EGroup
---@param player Player
function EGroup_InstantCaptureStrategicPoint(egroup, player) end

--- Reverts an occupied building
---@param egroup EGroup
function EGroup_InstantRevertOccupiedBuilding(egroup) end

--- Performs a group intersection.
---@param group EGroup
---@param grouptointersect EGroup
function EGroup_Intersection(group, grouptointersect) end

--- Checks if ANY or ALL entities in an egroup are on fire (ignition threshold exceeded)
---@param egroup EGroup
---@param ALL boolean
---@return boolean
function EGroup_IsBurning(egroup, ALL) end

--- Returns true if all or any strategic points in a group have been captured. Use ANY or ALL.
---@param egroup EGroup
---@param playerId Player
---@param all boolean
---@return boolean
function EGroup_IsCapturedByPlayer(egroup, playerId, all) end

--- Returns true if all or any strategic points in a group have been captured. Use ANY or ALL.
---@param egroup EGroup
---@param teamId integer
---@param all boolean
---@return boolean
function EGroup_IsCapturedByTeam(egroup, teamId, all) end

--- Returns true if ALL or ANY entities are attacking within the time
---@param egroup EGroup
---@param all boolean
---@param time number
---@return boolean
function EGroup_IsDoingAttack(egroup, all, time) end

--- Returns true if a named entity group contains no spawned or despawned entities
---@param egroup EGroup
---@return boolean
function EGroup_IsEmpty(egroup) end

--- Returns whether any entity in an EGroup has a hold on anything
---@param egroup EGroup
function EGroup_IsHoldingAny(egroup) end

--- Returns true if ALL or ANY entities are in cover.
---@param egroup EGroup
---@param all boolean
---@return boolean
function EGroup_IsInCover(egroup, all) end

--- Returns true if ANY or ALL entities in an EGroup are moving.
---@param egroupid EGroup
---@param all boolean
---@return boolean
function EGroup_IsMoving(egroupid, all) end

--- Returns true if ANY or ALL (use those keywords) of the enities in the group are present onscreen. You can pass in a percentage of the screen to check, so 0.8 would be a centered rectangle occupying 80% of the screen.
---@param player Player
---@param group EGroup
---@param all boolean
---@param percent number
---@return boolean
---@overload fun(player: Player, group: EGroup, all: boolean)
function EGroup_IsOnScreen(player, group, all, percent) end

--- Returns true if ALL or ANY entities in a group are currently producing squads
---@param egroup EGroup
---@param all boolean
---@return boolean
function EGroup_IsProducingSquads(egroup, all) end

--- Checks if ANY or ALL entities in an group are currently spawned or not.
---@param egroup EGroup
---@param ALL boolean
---@return boolean
function EGroup_IsSpawned(egroup, ALL) end

--- Returns true if ALL or ANY entities are under attack within the time
---@param egroup EGroup
---@param all boolean
---@param time number
---@return boolean
function EGroup_IsUnderAttack(egroup, all, time) end

--- Check if the entities are attacked by the player
---@param group EGroup
---@param attackerplayer Player
---@param duration number
---@return boolean
function EGroup_IsUnderAttackByPlayer(group, attackerplayer, duration) end

--- Returns true if ALL or ANY entities are under attack from a direction within the time. see LuaConsts.scar for types of directions. you can pass in a table of offsets
---@param egroup EGroup
---@param all boolean
---@param offset integer|table
---@param time number
---@return boolean
function EGroup_IsUnderAttackFromDirection(egroup, all, offset, time) end

--- Checks if ANY or ALL squads within an EGroup are using an ability
---@param egroup EGroup
---@param ALL boolean
---@return boolean
function EGroup_IsUsingAbility(egroup, ALL) end

--- Kill all entities in an EGroup
---@param egroup EGroup
function EGroup_Kill(egroup) end

--- Calls a function when any entity in an EGroup gets destroyed by the player clicking the "Detonate me" button
---@param id EGroup
---@param _function function
function EGroup_NotifyOnPlayerDemolition(id, _function) end

--- Removes an entity from a group.
---@param group EGroup
---@param entity Entity
function EGroup_Remove(group, entity) end

--- Removes all demolition charges on an egroup
---@param egroup EGroup
function EGroup_RemoveDemolitions(egroup) end

--- Remove from the first SGroup all squads contained in the second SGroup. SGroup2 remains untouched.
---@param group SGroup
---@param grouptoremove SGroup
function EGroup_RemoveGroup(group, grouptoremove) end

--- Removes upgrade(s) from an egroup
---@param egroup EGroup
---@param upgrade UpgradeBlueprint|table
function EGroup_RemoveUpgrade(egroup, upgrade) end

--- Respawn all despawned entities in a group.
---@param egroup EGroup
function EGroup_ReSpawn(egroup) end

--- Trigger animation action for an EGroup. Please only use this for simple animations
---@param egroup EGroup
---@param actionName string
function EGroup_SetAnimatorAction(egroup, actionName) end

--- Set animation event for an EGroup. Please only use this for simple animations
---@param egroup EGroup
---@param eventName string
function EGroup_SetAnimatorEvent(egroup, eventName) end

--- Set animation state of a state machine for an EGroup. Please only use this for simple animations
---@param egroup EGroup
---@param stateMachineName string
---@param stateName string
function EGroup_SetAnimatorState(egroup, stateMachineName, stateName) end

--- Set animation variable value for an EGroup. Please only use this for simple animations
---@param egroup EGroup
---@param variableName string
---@param value number
function EGroup_SetAnimatorVariable(egroup, variableName, value) end

--- Sets whether a weapon to auto-target things or not
---@param group EGroup
---@param hardpoint string
---@param enable boolean
function EGroup_SetAutoTargetting(group, hardpoint, enable) end

--- Sets the health of each unit in an entity group to a given percent [0.0, 1.0].
---@param egroup EGroup
---@param healthPercent number
---@return number
function EGroup_SetAvgHealth(egroup, healthPercent) end

--- Overrides crushable behavior for an egroup
---@param egroup EGroup
---@param crushable boolean
function EGroup_SetCrushable(egroup, crushable) end

--- Instantly wires a building for demolitions
---@param player Player
---@param egroupid EGroup
---@param numcharges integer
---@overload fun(player: Player, egroupid: EGroup)
function EGroup_SetDemolitions(player, egroupid, numcharges) end

--- Set the minimum health for this entity
---@param egroup EGroup
---@param minhealth number
function EGroup_SetHealthMinCap(egroup, minhealth) end

--- Enable/Disable invulnerablity for an entire entity group. Use true and false for simple on/off, or use a number between 0.0 and 1.0 for more precise control on how much damage an entity can take before it takes no more.
---@param egroup EGroup
---@param enabled boolean
---@param reset_time number
---@overload fun(egroup: EGroup, enabled: boolean)
function EGroup_SetInvulnerable(egroup, enabled, reset_time) end

--- Changes the player owner for all spawned and despawned entities of an EGroup.
---@param egroup EGroup
---@param owner Player
function EGroup_SetPlayerOwner(egroup, owner) end

--- Set the rally point for this entity
---@param egroup EGroup
---@param target ScarPosition
function EGroup_SetRallyPoint(egroup, target) end

--- Sets all entities in an egroup to be recrewable or not when abandoned
---@param sgroup EGroup
---@param recrewable boolean
function EGroup_SetRecrewable(sgroup, recrewable) end

--- Set player selectable state of entities in the egroup
---@param egroup EGroup
---@param selectable boolean
function EGroup_SetSelectable(egroup, selectable) end

--- Enables shared team production on a building (teammates can build using THEIR resources)
---@param egroup EGroup
---@param enable boolean
function EGroup_SetSharedProductionQueue(egroup, enable) end

--- Sets a strategic point to neutral (not owned by any team)
---@param egroup EGroup
function EGroup_SetStrategicPointNeutral(egroup) end

--- Makes an egroup neutral
---@param egroup EGroup
function EGroup_SetWorldOwned(egroup) end

--- Creates an entity group containing a single entity
---@param egroup EGroup
---@param entity Entity
---@return EGroup
function EGroup_Single(egroup, entity) end

--- Adds an sgroup to an encounter
function Encounter:AddSgroup() end

--- Clears the current goal.
function Encounter:ClearGoal() end

--- Create a new encounter from an SGroup, with default encounter data
---@param squadgroup SGroup
---@return Encounter
function Encounter:ConvertSgroup(squadgroup) end

--- Create a new encounter from encounter data. If spawnNow is true, spawns specified units immediately.
---@param data EncounterData
---@param spawnNow boolean
---@param spawnStaggered boolean
---@return Encounter
---@overload fun(data: EncounterData)
---@overload fun(data: EncounterData, spawnNow: boolean)
function Encounter:Create(data, spawnNow, spawnStaggered) end

--- Create a new encounter with a generic Ability goal.
---@param name string
---@param encUnits SquadBlueprint|table
---@param spawnLoc Marker|ScarPosition
---@param encTarget EGroup|SGroup|Marker|ScarPosition
---@param dynamicSpawn Marker|ScarPosition
---@param moveRange integer
---@return Encounter
---@overload fun(name: string, encUnits: SquadBlueprint|table, spawnLoc: Marker|ScarPosition, encTarget: EGroup|SGroup|Marker|ScarPosition)
---@overload fun(name: string, encUnits: SquadBlueprint|table, spawnLoc: Marker|ScarPosition, encTarget: EGroup|SGroup|Marker|ScarPosition, dynamicSpawn: Marker|ScarPosition)
function Encounter:CreateAbility(name, encUnits, spawnLoc, encTarget, dynamicSpawn, moveRange) end

--- Create a new encounter with a generic Attack goal.
---@param name string
---@param encUnits SquadBlueprint|table
---@param spawnLoc Marker|ScarPosition
---@param encTarget EGroup|SGroup|Marker|ScarPosition
---@param dynamicSpawn Marker|ScarPosition
---@param encRange Marker|integer
---@param encLeash Marker|integer
---@return Encounter
---@overload fun(name: string, encUnits: SquadBlueprint|table, spawnLoc: Marker|ScarPosition, encTarget: EGroup|SGroup|Marker|ScarPosition)
---@overload fun(name: string, encUnits: SquadBlueprint|table, spawnLoc: Marker|ScarPosition, encTarget: EGroup|SGroup|Marker|ScarPosition, dynamicSpawn: Marker|ScarPosition)
---@overload fun(name: string, encUnits: SquadBlueprint|table, spawnLoc: Marker|ScarPosition, encTarget: EGroup|SGroup|Marker|ScarPosition, dynamicSpawn: Marker|ScarPosition, encRange: Marker|integer)
function Encounter:CreateAttack(name, encUnits, spawnLoc, encTarget, dynamicSpawn, encRange, encLeash) end

--- Create a new basic encounter.
---@param name string
---@param spawnLoc Marker|ScarPosition
---@param encUnits SquadBlueprint|table
---@param dynamicSpawn Marker|ScarPosition
---@return Encounter
---@overload fun(name: string, spawnLoc: Marker|ScarPosition, encUnits: SquadBlueprint|table)
function Encounter:CreateBasic(name, spawnLoc, encUnits, dynamicSpawn) end

--- Create a new encounter with a generic Defend goal.
---@param name string
---@param encUnits SquadBlueprint|table
---@param spawnLoc Marker|ScarPosition
---@param encTarget EGroup|SGroup|Marker|ScarPosition
---@param dynamicSpawn Marker|ScarPosition
---@param encRange Marker|integer
---@param encLeash Marker|integer
---@return Encounter
---@overload fun(name: string, encUnits: SquadBlueprint|table, spawnLoc: Marker|ScarPosition, encTarget: EGroup|SGroup|Marker|ScarPosition)
---@overload fun(name: string, encUnits: SquadBlueprint|table, spawnLoc: Marker|ScarPosition, encTarget: EGroup|SGroup|Marker|ScarPosition, dynamicSpawn: Marker|ScarPosition)
---@overload fun(name: string, encUnits: SquadBlueprint|table, spawnLoc: Marker|ScarPosition, encTarget: EGroup|SGroup|Marker|ScarPosition, dynamicSpawn: Marker|ScarPosition, encRange: Marker|integer)
function Encounter:CreateDefend(name, encUnits, spawnLoc, encTarget, dynamicSpawn, encRange, encLeash) end

--- Create a new encounter with a generic Move goal.
---@param name string
---@param encUnits SquadBlueprint|table
---@param spawnLoc Marker|ScarPosition
---@param encTarget EGroup|SGroup|Marker|ScarPosition
---@param dynamicSpawn Marker|ScarPosition
---@param moveRange integer
---@return Encounter
---@overload fun(name: string, encUnits: SquadBlueprint|table, spawnLoc: Marker|ScarPosition, encTarget: EGroup|SGroup|Marker|ScarPosition)
---@overload fun(name: string, encUnits: SquadBlueprint|table, spawnLoc: Marker|ScarPosition, encTarget: EGroup|SGroup|Marker|ScarPosition, dynamicSpawn: Marker|ScarPosition)
function Encounter:CreateMove(name, encUnits, spawnLoc, encTarget, dynamicSpawn, moveRange) end

--- Create a new encounter with a generic Patrol goal.
---@param name string
---@param encUnits SquadBlueprint|table
---@param spawnLoc Marker|ScarPosition
---@param encPath Marker|string
---@param dynamicSpawn Marker|ScarPosition
---@param pathWait integer
---@param pathLoop integer
---@return Encounter
---@overload fun(name: string, encUnits: SquadBlueprint|table, spawnLoc: Marker|ScarPosition, encPath: Marker|string)
---@overload fun(name: string, encUnits: SquadBlueprint|table, spawnLoc: Marker|ScarPosition, encPath: Marker|string, dynamicSpawn: Marker|ScarPosition)
---@overload fun(name: string, encUnits: SquadBlueprint|table, spawnLoc: Marker|ScarPosition, encPath: Marker|string, dynamicSpawn: Marker|ScarPosition, pathWait: integer)
function Encounter:CreatePatrol(name, encUnits, spawnLoc, encPath, dynamicSpawn, pathWait, pathLoop) end

--- Stops running the encounter and clears the current goal.
function Encounter:Disable() end

--- Starts encounter running (encounters are enabled by default) if it was disabled previously.
function Encounter:Enable() end

--- Gets clone of current goal data.  May be nil.
---@return GoalData
function Encounter:GetGoalData() end

--- Gets the encounter's sgroup. Caution: sgroup may be empty
---@return SGroup
function Encounter:GetSgroup() end

--- Clears the encounter's onDeath callback. If includeUnits is set to true, it clears onDeath callbacks for units as well.
---@param includeUnits boolean
function Encounter:RemoveOnDeath(includeUnits) end

--- If encounter has a goal, but no currently running objective, restarts the goal.
---@return boolean
function Encounter:RestartGoal() end

--- Creates encounter goal from goal data; goals determine unit objectives and behaviours.
---@param goalData GoalData
function Encounter:SetGoal(goalData) end

--- Set the goal's OnSuccess callback.
function Encounter:SetGoalOnSuccess() end

--- Sets a new onDeath callback for the encounter
---@param func any
function Encounter:SetOnDeath(func) end

--- Spawns the units within an. Does nothing if the encounter has already been spawned.
---@param spawnStaggered boolean
function Encounter:Spawn(spawnStaggered) end

--- Sets the goal data for the encounter. If encounter has a goal with a running objective, updates the goal.
---@param goalData GoalData
function Encounter:UpdateGoal(goalData) end

--- Trigger a critical hit on an entity
---@param pEntity Entity
---@param criticalPBG ScarCriticalPBG
---@param removeAtHealth number
function Entity_ApplyCritical(pEntity, criticalPBG, removeAtHealth) end

--- Displays info about the panel that is intersected by the passed in ray
---@param pEntity Entity
---@param cam ScarPosition
---@param terrain ScarPosition
function Entity_BuildingPanelInfo(pEntity, cam, terrain) end

--- pass in a entity and position to resolve the position into a open space position, if the position is not free, position returned will try to be the closest position near the original position
---@param ebp ScarEntityPBG
---@param pos ScarPosition
---@return ScarPosition
function Entity_CalculatePassableSpawnPosition(ebp, pos) end

--- Returns whether an entity can attack a target without moving or turning.
---@param attacker Entity
---@param target ScarPosition
---@return boolean
function Entity_CanAttackNow(attacker, target) end

--- Cancels an item in a production queue.  Index 0 is the currently producing item.
---@param entity Entity
---@param index integer
function Entity_CancelProductionQueueItem(entity, index) end

--- Check if the entity can load squad or not
---@param entity Entity
---@param squad Squad
---@param bCheckSquadState boolean
---@param bOverload boolean
---@return boolean
function Entity_CanLoadSquad(entity, squad, bCheckSquadState, bOverload) end

--- Check if the entity can load squad and shoot its target after loading (This function should only be called by AI)
---@param entity Entity
---@param squad Squad
---@param bCheckSquadState boolean
---@param bOverload boolean
---@return boolean
function Entity_CanLoadSquadAndAttackCurrentTarget(entity, squad, bCheckSquadState, bOverload) end

--- Returns true if the distance between a target entity and the source entity is less than it entity's sight distance.  There is no LOS or FOW check.
---@param entity Entity
---@param target Entity
---@return boolean
function Entity_CanSeeEntity(entity, target) end

