--- Sets the success notification callback for objective.
---@param pObjective table
---@param f function
function AIObjective_Notify_SetSuccessCallback(pObjective, f) end

--- Removes all resource squads from objective.
---@param pObjective table
function AIObjective_ResourceGuidance_ClearSquads(pObjective) end

--- Sets the resource squads for objective.
---@param pObjective table
---@param squads SGroup
function AIObjective_ResourceGuidance_SquadGroup(pObjective, squads) end

--- Set objective name for debugging.
---@param pObjective table
---@param name string
function AIObjective_SetName(pObjective, name) end

--- Disable ability for all squads in objective
---@param pObjective table
---@param ability PropertyBagGroup
function AIObjective_TacticFilter_DisableAbility(pObjective, ability) end

--- Disable ability for squads in objective
---@param pObjective table
---@param squads SGroup
---@param ability PropertyBagGroup
function AIObjective_TacticFilter_DisableAbilityForSquadGroup(pObjective, squads, ability) end

--- Enable close ground behaviour (3-stage TACTIC_RushAtTarget) for all squads in objective, running at priority (1..1000)
---@param pObjective table
---@param priority number
function AIObjective_TacticFilter_EnableCloseGround(pObjective, priority) end

--- Reset all tactic filters for objective
---@param pObjective table
function AIObjective_TacticFilter_Reset(pObjective) end

--- Reset all tactic ability constraints for objective
---@param pObjective table
function AIObjective_TacticFilter_ResetAbilityGuidance(pObjective) end

--- Reset tactic priority for all squads in objective
---@param pObjective table
---@param tactic AITacticType
function AIObjective_TacticFilter_ResetPriority(pObjective, tactic) end

--- Reset all tactic constraints for objective
---@param pObjective table
function AIObjective_TacticFilter_ResetTacticGuidance(pObjective) end

--- Reset all tactic target constraints for objective
---@param pObjective table
function AIObjective_TacticFilter_ResetTargetGuidance(pObjective) end

--- Set tactic ability constraints for objective
---@param pObjective table
---@param ability PropertyBagGroup
---@param maxCasters integer
---@param retrySecs number
---@param waitSecs number
---@param timeoutSecs number
---@param initialWait boolean
---@param maxRange number
function AIObjective_TacticFilter_SetAbilityGuidance(pObjective, ability, maxCasters, retrySecs, waitSecs, timeoutSecs, initialWait, maxRange) end

--- Set default tactic ability constraints for objective (ability specific guidance takes priority over defaults)
---@param pObjective table
---@param maxCasters integer
---@param retrySecs number
---@param waitSecs number
---@param timeoutSecs number
---@param initialWait boolean
---@param maxRange number
function AIObjective_TacticFilter_SetDefaultAbilityGuidance(pObjective, maxCasters, retrySecs, waitSecs, timeoutSecs, initialWait, maxRange) end

--- Set default tactic constraints for objective (tactic specific guidance takes priority over defaults)
---@param pObjective table
---@param maxUsers integer
---@param retrySecs number
---@param waitSecs number
---@param timeoutSecs number
---@param initialWait boolean
---@param maxRange number
function AIObjective_TacticFilter_SetDefaultTacticGuidance(pObjective, maxUsers, retrySecs, waitSecs, timeoutSecs, initialWait, maxRange) end

--- Set default target constraints for objective (target specific guidance takes priority over defaults)
---@param pObjective table
---@param maxAttackers integer
function AIObjective_TacticFilter_SetDefaultTargetGuidance(pObjective, maxAttackers) end

--- Set tactic priority for all squads in objective; negative priority disables
---@param pObjective table
---@param tactic AITacticType
---@param priority number
function AIObjective_TacticFilter_SetPriority(pObjective, tactic, priority) end

--- Set tactic priority for squads in objective
---@param pObjective table
---@param squads SGroup
---@param tactic AITacticType
---@param priority number
function AIObjective_TacticFilter_SetPriorityForSquadGroup(pObjective, squads, tactic, priority) end

--- Set tactic constraints for objective
---@param pObjective table
---@param tactic AITacticType
---@param maxUsers integer
---@param retrySecs number
---@param waitSecs number
---@param timeoutSecs number
---@param initialWait boolean
---@param maxRange number
function AIObjective_TacticFilter_SetTacticGuidance(pObjective, tactic, maxUsers, retrySecs, waitSecs, timeoutSecs, initialWait, maxRange) end

--- Set tactic target priority for objective
---@param pObjective table
---@param policy TargetPreference
function AIObjective_TacticFilter_SetTargetPolicy(pObjective, policy) end

--- Sets engagement area radius around the target.
---@param pObjective table
---@param radius number
function AIObjective_TargetGuidance_SetTargetArea(pObjective, radius) end

--- Sets target Entity for objective
---@param pObjective table
---@param entity Entity
function AIObjective_TargetGuidance_SetTargetEntity(pObjective, entity) end

--- Sets leash radius around target where squads should stay within.
---@param pObjective table
---@param radius number
function AIObjective_TargetGuidance_SetTargetLeash(pObjective, radius) end

--- Sets target patrol path for objective
---@param pObjective table
---@param pathName string
---@param delaySecs number
function AIObjective_TargetGuidance_SetTargetPathByName(pObjective, pathName, delaySecs) end

--- Sets random wander target patrol for objective; delaySecs is the time in secs to pause at each random point
---@param pObjective table
---@param delaySecs number
function AIObjective_TargetGuidance_SetTargetPathWander(pObjective, delaySecs) end

--- Sets target position for objective
---@param pObjective table
---@param pos ScarPosition
function AIObjective_TargetGuidance_SetTargetPosition(pObjective, pos) end

--- Sets target Squad for objective
---@param pObjective table
---@param squad Squad
function AIObjective_TargetGuidance_SetTargetSquad(pObjective, squad) end

--- returns a 0-based index of the best clump of enemy squads within the given tolerance to the AI squad
---@param pPlayer Player
---@param pSquad Squad
---@param pAbilityPBG PropertyBagGroup
---@param minRange number
---@param maxRange number
---@param targetFilterFlags integer
---@return integer
function AIPlayer_GetBestClumpForSquadIdx(pPlayer, pSquad, pAbilityPBG, minRange, maxRange, targetFilterFlags) end

--- returns a 0-based index of the best clump of enemy squads within the given tolerance to the AI player
---@param pPlayer Player
---@param pAbilityPBG PropertyBagGroup
---@param minRange number
---@param maxRange number
---@param clumpSelectionGlobalBestMinRatio number
---@param targetFilterFlags integer
---@return integer
function AIPlayer_GetBestClumpIdx(pPlayer, pAbilityPBG, minRange, maxRange, clumpSelectionGlobalBestMinRatio, targetFilterFlags) end

--- Used for tactics; returns a "special error position" on failure that's nowhere inside the world.
---@param pPlayer Player
---@param clumpIndex integer
---@param targetFilterFlags integer
---@return ScarPosition
function AIPlayer_GetClumpPosition(pPlayer, clumpIndex, targetFilterFlags) end

--- Returns the local AIPlayer given a PlayerId (1000-1008)
---@param playerId integer
---@return Player
function AIPlayer_GetLocal(playerId) end

--- Returns the local AIPlayer given a ModPlayer pointer.
---@param pPlayerIn Player
---@return Player
function AIPlayer_GetLocalFromPlayer(pPlayerIn) end

--- Requests the skirmish AI to update attack objectives and capture tasks.
---@param pPlayer Player
function AIPlayer_UpdateSkirmishAttackAndCaptureTasks(pPlayer) end

--- Requests the skirmish AI to update player abilities.
---@param pPlayer Player
function AIPlayer_UpdateSkirmishPlayerAbilities(pPlayer) end

--- Updates what the skirmish AI is trying to produce.
---@param pPlayer Player
function AIPlayer_UpdateSkirmishProduction(pPlayer) end

--- Tries to find cover within a certain radius of a position, traveling a max distance to get there, and possibly comparing against current position's cover. If no cover is found, it returns an invalid position.
---@param player Player
---@param aiSquad Squad
---@param maxPathDistanceFromGoal number
---@param compareToCurrentCover boolean
---@return ScarPosition
function AISquad_FindFilteredCoverCompareCurrent(player, aiSquad, maxPathDistanceFromGoal, compareToCurrentCover) end

--- Returns the closest cuttable obstruction entity to the given squad.
---@param pSquad Squad
---@param radius number
---@return Entity
function AISquad_GetClosestCuttableObstruction(pSquad, radius) end

--- Returns the closest obstruction entity to the given squad.
---@param pSquad Squad
---@param radius number
---@param bFilterAllied boolean
---@return Entity
function AISquad_GetClosestObstruction(pSquad, radius, bFilterAllied) end

--- Returns the closest obstruction entity to the given squad.
---@param pSquad Squad
---@param radius number
---@param pbgtype PropertyBagGroup
---@return Entity
function AISquad_GetClosestObstructionOfType(pSquad, radius, pbgtype) end

--- Checks if the squad has been attacked within this time.
---@param pAISquad Squad
---@param historyTicks integer
---@return boolean
function AISquad_HasBeenAttacked(pAISquad, historyTicks) end

--- Checks if the squad has fired its weapon within this time.
---@param pAISquad Squad
---@param historyTicks integer
---@return boolean
function AISquad_HasFiredWeapon(pAISquad, historyTicks) end

--- Returns the Ability to use in the current AI Target Filter Context.
---@return PropertyBagGroup
function AITargetFilterContext_GetAbilityToUse() end

--- Returns the maximum range value in the current AI Target Filter Context.
---@return number
function AITargetFilterContext_GetRangeMax() end

--- Returns the minimum range value in the current AI Target Filter Context.
---@return number
function AITargetFilterContext_GetRangeMin() end

--- Returns the suggested position in the current AI Target Filter Context.
---@return ScarPosition
function AITargetFilterContext_GetSuggestedPosition() end

--- Returns the Entity Group in the current AI Target Filter Context.
---@return EGroup
function AITargetFilterContext_GetTargetEntityGroup() end

--- Returns the Squad Group in the current AI Target Filter Context.
---@return SGroup
function AITargetFilterContext_GetTargetSquadGroup() end

--- Plays an animation from an entity.
---@param entity Entity
---@param animname string
function Anim_PlayEntityAnim(entity, animname) end

--- Toggles all cinematic related settings. true = go to cinematic, false = go back to normal
---@param in_out boolean
---@param seconds number
function AutoCinematic(in_out, seconds) end

--- Adds an SGroup to the auto-reinforce functions
---@param sgroup SGroup
---@param origin any
function AutoReinforce_AddSGroup(sgroup, origin) end

--- Stops monitoring all squads from the auto-reinforce functions
function AutoReinforce_RemoveAll() end

--- Removes an SGroup from the auto-reinforce functions
---@param sgroup SGroup
function AutoReinforce_RemoveSGroup(sgroup) end

--- Sets an sgroup to retreat to the given destination or building once pinned for a certain duration, or reduced to a third of it's original size
---@param sgroup SGroup
---@param destination Marker|ScarPosition|EGroup
---@param threshold number
---@param onTrigger function
---@overload fun(sgroup: SGroup, destination: Marker|ScarPosition|EGroup)
---@overload fun(sgroup: SGroup, destination: Marker|ScarPosition|EGroup, threshold: number)
function AutoRetreat_AddSGroup(sgroup, destination, threshold, onTrigger) end

--- Stops monitoring all squads from the auto-retreat functions
function AutoRetreat_RemoveAll() end

--- Removes a squad from being monitored by the auto-retreat functions
---@param sgroup SGroup
function AutoRetreat_RemoveSGroup(sgroup) end

--- Add an opportunity that may get highlighted by the hint manager system on easier difficulty modes. THIS IS NOT MP-SAFE!
---@param where ScarPosition|SGroup|EGroup|table
---@param ability AbilityBlueprint|table
---@param repeating boolean
---@param message LocString
---@param icon string
---@param arrow HPAT
---@param max_difficulty GD
---@param ignore_timers boolean
---@return OpportunityID
---@overload fun(where: ScarPosition|SGroup|EGroup|table, ability: AbilityBlueprint|table)
---@overload fun(where: ScarPosition|SGroup|EGroup|table, ability: AbilityBlueprint|table, repeating: boolean)
---@overload fun(where: ScarPosition|SGroup|EGroup|table, ability: AbilityBlueprint|table, repeating: boolean, message: LocString)
---@overload fun(where: ScarPosition|SGroup|EGroup|table, ability: AbilityBlueprint|table, repeating: boolean, message: LocString, icon: string)
---@overload fun(where: ScarPosition|SGroup|EGroup|table, ability: AbilityBlueprint|table, repeating: boolean, message: LocString, icon: string, arrow: HPAT)
---@overload fun(where: ScarPosition|SGroup|EGroup|table, ability: AbilityBlueprint|table, repeating: boolean, message: LocString, icon: string, arrow: HPAT, max_difficulty: GD)
function BeginnerHint_AddOpportunity(where, ability, repeating, message, icon, arrow, max_difficulty, ignore_timers) end

--- Remove all opportunities in one fell swoop!
function BeginnerHint_RemoveAllOpportunities() end

--- Remove an opportunity, either by ID or all opportunities at a location
---@param where ScarPosition|OpportunityID
function BeginnerHint_RemoveOpportunity(where) end

--- Returns an ability property bag group.
---@param pbgShortname string
---@return ScarAbilityPBG
function BP_GetAbilityBlueprint(pbgShortname) end

--- Returns a camouflage stance property bag group.
---@param pbgShortname string
---@return ScarCamouflageStancePBG
function BP_GetCamouflageStanceBlueprint(pbgShortname) end

--- Returns a critical property bag group.
---@param pbgShortname string
---@return ScarCriticalPBG
function BP_GetCriticalBlueprint(pbgShortname) end

--- Returns an entity property bag group.
---@param pbgShortname string
---@return ScarEntityPBG
function BP_GetEntityBlueprint(pbgShortname) end

--- Returns an ID that uniquely identifies this pbg
---@param pbg PropertyBagGroup
---@return integer
function BP_GetID(pbg) end

--- Returns a move type property bag group.
---@param pbgShortname string
---@return ScarMoveTypePBG
function BP_GetMoveTypeBlueprint(pbgShortname) end

--- Return the short name of the group
---@param pbg PropertyBagGroup
---@return string
function BP_GetName(pbg) end

--- Return the number of property bag groups of the same type
---@param type any
---@return integer
function BP_GetPropertyBagGroupCount(type) end

--- Return the path name of the group at the specified index
---@param type any
---@param index integer
---@return string
function BP_GetPropertyBagGroupPathName(type, index) end

--- Returns a slot item property bag group.
---@param pbgShortname string
---@return ScarSlotItemPBG
function BP_GetSlotItemBlueprint(pbgShortname) end

--- Returns a squad property bag group.
---@param pbgShortname string
---@return ScarSquadPBG
function BP_GetSquadBlueprint(pbgShortname) end

--- Returns an upgrade property bag group.
---@param pbgShortname string
---@return ScarUpgradePBG
function BP_GetUpgradeBlueprint(pbgShortname) end

--- Returns a weapon property bag group.
---@param pbgShortname string
---@return ScarWeaponPBG
function BP_GetWeaponBlueprint(pbgShortname) end

--- Add a bridge to the Bridge Territory Manager.
---@param bridge_egroup EGroup
---@param bridgepoint EGroup
---@param bank1point EGroup
---@param bank2point EGroup
function BridgeTerritory_Add(bridge_egroup, bridgepoint, bank1point, bank2point) end

--- Procedurally rotates the camera around a target. Camera input will be disabled. distance is in meters, declination is in degrees, speed is in degrees/sec.
---@param target ScarPosition
---@param distance number
---@param declination number
---@param speed number
function Camera_AutoRotate(target, distance, declination, speed) end

--- Clamps the camera's target position to a marker.
---@param marker ScarMarker
function Camera_ClampToMarker(marker) end

--- Moves the camera through a list of positions.
---@param list table
---@param pan boolean
---@param panRate number
---@param callback any
---@overload fun(list: table)
---@overload fun(list: table, pan: boolean)
---@overload fun(list: table, pan: boolean, panRate: number)
function Camera_CyclePositions(list, pan, panRate, callback) end

--- Focus the camera on the specified position. If pan is true, smoothly pan the camera to the target.
---@param position ScarPosition
---@param pan boolean
function Camera_FocusOnPosition(position, pan) end

--- Set the camera to follow an sgroup/squad/egroup/entity.
---@param var any
function Camera_Follow(var) end

--- Make the camera follow the specified entity.
---@param entity Entity
function Camera_FollowEntity(entity) end

--- Make the camera follow the current full selection.
function Camera_FollowSelection() end

--- Make the camera follow the specified squad.
---@param squad Squad
function Camera_FollowSquad(squad) end

--- Get the current target position for the camera. (Where the the camera currently is.)
---@return ScarPosition
function Camera_GetCurrentTargetPos() end

--- Get the current camera declination (tilt).
---@return number
function Camera_GetDeclination() end

--- Get the current camera orbit (rotation).
---@return number
function Camera_GetOrbit() end

--- Get the desired target position for the camera. (Where the camera is trying to get to.)
---@return ScarPosition
function Camera_GetTargetPos() end

--- Get camera tuning value.
---@param tuningValue TuningValue
---@return number
function Camera_GetTuningValue(tuningValue) end

--- Get the current zoom distance for the camera.
---@return number
function Camera_GetZoomDist() end

--- Returns the enabled/disabled state of the camera input.  (not strict)
---@return boolean
function Camera_IsInputEnabled() end

--- Move the camera to an entity/marker/pos/egroup/sgroup/squad
---@param var any
---@param pan boolean
---@param panRate number
---@param keepInputLocked boolean
---@param resetToDefault boolean
---@overload fun(var: any)
---@overload fun(var: any, pan: boolean)
---@overload fun(var: any, pan: boolean, panRate: number)
---@overload fun(var: any, pan: boolean, panRate: number, keepInputLocked: boolean)
function Camera_MoveTo(var, pan, panRate, keepInputLocked, resetToDefault) end

--- Slightly refocus the camera to rest on an entity/squad/squad/sgroup/egroup/pos/marker if it's close by.
---@param var any
function Camera_MoveToIfClose(var) end

--- Reload all camera tuning values.
function Camera_Reload() end

--- Make the camera stop following anything.
function Camera_ResetFocus() end

--- Reset camera position to default home position
function Camera_ResetToDefault() end

--- Set the current camera declination (tilt).
---@param declination number
function Camera_SetDeclination(declination) end

--- Helper function to set the default camera parameters
---@param height number
---@param declination number
---@param angle number
function Camera_SetDefault(height, declination, angle) end

--- Enables/disables camera input.
---@param enabled boolean
function Camera_SetInputEnabled(enabled) end

--- Set the current camera orbit (rotation).
---@param orbit number
function Camera_SetOrbit(orbit) end

--- Changes the speed of the camera blends to be newRate until the user (or some other camera call) is made.  Can call this with 0 to reset to default rate.
---@param rate number
function Camera_SetSlideTargetRate(rate) end

--- Set camera tuning value.
---@param tuningValue TuningValue
---@param value number
function Camera_SetTuningValue(tuningValue, value) end

--- Set the current zoom distance for the camera.
---@param distance number
function Camera_SetZoomDist(distance) end

--- Stops the camera from procedurally rotating. Input is restored.
function Camera_StopAutoRotating() end

--- Frees up the camera (so it's not clamped to a marker anymore).
function Camera_Unclamp() end

--- Stops an SGroup from auto-targetting, until one of their members is explicity given an attack order or Ceasefire_RemoveSGroup() is called (at which point they all start firing again)
---@param sgroup SGroup
---@param _function function
---@overload fun(sgroup: SGroup)
function Ceasefire_AddSGroup(sgroup, _function) end

--- Removes the ceasefire effect from an sgroup. This may already have been removed by issuing an attack order directly to the group.
---@param sgroup SGroup
function Ceasefire_RemoveSGroup(sgroup) end

--- Clones a table (recursively) allowing for unadulterated use of the data
---@param data table
---@return table
function Clone(data) end

--- Order a squad group to abandon their current team weapon if they have it and they could (tuning value in attribute editor)
---@param sgroupid SGroup
---@param preserveCrew boolean
---@param queued boolean
---@overload fun(sgroupid: SGroup)
---@overload fun(sgroupid: SGroup, preserveCrew: boolean)
function Cmd_AbandonTeamWeapon(sgroupid, preserveCrew, queued) end

--- Sends an ability command to a player, egroup or sgroup. extra parameters are provided if the ability requires them.
---@param user Player|EGroup|SGroup
---@param blueprint AbilityBlueprint
---@param target ScarPosition|SGroup|EGroup
---@param direction ScarPosition
---@param skipCostPrereq boolean
---@param queued boolean
---@overload fun(user: Player|EGroup|SGroup, blueprint: AbilityBlueprint)
---@overload fun(user: Player|EGroup|SGroup, blueprint: AbilityBlueprint, target: ScarPosition|SGroup|EGroup)
---@overload fun(user: Player|EGroup|SGroup, blueprint: AbilityBlueprint, target: ScarPosition|SGroup|EGroup, direction: ScarPosition)
---@overload fun(user: Player|EGroup|SGroup, blueprint: AbilityBlueprint, target: ScarPosition|SGroup|EGroup, direction: ScarPosition, skipCostPrereq: boolean)
function Cmd_Ability(user, blueprint, target, direction, skipCostPrereq, queued) end

--- Attach the squad from sgroupnameAttachee to sgroupname.  Both SGroups must contain only one squad.
---@param sgroup SGroup
---@param sgroupAttachee SGroup
function Cmd_AttachSquads(sgroup, sgroupAttachee) end

--- Issues an attack command to an SGroup
---@param sgroup SGroup
---@param target SGroup|EGroup|ScarPosition|Marker
---@param queued boolean
---@param stationary boolean
---@param plan string
---@overload fun(sgroup: SGroup, target: SGroup|EGroup|ScarPosition|Marker)
---@overload fun(sgroup: SGroup, target: SGroup|EGroup|ScarPosition|Marker, queued: boolean)
---@overload fun(sgroup: SGroup, target: SGroup|EGroup|ScarPosition|Marker, queued: boolean, stationary: boolean)
function Cmd_Attack(sgroup, target, queued, stationary, plan) end

--- Order a squad group to attack move to a position (anything whose position can be queried). can be queued, can follow a plan, can search for cover within a radius
---@param sgroup SGroup
---@param targetposition ScarPosition
---@param queued boolean
---@param plan string
---@param coverSearchRadius number
---@param deleteWhenNearMarker Marker
---@overload fun(sgroup: SGroup, targetposition: ScarPosition)
---@overload fun(sgroup: SGroup, targetposition: ScarPosition, queued: boolean)
---@overload fun(sgroup: SGroup, targetposition: ScarPosition, queued: boolean, plan: string)
---@overload fun(sgroup: SGroup, targetposition: ScarPosition, queued: boolean, plan: string, coverSearchRadius: number)
function Cmd_AttackMove(sgroup, targetposition, queued, plan, coverSearchRadius, deleteWhenNearMarker) end

--- Command attacker sgroup to attack move to strategic point target; when it is capturable, the sgroup would capture it
---@param attacker SGroup
---@param target EGroup
---@param unknown boolean
---@overload fun(attacker: SGroup, target: EGroup)
function Cmd_AttackMoveThenCapture(attacker, target, unknown) end

--- Order a squad group to capture team weapon entity group.
---@param sgroupid SGroup
---@param targetid EGroup
---@param queued boolean
---@overload fun(sgroupid: SGroup, targetid: EGroup)
function Cmd_CaptureTeamWeapon(sgroupid, targetid, queued) end

--- Orders a squad to contruct a building at specified position, or to continue construction on an existing building.
---@param sgroupid SGroup
---@param blueprint Entity
---@param targetid EGroup|ScarPosition|Marker
---@param Facing ScarPosition
---@param queued boolean
---@overload fun(sgroupid: SGroup, blueprint: Entity, targetid: EGroup|ScarPosition|Marker)
---@overload fun(sgroupid: SGroup, blueprint: Entity, targetid: EGroup|ScarPosition|Marker, Facing: ScarPosition)
function Cmd_Construct(sgroupid, blueprint, targetid, Facing, queued) end

--- Applies critical hit to entity/squad/sgroup/egroup
---@param playerid Player
---@param target SGroup|EGroup|Squad|Entity
---@param criticalid CriticalID
---@param removeAtHealth number
function Cmd_CriticalHit(playerid, target, criticalid, removeAtHealth) end

--- Detonates a building's demolitions
---@param player Player
---@param target EGroup
---@param queued boolean
---@overload fun(player: Player, target: EGroup)
function Cmd_DetonateDemolitions(player, target, queued) end

--- Orders an EGroup or SGroup to kick out its occupants. If no position is specified, the occupants stay at the exit.
---@param fromgroupid EGroup|SGroup
---@param destination ScarPosition
---@param queued boolean
---@overload fun(fromgroupid: EGroup|SGroup)
---@overload fun(fromgroupid: EGroup|SGroup, destination: ScarPosition)
function Cmd_EjectOccupants(fromgroupid, destination, queued) end

--- Order a squad group to load at a random entity or squad of the group
---@param fromsgroupid SGroup
---@param togroupid EGroup|SGroup
---@param overload boolean
---@param queued boolean
---@param instant boolean
---@return Entity
---@overload fun(fromsgroupid: SGroup, togroupid: EGroup|SGroup)
---@overload fun(fromsgroupid: SGroup, togroupid: EGroup|SGroup, overload: boolean)
---@overload fun(fromsgroupid: SGroup, togroupid: EGroup|SGroup, overload: boolean, queued: boolean)
function Cmd_Garrison(fromsgroupid, togroupid, overload, queued, instant) end

--- Sends a instant reinforce command to all squads in a group.  count represents the number of commands to send.
---@param sgroup SGroup
---@param count integer
function Cmd_InstantReinforceUnit(sgroup, count) end

--- Sends a instant reinforce command to all squads in a group.  count represents the number of commands to send. spawnlocation is where the reinforced unit will spawn. You can optionally find a hidden position by specifying a checktype (CHECK_OFFCAMERA, CHECK_IN_FOW or CHECK_BOTH), and what to do if a hidden position can't be found (SPAWN_ATMARKER, SPAWN_ATSQUAD, or DO_NOTHING) - SPAWN_ATMARKER is the default.
---@param sgroup SGroup
---@param count integer
---@param spawnlocation Marker|ScarPosition
---@param checktype integer
---@param failtype integer
---@overload fun(sgroup: SGroup, count: integer, spawnlocation: Marker|ScarPosition)
---@overload fun(sgroup: SGroup, count: integer, spawnlocation: Marker|ScarPosition, checktype: integer)
function Cmd_InstantReinforceUnitPos(sgroup, count, spawnlocation, checktype, failtype) end

--- Order a squad group to instant setup their team weapon
---@param sgroupid SGroup
---@param queued boolean
---@overload fun(sgroupid: SGroup)
function Cmd_InstantSetupTeamWeapon(sgroupid, queued) end

--- Sends an instant upgrade command to a player, egroup or sgroup. accepts a single upgrade or table of upgrades.
---@param target Player|EGroup|SGroup
---@param blueprint UpgradeBlueprint|table
---@param count integer
---@overload fun(target: Player|EGroup|SGroup, blueprint: UpgradeBlueprint|table)
function Cmd_InstantUpgrade(target, blueprint, count) end

--- Move a squad group to a given position.
---@param sgroup SGroup
---@param position ScarPosition|SGroup|EGroup|Marker
---@param queued boolean
---@param deleteWhenNearMarker Marker
---@param facing ScarPosition
---@param offset integer
---@param distance number
---@param coverSearchRadius number
---@overload fun(sgroup: SGroup, position: ScarPosition|SGroup|EGroup|Marker)
---@overload fun(sgroup: SGroup, position: ScarPosition|SGroup|EGroup|Marker, queued: boolean)
---@overload fun(sgroup: SGroup, position: ScarPosition|SGroup|EGroup|Marker, queued: boolean, deleteWhenNearMarker: Marker)
---@overload fun(sgroup: SGroup, position: ScarPosition|SGroup|EGroup|Marker, queued: boolean, deleteWhenNearMarker: Marker, facing: ScarPosition)
---@overload fun(sgroup: SGroup, position: ScarPosition|SGroup|EGroup|Marker, queued: boolean, deleteWhenNearMarker: Marker, facing: ScarPosition, offset: integer)
---@overload fun(sgroup: SGroup, position: ScarPosition|SGroup|EGroup|Marker, queued: boolean, deleteWhenNearMarker: Marker, facing: ScarPosition, offset: integer, distance: number)
function Cmd_Move(sgroup, position, queued, deleteWhenNearMarker, facing, offset, distance, coverSearchRadius) end

--- Move a squad group out of a position to a certain radius
---@param sgroup SGroup
---@param position ScarPosition
---@param radius integer
---@param queued boolean
---@overload fun(sgroup: SGroup, position: ScarPosition, radius: integer)
function Cmd_MoveAwayFromPos(sgroup, position, radius, queued) end

--- Moves a squad group to the indicated Marker and destroys it.
---@param sgroup SGroup
---@param marker Marker
---@param queued boolean
function Cmd_MoveToAndDespawn(sgroup, marker, queued) end

--- Moves a squad group to the closest marker in a list/table of MarkerIDs.
---@param sgroup SGroup
---@param markertable table
---@return Marker
function Cmd_MoveToClosestMarker(sgroup, markertable) end

--- Command attacker sgroup to attack move to strategic point target; when it is capturable, the sgroup would capture it
---@param attacker SGroup
---@param target EGroup
---@param unknown boolean
---@overload fun(attacker: SGroup, target: EGroup)
function Cmd_MoveToThenCapture(attacker, target, unknown) end

--- Order a squad group to recrew an abandoned vehicle.
---@param sgroupid SGroup
---@param targetid EGroup
---@param queued boolean
---@overload fun(sgroupid: SGroup, targetid: EGroup)
function Cmd_RecrewVehicle(sgroupid, targetid, queued) end

--- Sends a reinforce command to all squads in a group.  count represents the number of commands to send.
---@param sgroup SGroup
---@param count integer
function Cmd_ReinforceUnit(sgroup, count) end

--- Sends a reinforce command to all squads in a group.  count represents the number of commands to send. spawnlocation is where the reinforced unit will spawn. You can optionally find a hidden position by specifying a checktype (CHECK_OFFCAMERA, CHECK_IN_FOW or CHECK_BOTH), and what to do if a hidden position can't be found (SPAWN_ATMARKER, SPAWN_ATSQUAD, or DO_NOTHING) - SPAWN_ATMARKER is the default.
---@param sgroup SGroup
---@param count integer
---@param spawnlocation Marker|ScarPosition
---@param checktype integer
---@param failtype integer
---@overload fun(sgroup: SGroup, count: integer, spawnlocation: Marker|ScarPosition)
---@overload fun(sgroup: SGroup, count: integer, spawnlocation: Marker|ScarPosition, checktype: integer)
function Cmd_ReinforceUnitPos(sgroup, count, spawnlocation, checktype, failtype) end

--- Order a squad group to retreat, optionally to a specific location. The sgroup can be deleted when in proximity of a marker (it assumes a proximity of 5 if you forget to set one on the marker)
---@param sgroup SGroup
---@param location ScarPosition
---@param deleteWhenNearMarker Marker
---@param queued boolean
---@param saveEncountersk boolean
---@param vulnerableRetreat boolean
---@overload fun(sgroup: SGroup)
---@overload fun(sgroup: SGroup, location: ScarPosition)
---@overload fun(sgroup: SGroup, location: ScarPosition, deleteWhenNearMarker: Marker)
---@overload fun(sgroup: SGroup, location: ScarPosition, deleteWhenNearMarker: Marker, queued: boolean)
---@overload fun(sgroup: SGroup, location: ScarPosition, deleteWhenNearMarker: Marker, queued: boolean, saveEncountersk: boolean)
function Cmd_Retreat(sgroup, location, deleteWhenNearMarker, queued, saveEncountersk, vulnerableRetreat) end

--- Order a squad group to revert occupied building
---@param sgroupid SGroup
---@param targetid EGroup
---@param queued boolean
---@overload fun(sgroupid: SGroup, targetid: EGroup)
function Cmd_RevertOccupiedBuilding(sgroupid, targetid, queued) end

--- Orders a squad group to place demolition charges on a building (egroup). Function does nothing if egroup cannot be detonated, or player can't afford the demolitions
---@param sgroupid SGroup
---@param targetid EGroup
---@param skipCostPrereq boolean
---@param queued boolean
---@overload fun(sgroupid: SGroup, targetid: EGroup)
---@overload fun(sgroupid: SGroup, targetid: EGroup, skipCostPrereq: boolean)
function Cmd_SetDemolitions(sgroupid, targetid, skipCostPrereq, queued) end

--- Sends an camouflage stance command to all squads in a group.  stanceid should be the number returned by Util_GetCamouflageStanceID( stancename )
---@param sgroup SGroup
---@param stanceid CamouflageStanceID
function Cmd_SquadCamouflageStance(sgroup, stanceid) end

--- Send a command to the squad to follow a path. Can wait at each waypoint. The sgroup can be deleted when in proximity of a marker if you pass in the marker as the 7th argument (it assumes a proximity of 5 if you forget to set one on the marker)
---@param sgroup SGroup
---@param pathName string
---@param bFromClosest boolean
---@param loop integer
---@param bAttackMove boolean
---@param pauseTime number
---@param deleteWhenNearMarker Marker
---@param queued boolean
---@param bMoveForward boolean
---@overload fun(sgroup: SGroup, pathName: string, bFromClosest: boolean, loop: integer, bAttackMove: boolean, pauseTime: number)
---@overload fun(sgroup: SGroup, pathName: string, bFromClosest: boolean, loop: integer, bAttackMove: boolean, pauseTime: number, deleteWhenNearMarker: Marker)
---@overload fun(sgroup: SGroup, pathName: string, bFromClosest: boolean, loop: integer, bAttackMove: boolean, pauseTime: number, deleteWhenNearMarker: Marker, queued: boolean)
function Cmd_SquadPath(sgroup, pathName, bFromClosest, loop, bAttackMove, pauseTime, deleteWhenNearMarker, queued, bMoveForward) end

--- Causes a squad to patrol a marker attacking any enemies that come within its radius. If used on circular markers, the radius must be at least 5. To stop the squad from patrolling the marker, use Cmd_Stop.
---@param sgroup SGroup
---@param marker Marker
function Cmd_SquadPatrolMarker(sgroup, marker) end

--- Retreats large numbers of units in a staggered, realistic manner.
---@param sgroup SGroup
---@param markers table
---@param maxTries integer
---@param vulnerableRetreat boolean
---@overload fun(sgroup: SGroup, markers: table)
---@overload fun(sgroup: SGroup, markers: table, maxTries: integer)
function Cmd_StaggeredRetreat(sgroup, markers, maxTries, vulnerableRetreat) end

--- Sends a stop command to egroup or sgroup.
---@param group EGroup|SGroup
function Cmd_Stop(group) end

--- Pass in a group to command to 'stop'. Pass in booleans for capturing and building
---@param sgroup1 SGroup
---@param stopCapture boolean
---@param stopBuild boolean
---@overload fun(sgroup1: SGroup)
---@overload fun(sgroup1: SGroup, stopCapture: boolean)
function Cmd_StopSquadsExcept(sgroup1, stopCapture, stopBuild) end

--- Pass in a group to command to 'stop'. Pass in a squad state to filter by.
---@param sgroup1 SGroup
---@param squadStateIDtype any
function Cmd_StopSquadsOnly(sgroup1, squadStateIDtype) end

--- Orders a squad to surrender and awards the local player with an appropriate number of action points
---@param unknown SGroup
---@param actionpoints integer
---@param exitpos ScarPosition
---@param deleteAtExit boolean
---@param removeWeapon boolean
---@overload fun()
---@overload fun(unknown: SGroup)
---@overload fun(unknown: SGroup, actionpoints: integer)
---@overload fun(unknown: SGroup, actionpoints: integer, exitpos: ScarPosition)
---@overload fun(unknown: SGroup, actionpoints: integer, exitpos: ScarPosition, deleteAtExit: boolean)
function Cmd_Surrender(unknown, actionpoints, exitpos, deleteAtExit, removeWeapon) end

--- Orders an sgroup to exit the building or vehicle that it's in. If no position is specified, the sgroup stays at the exit.
---@param sgroupid SGroup
---@param destination ScarPosition
---@param queued boolean
---@overload fun(sgroupid: SGroup)
---@overload fun(sgroupid: SGroup, destination: ScarPosition)
function Cmd_UngarrisonSquad(sgroupid, destination, queued) end

--- Sends an upgrade command to a player, egroup or sgroup. accepts a single upgrade or table of upgrades.
---@param user Player|EGroup|SGroup
---@param blueprint UpgradeBlueprint|table
---@param count integer
---@param instant boolean
---@overload fun(user: Player|EGroup|SGroup, blueprint: UpgradeBlueprint|table)
---@overload fun(user: Player|EGroup|SGroup, blueprint: UpgradeBlueprint|table, count: integer)
function Cmd_Upgrade(user, blueprint, count, instant) end

--- Send a entity command to a entity group(CMD_DefaultAction, CMD_Stop, CMD_Destroy, CMD_BuildSquad, CMD_CancelProduction, CMD_RallyPoint, CMD_AttackForced)
---@param player Player
---@param egroup EGroup
---@param entityCommand Entity
function Command_Entity(player, egroup, entityCommand) end

--- Send an entity ability command (CMD_Ability) to an entity
---@param player Player
---@param egroup EGroup
---@param abilityPBG ScarAbilityPBG
---@param skipCostPrereq boolean
---@param queued boolean
function Command_EntityAbility(player, egroup, abilityPBG, skipCostPrereq, queued) end

--- Send a squad command to a entity group with custom data
---@param player Player
---@param egroup EGroup
---@param squadPbg ScarSquadPBG
function Command_EntityBuildSquad(player, egroup, squadPbg) end

--- Send a entity-based command to an entity group.
---@param player Player
---@param egroup EGroup
---@param entityCommand Entity
---@param target EGroup
function Command_EntityEntity(player, egroup, entityCommand, target) end

--- Send a squad command to a squad group with custom data
---@param player Player
---@param egroup EGroup
---@param entityCommand Entity
---@param cmdparam integer
---@param queued boolean
function Command_EntityExt(player, egroup, entityCommand, cmdparam, queued) end

--- Send a position command to an entity group.
---@param player Player
---@param egroup EGroup
---@param entityCommand Entity
---@param target ScarPosition
function Command_EntityPos(player, egroup, entityCommand, target) end

--- Send a positional ability command (CMD_Ability) to an entity
---@param player Player
---@param egroup EGroup
---@param pos ScarPosition
---@param abilityPBG ScarAbilityPBG
---@param skipCostPrereq boolean
---@param queued boolean
function Command_EntityPosAbility(player, egroup, pos, abilityPBG, skipCostPrereq, queued) end

--- Send a positional/directional ability command (CMD_Ability) to an entity
---@param player Player
---@param egroup EGroup
---@param pos ScarPosition
---@param dir ScarPosition
---@param abilityPBG ScarAbilityPBG
---@param skipCostPrereq boolean
---@param queued boolean
function Command_EntityPosDirAbility(player, egroup, pos, dir, abilityPBG, skipCostPrereq, queued) end

--- Send a dual target (position and squad) command to an entity group.
---@param player Player
---@param egroup EGroup
---@param entityCommand Entity
---@param target ScarPosition
---@param sgroup SGroup
function Command_EntityPosSquad(player, egroup, entityCommand, target, sgroup) end

--- Send a squad-based command to an entity group.
---@param player Player
---@param egroup EGroup
---@param entityCommand Entity
---@param target SGroup
function Command_EntitySquad(player, egroup, entityCommand, target) end

--- Send an entity-targeting ability command (CMD_Ability) to an entity
---@param player Player
---@param egroup EGroup
---@param entityTarget Entity
---@param abilityPBG ScarAbilityPBG
---@param skipCostPrereq boolean
---@param queued boolean
function Command_EntityTargetEntityAbility(player, egroup, entityTarget, abilityPBG, skipCostPrereq, queued) end

--- Send an squad-targeting ability command (CMD_Ability) to an entity
---@param player Player
---@param egroup EGroup
---@param squadTarget Squad
---@param abilityPBG ScarAbilityPBG
---@param skipCostPrereq boolean
---@param queued boolean
function Command_EntityTargetSquadAbility(player, egroup, squadTarget, abilityPBG, skipCostPrereq, queued) end

--- Send a squad command to a entity group with custom data
---@param player Player
---@param egroup EGroup
---@param upgrade ScarUpgradePBG
---@param instant boolean
---@param queued boolean
function Command_EntityUpgrade(player, egroup, upgrade, instant, queued) end

--- Send a player command to a player
---@param player Player
---@param dest Player
---@param playerCommand Player
function Command_Player(player, dest, playerCommand) end

--- Send a player ability command (PCMD_Ability) to a player
---@param player Player
---@param dest Player
---@param abilityPBG ScarAbilityPBG
---@param skipCostPrereq boolean
function Command_PlayerAbility(player, dest, abilityPBG, skipCostPrereq) end

--- Send an entity command to a player.
---@param player Player
---@param dest Player
---@param playerCommand Player
---@param target EGroup
function Command_PlayerEntity(player, dest, playerCommand, target) end

--- Send a player command to itself to act upon single with custom parameter and index data (PCMD_CriticalHit)
---@param player Player
---@param egroup EGroup
---@param playerCommand Player
---@param criticalPBG ScarCriticalPBG
---@param removeAtHealth number
---@param queued boolean
function Command_PlayerEntityCriticalHit(player, egroup, playerCommand, criticalPBG, removeAtHealth, queued) end

