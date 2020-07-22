--- Sets the volume for all groups except the one specified.  Valid volume values are 0 to 1.
---@param name string
---@param volume number
---@param time number
function Sound_SetVolumeInv(name, volume, time) end

--- Starts recording the sound driver output
---@param name string
function Sound_StartRecording(name) end

--- Stops sound associated with the container handle
---@param handle integer
function Sound_Stop(handle) end

--- Stops all sounds associated with the container manager.
function Sound_StopAll() end

--- Stop current playing music
---@param fade number
---@param delay number
function Sound_StopMusic(fade, delay) end

--- Stops recording the sound driver output
function Sound_StopRecording() end

--- Overrides default stealth speech auto-detect mechanism. Stealth speech will play when sunlight brightness is below the threshold, with 0 being total darkness and 1 being full brightness. Set to -1 to use the default behavior.
---@param sunlightThreshold number
function Speech_SetGlobalStealthRead(sunlightThreshold) end

--- Allows the squad to use this ability
---@param squad Squad
---@param ability ScarAbilityPBG
function Squad_AddAbility(squad, ability) end

--- Add to the list of slot items to drop when this squad is wiped out
---@param squad Squad
---@param pbg ScarSlotItemPBG
---@param dropChance number
---@param exclusive boolean
function Squad_AddSlotItemToDropOnDeath(squad, pbg, dropChance, exclusive) end

--- Returns true if squad can capture stategic point
---@param squad Squad
---@param entity Entity
---@return boolean
function Squad_CanCaptureStrategicPoint(squad, entity) end

--- True if the squad can capture the entity sync weapon
---@param pSquad Squad
---@param pEntity Entity
---@return boolean
function Squad_CanCaptureTeamWeapon(pSquad, pEntity) end

--- Test whether a squad can be ordered to do this ability on any member of the target EGroup
---@param caster Squad
---@param ability AbilityBlueprint
---@param target_egroup EGroup
function Squad_CanCastAbilityOnEGroup(caster, ability, target_egroup) end

--- Test whether a squad can be ordered to do this ability on the target squad
---@param castingSquad Squad
---@param abilityPBG ScarAbilityPBG
---@param targetEntity Entity
---@return boolean
function Squad_CanCastAbilityOnEntity(castingSquad, abilityPBG, targetEntity) end

--- Test whether a squad can be ordered to do this ability on the target squad
---@param castingSquad Squad
---@param abilityPBG ScarAbilityPBG
---@param targetPos ScarPosition
---@return boolean
function Squad_CanCastAbilityOnPosition(castingSquad, abilityPBG, targetPos) end

--- Test whether a squad can be ordered to do this ability on any member of the target SGroup
---@param caster Squad
---@param ability AbilityBlueprint
---@param target_sgroup SGroup
function Squad_CanCastAbilityOnSGroup(caster, ability, target_sgroup) end

--- Test whether a squad can be ordered to do this ability on the target squad
---@param castingSquad Squad
---@param abilityPBG ScarAbilityPBG
---@param targetSquad Squad
---@return boolean
function Squad_CanCastAbilityOnSquad(castingSquad, abilityPBG, targetSquad) end

--- Cancels an item in a production queue.  Index 0 is the currently producing item.
---@param squad Squad
---@param index integer
function Squad_CancelProductionQueueItem(squad, index) end

--- Checks whether a squad can hold any squad
---@param squad Squad
---@return boolean
function Squad_CanHold(squad) end

--- Returns true if the squad is available to be reinforced
---@param squad Squad
---@return boolean
function Squad_CanInstantReinforceNow(squad) end

--- Checks whether a squad can load another squad
---@param squad Squad
---@param loadthis Squad
---@param bCheckSquadState boolean
---@param bOverload boolean
---@return boolean
function Squad_CanLoadSquad(squad, loadthis, bCheckSquadState, bOverload) end

--- True if the squad can pickup the entity slot item
---@param pSquad Squad
---@param pEntity Entity
---@return boolean
function Squad_CanPickupSlotItem(pSquad, pEntity) end

--- True if the squad can recrew the entity
---@param pSquad Squad
---@param pEntity Entity
---@return boolean
function Squad_CanRecrew(pSquad, pEntity) end

--- Returns true if the distance between a target entity and the source squad is less than it squad's sight distance.  There is no LOS or FOW check.
---@param squad Squad
---@param entity Entity
---@return boolean
function Squad_CanSeeEntity(squad, entity) end

--- Returns true if the distance between a target squad and the source squad is less than it squad's sight distance.  There is no LOS or FOW check.
---@param squad Squad
---@param target Squad
---@return boolean
function Squad_CanSeeSquad(squad, target) end

--- Clears any previous posture suggestions made to a squad
---@param squad Squad
function Squad_ClearPostureSuggestion(squad) end

--- Instantly adds an upgrade to a given squad
---@param pSquad Squad
---@param upgradePBG ScarUpgradePBG
function Squad_CompleteUpgrade(pSquad, upgradePBG) end

--- Returns the number of units currently in a squad (spawned AND despawned!!)
---@param squad Squad
---@return integer
function Squad_Count(squad) end

--- Create a squad, spawn it and assign it to a player.
---@param sbp ScarSquadPBG
---@param player Player
---@param loadoutCount integer
---@param pos ScarPosition
---@param toward ScarPosition
---@return Squad
function Squad_CreateAndSpawnToward(sbp, player, loadoutCount, pos, toward) end

--- Despawn the entire squad at its current position.
---@param squad Squad
function Squad_DeSpawn(squad) end

--- Remove an squad from the world and destroy it.
---@param squad Squad
function Squad_Destroy(squad) end

--- Sets whether a squad can produce anything (including upgrades)
---@param squad Squad
---@param enable boolean
function Squad_EnableProductionQueue(squad, enable) end

--- Enables or disables the surprise feature on thie given squad
---@param squad Squad
---@param enable boolean
function Squad_EnableSurprise(squad, enable) end

--- ZERO-BASED get of entities out of squads
---@param squad Squad
---@param index integer
---@return Entity
function Squad_EntityAt(squad, index) end

--- Set the rotation of all troopers in a squad to face the position.
---@param squad Squad
---@param pos ScarPosition
function Squad_FacePosition(squad, pos) end

--- Get 2 squads to face each other. This function works on spawned squads only.
---@param squad1 Squad
---@param squad2 Squad
function Squad_FaceSquad(squad1, squad2) end

--- Tries to find cover within a certain radius of a position. If no cover is found, it returns the position used for the search.
---@param squad Squad
---@param pos ScarPosition
---@param coverSearchRadius number
---@return ScarPosition
function Squad_FindCover(squad, pos, coverSearchRadius) end

--- Tries to find cover within a certain radius of a position, traveling a max distance to get there, and possibly comparing against current position's cover. If no cover is found, it returns the position used for the search.
---@param squad Squad
---@param pos ScarPosition
---@param coverSearchRadius number
---@param maxPathDistanceFromGoal number
---@param compareToCurrentCover boolean
---@return ScarPosition
function Squad_FindCoverCompareCurrent(squad, pos, coverSearchRadius, maxPathDistanceFromGoal, compareToCurrentCover) end

--- Get a squad from a mission editor ID.
---@param id integer
---@return Squad
function Squad_FromWorldID(id) end

--- Returns the active squad command.
---@param squad Squad
---@return Squad
function Squad_GetActiveCommand(squad) end

--- Get name of current Squad AI attack plan
---@param squad Squad
---@return string
function Squad_GetAttackPlan(squad) end

--- Find the squad member current or forced targets. If found, the targets squads are added to the sgroup. Entity targets like buildings are ignored
---@param squad Squad
---@param group SGroup
function Squad_GetAttackTargets(squad, group) end

--- Returns the name of the squad blueprint (from the attribute editor)
---@param squad Squad
---@return ScarSquadPBG
function Squad_GetBlueprint(squad) end

--- Returns a number representing how good squad cover is -1 for awful, 0 for none, 1 for light, 2 for heavy.
---@param pSquad Squad
---@return integer
function Squad_GetCoverLevel(pSquad) end

--- Returns the squad's destination, if it's moving. IMPORTANT: you must only call this function if Squad_HasDestination has returned true.
---@param squad Squad
---@return ScarPosition
function Squad_GetDestination(squad) end

--- Returns an integer containing the unqiue squad ID for this squad.
---@param squad Squad
---@return integer
function Squad_GetGameID(squad) end

--- Returns the average heading of the spawned units in the squad. The heading is currently a lua table with three entries (x, y, z)
---@param squad Squad
---@return ScarPosition
function Squad_GetHeading(squad) end

--- Returns the current health of a squad.
---@param squad Squad
---@return number
function Squad_GetHealth(squad) end

--- Returns the max health of the squad.
---@param squad Squad
---@return number
function Squad_GetHealthMax(squad) end

--- Returns how much of an original squad's health is left, accounting for deaths (ex: a squad of 3 riflemen would be at 50% health, since they started with 6 members) Note: This is the same percentage that the UI uses.
---@param squad Squad
---@return number
function Squad_GetHealthPercentage(squad) end

--- Get which building (entity) is the squad garrisoned
---@param squad Squad
---@return Entity
function Squad_GetHoldEntity(squad) end

--- Get which vehicle (squad) is the squad garrisoned
---@param squad Squad
---@return Squad
function Squad_GetHoldSquad(squad) end

--- Check if the squad is invulnerable or not
---@param squad Squad
---@return boolean
function Squad_GetInvulnerable(squad) end

--- Returns the number of invulnerable member
---@param squad Squad
---@return integer
function Squad_GetInvulnerableEntityCount(squad) end

--- Returns the highest invulnerable min cap percentage from members of the squad.
---@param squad Squad
---@return number
function Squad_GetInvulnerableMinCap(squad) end

--- Find the last squad attacker on this squad. If found, the squad is added to the sgroup
---@param squad Squad
---@param group SGroup
function Squad_GetLastAttacker(squad, group) end

--- Find the squad attackers on this squad from the last seconds specified. If found, the squads are added to the sgroup. Building attackers are ignored
---@param squad Squad
---@param group SGroup
---@param timeSeconds number
function Squad_GetLastAttackers(squad, group, timeSeconds) end

--- Find the last entity attacker on this squad. If found, the entity added to egroup
---@param pSquad Squad
---@param pEGroup EGroup
function Squad_GetLastEntityAttacker(pSquad, pEGroup) end

--- Returns the max number of units allowed in the squad
---@param squad Squad
---@return integer
function Squad_GetMax(squad) end

--- Returns the current minimum armor of a squad.
---@param squad Squad
---@return number
function Squad_GetMinArmor(squad) end

--- Get the number of slot items with the same ID that the squad has
---@param squad Squad
---@param pbg ScarSlotItemPBG
---@return integer
function Squad_GetNumSlotItem(squad, pbg) end

--- Returns a position relative to a squad's current position and orientation. see LuaConsts.scar for explanation of 'offset' parameter.
---@param squad Squad
---@param offset integer
---@param distance number
---@return ScarPosition
function Squad_GetOffsetPosition(squad, offset, distance) end

--- Get name of current Squad AI reaction plan
---@param squad Squad
---@return string
function Squad_GetPinnedPlan(squad) end

--- Returns the Player owner of the given squad. Squad MUST NOT be owned by the world.
---@param squad Squad
---@return Player
function Squad_GetPlayerOwner(squad) end

--- Returns the average position of the spawned units in the squad. The position is currently a lua table with three entries (x, y, z)
---@param squad Squad
---@return ScarPosition
function Squad_GetPosition(squad) end

--- Returns the average position of the despawned AND spawned units in the squad.
---@param squad Squad
---@return ScarPosition
function Squad_GetPositionDeSpawned(squad) end

--- Returns the blueprint for a production queue item with index.
---@param squad Squad
---@param index integer
---@return PropertyBagGroup
function Squad_GetProductionQueueItem(squad, index) end

--- Returns the production type (PITEM_Upgrade, PITEM_Spawn, PITEM_SquadUpgrade, PITEM_SquadReinforce, PITEM_PlayerUpgrade) for a production queue item with index.
---@param squad Squad
---@param index integer
---@return integer
function Squad_GetProductionQueueItemType(squad, index) end

--- Returns the number of items in the squad's production queue.
---@param squad Squad
---@return integer
function Squad_GetProductionQueueSize(squad) end

--- Get name of current Squad AI reaction plan
---@param squad Squad
---@return string
function Squad_GetReactionPlan(squad) end

--- Get name of current Squad AI retaliation plan
---@param squad Squad
---@return string
function Squad_GetRetaliationPlan(squad) end

--- Returns the ID of the slot item. Use Squad_GetSlotItemCount to determine how many slot items the squad has. The first index is 1
---@param squad Squad
---@param index integer
---@return integer
function Squad_GetSlotItemAt(squad, index) end

--- Returns how many slot items this squad has
---@param squad Squad
---@return integer
function Squad_GetSlotItemCount(squad) end

--- Returns a table of SlotItem ID's that this squad currently owns
---@param squadid Squad
---@return table
function Squad_GetSlotItemsTable(squadid) end

--- Adds all squads held by 'squad' to an sgroup
---@param squad Squad
---@param sgroup SGroup
---@return boolean
function Squad_GetSquadsHeld(squad, sgroup) end

--- Check current squad suppresion level. Return value from 0 to 1
---@param squad Squad
---@return number
function Squad_GetSuppression(squad) end

--- Gets the mobile driver squad from a vehicle squad.
---@param pSquad Squad
---@return Squad
function Squad_GetVehicleMobileDriverSquad(pSquad) end

--- Get current squad veterancy experience
---@param squad Squad
---@return number
function Squad_GetVeterancyExperience(squad) end

--- Get current squad veterancy rank.
---@param squad Squad
---@return integer
function Squad_GetVeterancyRank(squad) end

--- Gives a slot item to the squad. Can fail due to not enough slots left
---@param squad Squad
---@param pbg ScarSlotItemPBG
function Squad_GiveSlotItem(squad, pbg) end

--- Gives all slot items in a table to the squad. The table should come from Squad_GetSlotItemsTable
---@param squadid Squad
---@param itemTable table
function Squad_GiveSlotItemsFromTable(squadid, itemTable) end

--- Returns true if there's an active command currently for the squad
---@param squad Squad
---@return boolean
function Squad_HasActiveCommand(squad) end

--- Return true if any entity in the squad has any critical applied to it
---@param squad Squad
---@return boolean
function Squad_HasAnyCritical(squad) end

--- Check if a squad has a critical or not
---@param squad Squad
---@param critical CriticalID
---@return boolean
function Squad_HasCritical(squad, critical) end

--- Returns whether this squad is moving and has a destination
---@param squad Squad
---@return boolean
function Squad_HasDestination(squad) end

--- Returns true if a squad has a production queue.
---@param squad Squad
---@return boolean
function Squad_HasProductionQueue(squad) end

--- Returns true if the given squad has a setup weapon.
---@param pSquad Squad
---@return boolean
function Squad_HasSetupWeapon(pSquad) end

--- Check if a squad has a specific slot item
---@param squad Squad
---@param slotItem SlotItemID
---@return boolean
function Squad_HasSlotItem(squad, slotItem) end

--- Returns true if the given squad has soldiers in it (includes team weapons)
---@param pSquad Squad
---@return boolean
function Squad_HasSoldier(pSquad) end

--- Returns true if the squad is carrying some kind of team weapon
---@param squad Squad
---@return boolean
function Squad_HasTeamWeapon(squad) end

--- Return true if the squad has purchased the specified upgrade.
---@param squad Squad
---@param pbg ScarUpgradePBG
---@return boolean
function Squad_HasUpgrade(squad, pbg) end

--- Returns true if the given squad has a vehicle in it (includes team weapons)
---@param pSquad Squad
---@return boolean
function Squad_HasVehicle(pSquad) end

--- Increase current squad veterancy experience
---@param squad Squad
---@param experience number
---@param silent boolean
---@param applyModifiers boolean
function Squad_IncreaseVeterancyExperience(squad, experience, silent, applyModifiers) end

--- Increase current squad veterancy rank
---@param squad Squad
---@param numranks integer
---@param silent boolean
function Squad_IncreaseVeterancyRank(squad, numranks, silent) end

--- Stops current squads activity and instant setup the team weapon if they have one
---@param squad Squad
function Squad_InstantSetupTeamWeapon(squad) end

--- Returns true if any unit in the squad is attacking within the time
---@param squad Squad
---@param time number
---@return boolean
function Squad_IsAttacking(squad, time) end

--- Returns whether ANY entity in the squad is camouflaged
---@param squad Squad
---@return boolean
function Squad_IsCamouflaged(squad) end

--- True if squad is currently performing the given ability
---@param squad Squad
---@param pbg ScarAbilityPBG
---@return boolean
function Squad_IsDoingAbility(squad, pbg) end

--- Returns whether the passed in squad is female
---@param squad Squad
---@return boolean
function Squad_IsFemale(squad) end

--- Check if the squad has a hold on anything (use this on vehicles)
---@param squad Squad
---@return boolean
function Squad_IsHoldingAny(squad) end

--- Returns true if ALL or ANY troopers in a squad are in cover.
---@param squadId Squad
---@param all boolean
---@return boolean
function Squad_IsInCover(squadId, all) end

--- Check if the squad is garrisoned in entity (building)
---@param squad Squad
---@return boolean
function Squad_IsInHoldEntity(squad) end

--- Check if the squad is loaded in squad (vehicle
---@param squad Squad
---@return boolean
function Squad_IsInHoldSquad(squad) end

--- Returns whether any entity in the squad is moving
---@param squad Squad
---@return boolean
function Squad_IsMoving(squad) end

--- True if squad is currently pinned
---@param squad Squad
---@return boolean
function Squad_IsPinned(squad) end

--- True if squad is currently pinned or suppressed.
---@param squad Squad
---@return boolean
function Squad_IsPinnedOrSuppressed(squad) end

--- Returns true if the squad is currently reinforcing.  This function will return false if the squad does not have a reinforce ext.
---@param squad Squad
---@return boolean
function Squad_IsReinforcing(squad) end

--- Returns true if the squad is currently retreating
---@param squadid Squad
---@return boolean
function Squad_IsRetreating(squadid) end

--- True if squad is currently suppressed
---@param squad Squad
---@return boolean
function Squad_IsSuppressed(squad) end

--- Returns true if any unit in the squad is under attack within the time
---@param squad Squad
---@param time number
---@return boolean
function Squad_IsUnderAttack(squad, time) end

--- Returns true if squad is under attack by enemy from a particular player
---@param squad Squad
---@param pAttackerOwner Player
---@param time number
---@return boolean
function Squad_IsUnderAttackByPlayer(squad, pAttackerOwner, time) end

--- Returns true if the squad was under attack from a certain direction (8 offset types, see LuaConsts.scar)
---@param squad Squad
---@param offset integer
---@param timeSeconds number
---@return boolean
function Squad_IsUnderAttackFromDirection(squad, offset, timeSeconds) end

--- Returns true if the squad is currently upgrading something specific.
---@param squad Squad
---@param upgrade ScarUpgradePBG
---@return boolean
function Squad_IsUpgrading(squad, upgrade) end

--- Returns true if the squad is currently upgrading anything.
---@param squad Squad
---@return boolean
function Squad_IsUpgradingAny(squad) end

--- Check if a squad with the given ID can be found in the world
---@param id integer
---@return boolean
function Squad_IsValid(id) end

--- Kill whole squad.  Sets health to 0, and triggers death effects.
---@param squad Squad
function Squad_Kill(squad) end

--- get squad pop cost, use CT_Personnel, CT_Vehicle, CT_Medic for captype
---@param squad Squad
---@param type CapType
---@return number
function Squad_Population(squad, type) end

--- Removes an ability that was previously added by Squad_AddAbility. You cannot remove static abilities (from AE: squad_ability_ext)
---@param squad Squad
---@param ability ScarAbilityPBG
function Squad_RemoveAbility(squad, ability) end

--- Removes a slot item from the squad.
---@param squad Squad
---@param index integer
---@param bInstantWeaponChange boolean
function Squad_RemoveSlotItemAt(squad, index, bInstantWeaponChange) end

--- Removes an upgrade from a squad
---@param squad Squad
---@param upgrade ScarUpgradePBG
function Squad_RemoveUpgrade(squad, upgrade) end

--- Give squad action points
---@param squad Squad
---@param actionPoint number
function Squad_RewardActionPoints(squad, actionPoint) end

--- ZERO-BASED get of entity blueprints out of squad blueprint.
---@param sbp ScarSquadPBG
---@param index integer
---@return ScarEntityPBG
function Squad_SBPEntityAt(sbp, index) end

--- Returns the max number of units allowed in the squad blueprint.
---@param sbp ScarSquadPBG
---@return integer
function Squad_SBPGetMax(sbp) end

--- Set animation state of a state machine for a squad Please only use this for simple animations
---@param squadid Squad
---@param stateMachineName string
---@param stateName string
function Squad_SetAnimatorState(squadid, stateMachineName, stateName) end

--- Set overriding Squad AI attack plan
---@param squad Squad
---@param planName string
function Squad_SetAttackPlan(squad, planName) end

--- Set the health of all units in a squad.  Health must be in range [0.0, 1.0]
---@param squad Squad
---@param healthPercent number
function Squad_SetHealth(squad, healthPercent) end

--- Set invulnerability on the squad. Reset time is in seconds. If it it set, the invulnerability will expire after this time.
---@param squad Squad
---@param enable boolean
---@param reset_time number
function Squad_SetInvulnerable(squad, enable, reset_time) end

--- Make a squad invulnerable to physical damage when number of members drop to or below specified count.
---@param squad Squad
---@param invEntityCount integer
---@param resetTime number
function Squad_SetInvulnerableEntityCount(squad, invEntityCount, resetTime) end

--- Make a squad invulnerable to physical damage.
---@param squad Squad
---@param minHealthPercentage number
---@param resetTime number
function Squad_SetInvulnerableMinCap(squad, minHealthPercentage, resetTime) end

--- set invulnerability to critical effect for all entities in the entire squad. Invulnerable to critical also means that kills a entity will not have effect
---@param squad Squad
---@param invulnerable boolean
function Squad_SetInvulnerableToCritical(squad, invulnerable) end

--- Set soldier mood mode.
---@param squad Squad
---@param mood Squad
function Squad_SetMoodMode(squad, mood) end

--- Sets the squad's move type
---@param squad Squad
---@param movetypePBG ScarMoveTypePBG
function Squad_SetMoveType(squad, movetypePBG) end

--- Set overriding Squad AI pinned plan
---@param squad Squad
---@param planName string
function Squad_SetPinnedPlan(squad, planName) end

--- Changes the owner of the given squad.
---@param squad Squad
---@param owner Player
function Squad_SetPlayerOwner(squad, owner) end

--- Moves the squad to an arbitrary new position
---@param squad Squad
---@param pos ScarPosition
---@param toward ScarPosition
function Squad_SetPosition(squad, pos, toward) end

--- Set overriding Squad AI reaction plan
---@param squad Squad
---@param planName string
function Squad_SetReactionPlan(squad, planName) end

--- Set entity inside the squad to be recrewable or not when it becomes abandoned
---@param squad Squad
---@param capturable boolean
function Squad_SetRecrewable(squad, capturable) end

--- Set overriding Squad AI idle retaliation plan
---@param squad Squad
---@param planName string
function Squad_SetRetaliationPlan(squad, planName) end

--- Enables shared team production on a building (teammates can build using THEIR resources)
---@param squad Squad
---@param shared boolean
function Squad_SetSharedProductionQueue(squad, shared) end

--- Set current squad suppresion level. Suppression value value from 0 to 1
---@param squad Squad
---@param percentage number
function Squad_SetSuppression(squad, percentage) end

--- Turn on/off display of the unit portrait veterancy stars
---@param squad Squad
---@param visible boolean
function Squad_SetVeterancyDisplayVisibility(squad, visible) end

--- Makes a squad neutral
---@param squad Squad
function Squad_SetWorldOwned(squad) end

--- Spawn the entire squad at a given position
---@param squad Squad
---@param pos ScarPosition
---@return boolean
function Squad_Spawn(squad, pos) end

--- Spawn the entire squad at a given position
---@param squad Squad
---@param pos ScarPosition
---@param toward ScarPosition
---@return boolean
function Squad_SpawnToward(squad, pos, toward) end

--- Split the squad into 2. The new squad size is specified by the number passed in
---@param squad Squad
---@param num integer
---@return Squad
function Squad_Split(squad, num) end

--- Abruptly stops an active ability
---@param squad Squad
---@param ability ScarAbilityPBG
---@param bEarlyExit boolean
function Squad_StopAbility(squad, ability, bEarlyExit) end

--- Suggests a posture to a squad, lasting the passed duration
---@param squad Squad
---@param posture integer
---@param duration number
function Squad_SuggestPosture(squad, posture, duration) end

--- Warps a squad immediately to a new position
---@param squad Squad
---@param pos ScarPosition
function Squad_WarpToPos(squad, pos) end

--- Checks if this squad can cause suppression.
---@param aiPlayer Player
---@param pSquad Squad
---@return boolean
function SquadQuery_CanCauseSuppression(aiPlayer, pSquad) end

--- Checks if this squad can decrew the entity.
---@param pDriverSquad Squad
---@param pDecrewTargetEntity Entity
---@return boolean
function SquadQuery_CanDecrew(pDriverSquad, pDecrewTargetEntity) end

--- Returns the current squad target for the given squad (null if no target, or target is non-squad entity)
---@param pSquad Squad
---@return Squad
function SquadQuery_GetAnySquadCombatTarget(pSquad) end

--- Returns how many buildings a player has lost
---@param player Player
---@return integer
function Stats_BuildingsLost(player) end

--- Returns how many infantry a player has lost
---@param player Player
---@return integer
function Stats_InfantryLost(player) end

--- Returns a player's total kills
---@param player Player
---@return integer
function Stats_KillsTotal(player) end

--- Returns player id at given index
---@param index integer
---@return integer
function Stats_PlayerAt(index) end

--- Returns how many players in the game
---@return integer
function Stats_PlayerCount() end

--- Returns how many resources a player has gathered
---@param player Player
---@return ResourceAmount
function Stats_ResGathered(player) end

--- Returns how many resources a player has spent
---@param player Player
---@return ResourceAmount
function Stats_ResSpent(player) end

--- Returns how many soldiers a player has killed
---@param player Player
---@return integer
function Stats_SoldiersKilled(player) end

--- Returns how many structures a player has killed
---@param player Player
---@return integer
function Stats_StructuresKilled(player) end

--- Takes a statistic function and totals up the results for all the players on a given team
---@param teamindex integer
---@param statfunction function
---@return integer
function Stats_TeamTally(teamindex, statfunction) end

--- Returns game time, in seconds
---@return integer
function Stats_TotalDuration() end

--- Returns how many squads a playe has lost
---@param player Player
---@return integer
function Stats_TotalSquadsLost(player) end

--- Returns how many soldiers an SBP have killed. ex: how many soldiers did player2's riflemen kill?
---@param player Player
---@param sbp ScarSquadPBG
---@return integer
function Stats_UnitSoldierKills(player, sbp) end

--- Returns how many structures an SBP have killed. ex: how many structures did player2's riflemen kill?
---@param player Player
---@param sbp ScarSquadPBG
---@return integer
function Stats_UnitStructureKills(player, sbp) end

--- Returns how many entities an SBP have killed. ex: how many entities did player2's riflemen kill?
---@param player Player
---@param sbp ScarSquadPBG
---@return integer
function Stats_UnitTotalKills(player, sbp) end

--- Returns how many vehicles an SBP have killed. ex: how many vehicles did player2's riflemen kill?
---@param player Player
---@param sbp ScarSquadPBG
---@return integer
function Stats_UnitVehicleKills(player, sbp) end

--- Returns how many vehicles a playe has killed
---@param player Player
---@return integer
function Stats_VehiclesKilled(player) end

--- Returns how many vehicles a player has lost
---@param player Player
---@return integer
function Stats_VehiclesLost(player) end

--- Add a stinger to trigger at a specific location
---@param player Player
---@param marker Marker
---@param eventname EVENT
function Stinger_AddEvent(player, marker, eventname) end

--- Add a stinger to trigger at a specific location
---@param player Player
---@param marker Marker
---@param functionname function
function Stinger_AddFunction(player, marker, functionname) end

--- Remove all stingers triggered from a specific location
---@param player Player
---@param marker Marker
function Stinger_Remove(player, marker) end

--- Prematurely finish all queued speech
function Subtitle_EndAllSpeech() end

--- Prematurely finish currently playing speech and advance the next one in queue
function Subtitle_EndCurrentSpeech() end

--- Plays a global speech with subtitle and actor icon in the overlay
---@param icon string
---@param loc LocString
---@param disableIconSubtitle boolean
---@param continueButton boolean
---@param blockInput boolean
---@param stickySubtitle boolean
---@param additionalPath string
---@return integer
function Subtitle_PlaySpeech(icon, loc, disableIconSubtitle, continueButton, blockInput, stickySubtitle, additionalPath) end

--- Removes "sticky" state from currently playing speech (if any)
function Subtitle_UnstickCurrentSpeech() end

--- Checks whether a sync weapon can attack a target without moving or turning.
---@param weapon SyncWeaponID
---@param target EGroup|SGroup|ScarPosition|Marker
---@return boolean
function SyncWeapon_CanAttackNow(weapon, target) end

--- Returns true if a sync weapon still exists in the game world
---@param weapon SyncWeaponID
---@return boolean
function SyncWeapon_Exists(weapon) end

--- Returns the EntityID of a sync weapon, or nil if it's been destroyed
---@param weapon SyncWeaponID
---@return Entity
function SyncWeapon_GetEntity(weapon) end

--- Registers the sync weapon in the egroup and returns a SyncWeaponID you can use to keep track of it
---@param egroup EGroup
---@return SyncWeaponID
function SyncWeapon_GetFromEGroup(egroup) end

--- Registers the sync weapon in the sgroup and returns a SyncWeaponID you can use to keep track of it
---@param sgroup SGroup
---@return SyncWeaponID
function SyncWeapon_GetFromSGroup(sgroup) end

--- Returns the position of a sync weapon, or nil if it's been destroyed
---@param weapon SyncWeaponID
---@return ScarPosition
function SyncWeapon_GetPosition(weapon) end

--- Checks whether or not the actual sync weapon in a squad attacking.
---@param weapon SyncWeaponID
---@param time number
---@return boolean
function SyncWeapon_IsAttacking(weapon, time) end

--- Returns true if the specified player owns the sync weapon. Use a playerid of nil to see if it's unonwed.
---@param weapon SyncWeaponID
---@param player Player
---@return boolean
---@overload fun(weapon: SyncWeaponID)
function SyncWeapon_IsOwnedByPlayer(weapon, player) end

--- Sets whether a weapon to auto-target things or not
---@param weapon SyncWeaponID
---@param hardpoint string
---@param enable boolean
function SyncWeapon_SetAutoTargetting(weapon, hardpoint, enable) end

--- Checks if a table contains the specified item
---@param OriginalTable table
---@param item Item
---@return boolean
function Table_Contains(OriginalTable, item) end

--- Copies the contents of the original table returns a new table with the contents of that table
---@param OriginalTable table
---@return table
function Table_Copy(OriginalTable) end

