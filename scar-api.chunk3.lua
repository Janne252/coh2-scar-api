--- Returns true if the distance between a target squad and the source entity is less than it entity's sight distance.  There is no LOS or FOW check.
---@param entity Entity
---@param target Squad
---@return boolean
function Entity_CanSeeSquad(entity, target) end

--- Clears any previous posture suggestions made to an entity
---@param entity Entity
function Entity_ClearPostureSuggestion(entity) end

--- Clears the tagged entity used for debugging
function Entity_ClearTagDebug() end

--- Instantly adds an upgrade to a given entity
---@param pEntity Entity
---@param upgradePBG ScarUpgradePBG
function Entity_CompleteUpgrade(pEntity, upgradePBG) end

--- Creates an entity at a given position and assigns it to a given player.  'blueprint' is a string value containing the name of the entity blueprint. This function does not spawn the entity so you will need to call Entity_Spawn to see this entity
---@param ebp ScarEntityPBG
---@param player Player
---@param pos ScarPosition
---@param toward ScarPosition
---@return Entity
function Entity_Create(ebp, player, pos, toward) end

--- Creates an entity at a given position and assigns it to a given player.  'blueprint' is a string value containing the name of the entity blueprint. This function spawns the entity so there is no need to call Entity_Spawn
---@param ebp ScarEntityPBG
---@param pos ScarPosition
---@param toward ScarPosition
---@return Entity
function Entity_CreateENV(ebp, pos, toward) end

--- DeSpawn the entity at its current position
---@param entity Entity
function Entity_DeSpawn(entity) end

--- Remove an entity from the world and destroy it.
---@param entity Entity
function Entity_Destroy(entity) end

--- Disables the death of the given entity building, only works for panel based destructible buldings
---@param pEntity Entity
---@param bDisableDeath boolean
---@return boolean
function Entity_DisableBuildingDeath(pEntity, bDisableDeath) end

--- Damages this entity but only if its a destructible building
---@param pEntity Entity
---@param cam ScarPosition
---@param terrain ScarPosition
---@param dmgType integer
---@param isDestory boolean
---@param radius number
function Entity_DoBuildingDamageRay(pEntity, cam, terrain, dmgType, isDestory, radius) end

--- Sets whether an entity pays attention to its surroundings
---@param entity Entity
---@param attentive boolean
function Entity_EnableAttention(entity, attentive) end

--- Sets whether an entity can produce anything (including upgrades)
---@param entity Entity
---@param enable boolean
function Entity_EnableProductionQueue(entity, enable) end

--- Sets whether an strategic point is active
---@param entity Entity
---@param enable boolean
function Entity_EnableStrategicPoint(entity, enable) end

--- Force constructs this entity but only if its a building
---@param e Entity
function Entity_ForceConstruct(e) end

--- Get an entity from a mission editor ID.
---@param id integer
---@return Entity
function Entity_FromWorldID(id) end

--- Returns the active entity command.
---@param entity Entity
---@return Entity
function Entity_GetActiveCommand(entity) end

--- Returns the entity's blueprint
---@param entity Entity
---@return ScarEntityPBG
function Entity_GetBlueprint(entity) end

--- Returns the construction progress (with range [0.0, 1.0] for a given entity.  Returns 0.0 if the entity is not a building.
---@param pEntity Entity
---@return number
function Entity_GetBuildingProgress(pEntity) end

--- Get cover safety value from the where the entity is standing. The safety value is number from -.5 to .5.
---@param entity Entity
---@return number
function Entity_GetCoverValue(entity) end

--- Returns the entities unique id in the world
---@param entity Entity
---@return integer
function Entity_GetGameID(entity) end

--- Returns the heading of the entity.  The heading is currently a lua table with three entries (x, y, z)
---@param entity Entity
---@return ScarPosition
function Entity_GetHeading(entity) end

--- Returns the health of an entity.
---@param entity Entity
---@return number
function Entity_GetHealth(entity) end

--- Returns the max health of an entity.
---@param entity Entity
---@return number
function Entity_GetHealthMax(entity) end

--- Returns the percentage health, taking into account destructible buildings
---@param entity Entity
---@return number
function Entity_GetHealthPercentage(entity) end

--- Check if the entity is invulnerable or not
---@param squad Squad
---@return boolean
function Entity_GetInvulnerable(squad) end

--- Returns the invulnerable point in terms of percentage
---@param entity Entity
---@return number
function Entity_GetInvulnerableMinCap(entity) end

--- get if an entity is invulnerable to critical effects
---@param entity Entity
---@return boolean
function Entity_GetInvulnerableToCritical(entity) end

--- Find the last squad attacker on this entity. If found, the squad is added to the sgroup
---@param entity Entity
---@param group SGroup
function Entity_GetLastAttacker(entity, group) end

--- Find the squad attackers on this entity from the last seconds specified. If found, the squads are added to the sgroup. Building attackers are ignored
---@param entity Entity
---@param group SGroup
---@param timeSeconds number
function Entity_GetLastAttackers(entity, group, timeSeconds) end

--- Gets the maximum capture crew size from a recrewable entity
---@param entity Entity
---@return integer
function Entity_GetMaxCaptureCrewSize(entity) end

--- Returns a position relative to an entity's current position and orientation. see LuaConsts.scar for explanation of 'offset' parameter.
---@param entity Entity
---@param offset integer
---@param distance number
---@return ScarPosition
function Entity_GetOffsetPosition(entity, offset, distance) end

--- Returns the Player owner of the given entity. Entity MUST NOT be owned by the world.
---@param entity Entity
---@return Player
function Entity_GetPlayerOwner(entity) end

--- Returns the position of the entity.  The position is currently a lua table with three entries (x, y, z)
---@param entity Entity
---@return ScarPosition
function Entity_GetPosition(entity) end

--- Returns the blueprint for a production queue item with index.
---@param entity Entity
---@param index integer
---@return PropertyBagGroup
function Entity_GetProductionQueueItem(entity, index) end

--- Returns the production type (PITEM_Upgrade, PITEM_Spawn, PITEM_SquadUpgrade, PITEM_SquadReinforce, PITEM_PlayerUpgrade) for a production queue item with index.
---@param entity Entity
---@param index integer
---@return ProductionItemType
function Entity_GetProductionQueueItemType(entity, index) end

--- Returns the number of items in the entities production queue.
---@param entity Entity
---@return integer
function Entity_GetProductionQueueSize(entity) end

--- Returns the radius of the entity
---@param entity Entity
---@return number
function Entity_GetRadius(entity) end

--- Returns the resource type of this point
---@param entity Entity
---@return ResourceType
function Entity_GetResourceType(entity) end

--- Returns the inner sight radius for this entity
---@param entity Entity
---@return number
function Entity_GetSightInnerHeight(entity) end

--- Returns the inner sight radius for this entity
---@param entity Entity
---@return number
function Entity_GetSightInnerRadius(entity) end

--- Returns the outer sight radius for this entity
---@param entity Entity
---@return number
function Entity_GetSightOuterHeight(entity) end

--- Returns the outer sight radius for this entity
---@param entity Entity
---@return number
function Entity_GetSightOuterRadius(entity) end

--- Returns the Squad for the passed Entity. (May be nullptr)
---@param pEntity Entity
---@return Squad
function Entity_GetSquad(pEntity) end

--- Adds squads held by an entity to an SGroup
---@param pEntity Entity
---@param sgroup SGroup
---@return boolean
function Entity_GetSquadsHeld(pEntity, sgroup) end

--- Gets the total number of panels in a building (returns 0 for anything but panel based destructible buldings)
---@param pEntity Entity
---@return integer
function Entity_GetTotalPanelCount(pEntity) end

--- Gets the current number of undestroyed panels in a building (returns 0 for anything but panel based destructible buldings)
---@param pEntity Entity
---@return integer
function Entity_GetUndestroyedPanelCount(pEntity) end

--- Returns a weapon hardpoint  ( 0 indexed )
---@param entity Entity
---@param hardPointIndex integer
---@return ScarWeaponPBG
function Entity_GetWeaponBlueprint(entity, hardPointIndex) end

--- Returns how many hardpoints an entity has
---@param entity Entity
---@return integer
function Entity_GetWeaponHardpointCount(entity) end

--- Checks if an entity has an ability
---@param entity Entity
---@param ability Ability
---@return boolean
function Entity_HasAbility(entity, ability) end

--- Return true if the entity has any critical applied to it
---@param pEntity Entity
---@return boolean
function Entity_HasAnyCritical(pEntity) end

--- Return true if the entity has the given criticalID applied to it
---@param pEntity Entity
---@param criticalPBG ScarCriticalPBG
---@return boolean
function Entity_HasCritical(pEntity, criticalPBG) end

--- Returns true if an entity has a production queue.
---@param entity Entity
---@return boolean
function Entity_HasProductionQueue(entity) end

--- Return true if the entity has purchased the specified upgrade.
---@param pEntity Entity
---@param upgradePBG ScarUpgradePBG
---@return boolean
function Entity_HasUpgrade(pEntity, upgradePBG) end

--- Strategic point will be captured instantly by the team of the supplied player
---@param entity Entity
---@param player Player
function Entity_InstantCaptureStrategicPoint(entity, player) end

--- Reverts an occupied building
---@param entity Entity
function Entity_InstantRevertOccupiedBuilding(entity) end

--- Returns true if entity is still alive
---@param pEntity Entity
---@return integer
function Entity_IsAlive(pEntity) end

--- Returns true if the entity is attacking within the time
---@param entity Entity
---@param time number
---@return boolean
function Entity_IsAttacking(entity, time) end

--- Returns true if the given entity is a building
---@param e Entity
---@return boolean
function Entity_IsBuilding(e) end

--- Returns true if the given entity is burning (buildings on fire or non-buildings with burn_exts)
---@param e Entity
---@return boolean
function Entity_IsBurning(e) end

--- Returns whether the entity is camouflaged.
---@param entity Entity
---@return boolean
function Entity_IsCamouflaged(entity) end

--- Returns true if the entity is a capturable building
---@param entity Entity
---@return boolean
function Entity_IsCapturableBuilding(entity) end

--- Returns true if entity is a casualty else false
---@param entity Entity
---@return boolean
function Entity_IsCasualty(entity) end

--- Returns whether this entity is cuttable
---@param entity Entity
---@return boolean
function Entity_IsCuttable(entity) end

--- Returns whether this entity's demolition charges are ready to be detonated
---@param entity Entity
---@return boolean
function Entity_IsDemolitionReady(entity) end

--- Returns true if the given blueprint is a building
---@param ebp ScarEntityPBG
---@return integer
function Entity_IsEBPBuilding(ebp) end

--- Returns true if the given blueprint is objcover
---@param ebp ScarEntityPBG
---@return boolean
function Entity_IsEBPObjCover(ebp) end

--- Returns true if the given blueprint is of the given type. Types are defined in type_ext/unit_type_list.
---@param ebp ScarEntityPBG
---@param type string
---@return boolean
function Entity_IsEBPOfType(ebp, type) end

--- Returns whether a hardpoint is active ( 0 indexed )
---@param entity Entity
---@param hardPointIndex integer
---@return boolean
function Entity_IsHardpointActive(entity, hardPointIndex) end

--- Check if the entity has a hold on anything
---@param entity Entity
---@return boolean
function Entity_IsHoldingAny(entity) end

--- Returns true if entity is in cover.
---@param entityId Entity
---@return boolean
function Entity_IsInCover(entityId) end

--- Returns whether an entity is moving.
---@param pEntity Entity
---@return boolean
function Entity_IsMoving(pEntity) end

--- Determines if this entity is of the given type. Types are defined in type_ext/unit_type_list
---@param entity Entity
---@param type string
---@return boolean
function Entity_IsOfType(entity, type) end

--- Returns true if the entity is part of a squad
---@param pEntity Entity
---@return boolean
function Entity_IsPartOfSquad(pEntity) end

--- Returns whether an entity is a plane (has a flight extension)
---@param pEntity Entity
---@return boolean
function Entity_IsPlane(pEntity) end

--- Return true if the entity is a slot item
---@param entity Entity
---@return boolean
function Entity_IsSlotItem(entity) end

--- Returns whether an entity is a soldier
---@param pEntity Entity
---@return boolean
function Entity_IsSoldier(pEntity) end

--- if entity is spawned return true
---@param entity Entity
---@return boolean
function Entity_IsSpawned(entity) end

--- Returns true if the entity is a starting position
---@param entity Entity
---@return boolean
function Entity_IsStartingPosition(entity) end

--- Returns true if the entity is a strategic point.
---@param entity Entity
---@return boolean
function Entity_IsStrategicPoint(entity) end

--- Returns true if strategic point is captured by the team of the player provided.
---@param entity Entity
---@param player Player
---@return boolean
function Entity_IsStrategicPointCapturedBy(entity, player) end

--- Return true if the entity is a team weapon
---@param entity Entity
---@return boolean
function Entity_IsSyncWeapon(entity) end

--- Returns true if the entity is under attack.
---@param entity Entity
---@param time number
---@return boolean
function Entity_IsUnderAttack(entity, time) end

--- Returns true if the entity is under attack by a certain player
---@param entity Entity
---@param pAttackerOwner Player
---@param time number
---@return boolean
function Entity_IsUnderAttackByPlayer(entity, pAttackerOwner, time) end

--- Returns true if the entity was under attack from a certain direction (8 offset types, see LuaConsts.scar)
---@param entity Entity
---@param offset integer
---@param timeSeconds number
---@return boolean
function Entity_IsUnderAttackFromDirection(entity, offset, timeSeconds) end

--- Check if an entity with the given ID can be found in the world
---@param id integer
---@return boolean
function Entity_IsValid(id) end

--- Returns whether an entity can be vaulted
---@param pEntity Entity
---@return boolean
function Entity_IsVaultable(pEntity) end

--- Returns whether an entity is a vehicle
---@param pEntity Entity
---@return boolean
function Entity_IsVehicle(pEntity) end

--- Returns true if entityID is a victory point
---@param pEntity Entity
---@return boolean
function Entity_IsVictoryPoint(pEntity) end

--- Kill the entity.  Sets health to 0, and triggers death effects.
---@param entity Entity
function Entity_Kill(entity) end

--- Calls a function when an entity gets destroyed by the player clicking the "Detonate me" button next to an entity.
---@param entity Entity
---@param _function function
function Entity_NotifyOnPlayerDemolition(entity, _function) end

--- get entity pop cost, use CT_Personnel, CT_Vehicle, CT_Medic for captype
---@param entity Entity
---@param type CapType
---@return number
function Entity_Population(entity, type) end

--- Removes all booby-traps on this entity
---@param pEntityTarget Entity
function Entity_RemoveBoobyTraps(pEntityTarget) end

--- Remove a critical from a given entity
---@param pEntity Entity
---@param criticalPBG ScarCriticalPBG
function Entity_RemoveCritical(pEntity, criticalPBG) end

--- Removes all demolition charges on an entity
---@param entity Entity
function Entity_RemoveDemolitions(entity) end

--- Removes an upgrade from an entity
---@param entity Entity
---@param upgrade ScarUpgradePBG
function Entity_RemoveUpgrade(entity, upgrade) end

--- Trigger animation action for an entity. Please only use this for simple animations
---@param pEntity Entity
---@param actionName string
function Entity_SetAnimatorAction(pEntity, actionName) end

--- Set animation action parameter for an entity. Please only use this for simple animations
---@param pEntity Entity
---@param actionParameterName string
---@param actionParameterValue string
function Entity_SetAnimatorActionParameter(pEntity, actionParameterName, actionParameterValue) end

--- Set animation event for an entity. Please only use this for simple animations
---@param pEntity Entity
---@param eventName string
function Entity_SetAnimatorEvent(pEntity, eventName) end

--- Set animation state of a state machine for an entity. Please only use this for simple animations
---@param pEntity Entity
---@param stateMachineName string
---@param stateName string
function Entity_SetAnimatorState(pEntity, stateMachineName, stateName) end

--- Set animation variable value for an entity. Please only use this for simple animations
---@param pEntity Entity
---@param variableName string
---@param value number
function Entity_SetAnimatorVariable(pEntity, variableName, value) end

--- Set the visual fire state of a building (doesn't actually set the building on fire)
---@param pEntity Entity
---@param newFireState BuildingFireState
function Entity_SetBuildingVisualFireState(pEntity, newFireState) end

--- Overrides crushable behavior for an entity
---@param entity Entity
---@param crushable boolean
function Entity_SetCrushable(entity, crushable) end

--- Changes the crush mode of a given entity.  Entity must have a crush extension.
---@param entity Entity
---@param mode CrushMode
function Entity_SetCrushMode(entity, mode) end

--- Fully wires this entity for demolitions, if it's set up to be demolishable. 'player' is the one that owns the demolitions and can detonate them.
---@param player Player
---@param entity Entity
---@param numcharges integer
---@return boolean
function Entity_SetDemolitions(player, entity, numcharges) end

--- 
---@param enable boolean
---@param pEntity Entity
function Entity_SetEnableCasualty(enable, pEntity) end

--- Sets the heading of the entity.  The position is currently a lua table with three entries (x, y, z)
---@param entity Entity
---@param pos ScarPosition
---@param bInterpolate boolean
function Entity_SetHeading(entity, pos, bInterpolate) end

--- Set the health of an entity.  healthPercent must be in the range [0.0, 1.0].
---@param entity Entity
---@param healthPercent number
function Entity_SetHealth(entity, healthPercent) end

--- Set invulnerability on the entity. Reset time is in seconds. If it it set, the invulnerability will expire after this time.
---@param entity Entity
---@param enable boolean
---@param reset_time number
function Entity_SetInvulnerable(entity, enable, reset_time) end

--- Make an entity invulnerable to physical damage when health is below the minimum health percentage
---@param entity Entity
---@param minHealthPercentage number
---@param resetTime number
function Entity_SetInvulnerableMinCap(entity, minHealthPercentage, resetTime) end

--- set an entity invulnerable to critical effects. Invulnerable to critical also means that kills a entity will not have effect
---@param entity Entity
---@param invulnerable boolean
function Entity_SetInvulnerableToCritical(entity, invulnerable) end

--- Sets an object on fire (also works on buildings)
---@param pEntity Entity
function Entity_SetOnFire(pEntity) end

--- Changes the owner of the given squad.
---@param entity Entity
---@param owner Player
function Entity_SetPlayerOwner(entity, owner) end

--- Sets the position of the entity.  The position is currently a lua table with three entries (x, y, z)
---@param entity Entity
---@param pos ScarPosition
function Entity_SetPosition(entity, pos) end

--- Sets whether or not a projectile can explode.
---@param projectile Entity
---@param canExplode boolean
function Entity_SetProjectileCanExplode(projectile, canExplode) end

--- Sets an entity to be recrewable or not when it becomes abandoned
---@param entity Entity
---@param capturable boolean
function Entity_SetRecrewable(entity, capturable) end

--- Enables shared team production on a building (teammates can build using THEIR resources)
---@param entity Entity
---@param shared boolean
function Entity_SetSharedProductionQueue(entity, shared) end

--- Sets a strategic point to neutral (not owned by any team)
---@param entity Entity
function Entity_SetStrategicPointNeutral(entity) end

--- Makes an entity neutral
---@param entity Entity
function Entity_SetWorldOwned(entity) end

--- Shows/hides the entity in the simulation
---@param entity Entity
---@param hide boolean
function Entity_SimHide(entity, hide) end

--- Spawn the entity at its current position
---@param entity Entity
function Entity_Spawn(entity) end

--- Abruptly stops an active ability
---@param entity Entity
---@param ability ScarAbilityPBG
---@param bEarlyExit boolean
function Entity_StopAbility(entity, ability, bEarlyExit) end

--- Suggests a posture to an entity, lasting the passed duration
---@param entity Entity
---@param posture integer
---@param duration number
function Entity_SuggestPosture(entity, posture, duration) end

--- Returns whether this entity is set up to have demolitions placed on it
---@param entity Entity
---@return boolean
function Entity_SupportsDemolition(entity) end

--- Tags the entity to be used for debugging
---@param entity Entity
function Entity_TagDebug(entity) end

--- Hides or shows an entity visually.
---@param pEntity Entity
---@param bHide boolean
function Entity_VisHide(pEntity, bHide) end

--- Checks if this entity can cause suppression.
---@param aiPlayer Player
---@param entity Entity
---@return boolean
function EntityQuery_CanCauseSuppression(aiPlayer, entity) end

--- Check if the entity can load squad and shoot its target after loading (This function should only be called by AI)
---@param entity Entity
---@param squad Squad
---@param bCheckSquadState boolean
---@param bOverload boolean
---@return boolean
function EntityQuery_CanLoadSquadAndAttackCurrentTarget(entity, squad, bCheckSquadState, bOverload) end

--- Find the closest open position from a given position for a given Entity blueprint.
---@param aiPlayer Player
---@param pEntityPBG PropertyBagGroup
---@param posIn ScarPosition
---@return ScarPosition
function EntityQuery_FindClosestOpenPositionForStructure(aiPlayer, pEntityPBG, posIn) end

--- Converts any enum value to a number.
---@param var any
---@return integer
function Enum_ToNumber(var) end

--- Converts any enum value to a string.
---@param var any
---@return string
function Enum_ToString(var) end

--- Creates a Callback Event that triggers when ALL of the specified events are triggered.
---@param callback function
---@param data table
---@param events table
---@param delay number
---@return EventID
---@overload fun(callback: function, data: table, events: table)
function Event_CreateAND(callback, data, events, delay) end

--- Creates a Callback Event that triggers when ANY of the specified events are triggered.
---@param callback function
---@param data table
---@param events table
---@param delay number
---@return EventID
---@overload fun(callback: function, data: table, events: table)
function Event_CreateOR(callback, data, events, delay) end

--- Pauses for a given amount of time. This function MUST be called from a CTRL object in NISlet events only!
---@param seconds number
function Event_Delay(seconds) end

--- Callback given callback function with data, when the given squad/entity/position is on screen.
---@param callback function
---@param data table
---@param player Player
---@param element Marker|ScarPosition|SGroup|EGroup
---@param all any|boolean
---@param percent number
---@param canSee boolean
---@param delay number
---@return EventID
---@overload fun(callback: function, data: table, player: Player, element: Marker|ScarPosition|SGroup|EGroup)
---@overload fun(callback: function, data: table, player: Player, element: Marker|ScarPosition|SGroup|EGroup, all: any|boolean)
---@overload fun(callback: function, data: table, player: Player, element: Marker|ScarPosition|SGroup|EGroup, all: any|boolean, percent: number)
---@overload fun(callback: function, data: table, player: Player, element: Marker|ScarPosition|SGroup|EGroup, all: any|boolean, percent: number, canSee: boolean)
function Event_ElementOnScreen(callback, data, player, element, all, percent, canSee, delay) end

--- Trigger a Callback when an encounter is killed.
---@param callback function
---@param data table
---@param unknown table|encID
---@param delay number
---@return EventID
---@overload fun(callback: function, data: table)
---@overload fun(callback: function, data: table, unknown: table|encID)
function Event_EncounterIsDead(callback, data, unknown, delay) end

--- checks to see if the given event currently exists
---@param eventID EventID
---@return boolean
function Event_Exists(eventID) end

--- Callback given callback function with data, when the egroup is burning
---@param callback function
---@param data table
---@param group_entityID EGroup|Entity
---@param delay number
---@return EventID
---@overload fun(callback: function, data: table, group_entityID: EGroup|Entity)
function Event_GroupBurning(callback, data, group_entityID, delay) end

--- Callback when the number of squads/entities in a group is <= count.
---@param callback any
---@param data table
---@param group EGroup|SGroup
---@param count integer
---@param spawned boolean
---@param delay number
---@return EventID
function Event_GroupCount(callback, data, group, count, spawned, delay) end

--- Callback given callback function with data, when entire group has a specified critical.
---@param callback function
---@param data table
---@param group SGroup
---@param delay_1 number
---@param Critical Blueprint
---@param ALL boolean
---@param delay_2 number
---@return EventID
function Event_GroupHasCritical(callback, data, group, delay_1, Critical, ALL, delay_2) end

--- Callback given callback function with data, when group is dead (empty).
---@param callback function
---@param data table
---@param group EGroup|SGroup
---@param delay number
---@param retreating boolean
---@return EventID
---@overload fun(callback: function, data: table, group: EGroup|SGroup)
---@overload fun(callback: function, data: table, group: EGroup|SGroup, delay: number)
function Event_GroupIsDead(callback, data, group, delay, retreating) end

--- Callback given callback function with data, when group is not pinned
---@param callback function
---@param data table
---@param group SGroup
---@param ANY_ALL boolean
---@param delay number
---@return EventID
---@overload fun(callback: function, data: table, group: SGroup)
---@overload fun(callback: function, data: table, group: SGroup, ANY_ALL: boolean)
function Event_GroupIsNotPinned(callback, data, group, ANY_ALL, delay) end

--- Callback given callback function with data, when group is not suppressed.
---@param callback function
---@param data table
---@param group SGroup
---@param ANY_ALL boolean
---@param delay number
---@return EventID
---@overload fun(callback: function, data: table, group: SGroup)
---@overload fun(callback: function, data: table, group: SGroup, ANY_ALL: boolean)
function Event_GroupIsNotSuppressed(callback, data, group, ANY_ALL, delay) end

--- Callback given callback function with data, when group is pinned
---@param callback function
---@param data table
---@param group SGroup
---@param ANY_ALL boolean
---@param delay number
---@return EventID
---@overload fun(callback: function, data: table, group: SGroup)
---@overload fun(callback: function, data: table, group: SGroup, ANY_ALL: boolean)
function Event_GroupIsPinned(callback, data, group, ANY_ALL, delay) end

--- Callback given callback function with data, when group is suppressed.
---@param callback function
---@param data table
---@param group SGroup
---@param ANY_ALL boolean
---@param delay number
---@return EventID
---@overload fun(callback: function, data: table, group: SGroup)
---@overload fun(callback: function, data: table, group: SGroup, ANY_ALL: boolean)
function Event_GroupIsSuppressed(callback, data, group, ANY_ALL, delay) end

--- Callback given callback function with data, when the amount of entities left in a group drops below amount.
---@param callback function
---@param data table
---@param group EGroup|SGroup
---@param amount integer
---@param delay number
---@return EventID
---@overload fun(callback: function, data: table, group: EGroup|SGroup, amount: integer)
function Event_GroupLeftAlive(callback, data, group, amount, delay) end

--- Returns true if any event is currently running [at or below (more important than) the priority threshold. If not specified, ignores threshold.]
---@param priority_threshold integer
---@return boolean
---@overload fun()
function Event_IsAnyRunning(priority_threshold) end

--- Callback given callback function with data, when group is doing an attack in the last attackTime seconds.
---@param callback function
---@param data table
---@param group EGroup|SGroup
---@param all any|boolean
---@param attackTime number
---@param delay number
---@return EventID
---@overload fun(callback: function, data: table, group: EGroup|SGroup, all: any|boolean, attackTime: number)
function Event_IsDoingAttack(callback, data, group, all, attackTime, delay) end

--- Callback given callback function with data, when group is doing an attack or is under attack in the last attackTime seconds.
---@param callback function
---@param data table
---@param group EGroup|SGroup
---@param all any|boolean
---@param attackTime number
---@param delay number
---@return EventID
---@overload fun(callback: function, data: table, group: EGroup|SGroup, all: any|boolean, attackTime: number)
function Event_IsEngaged(callback, data, group, all, attackTime, delay) end

--- Callback given callback function with data, when an element is holding anything or nothing.
---@param callback function
---@param data table
---@param target EGroup|SGroup|Entity|Squad
---@param empty boolean
---@param delay number
---@return EventID
---@overload fun(callback: function, data: table, target: EGroup|SGroup|Entity|Squad, empty: boolean)
function Event_IsHoldingAny(callback, data, target, empty, delay) end

--- Callback given callback function with data, when an element is holding a specific BP.
---@param callback function
---@param data table
---@param target EGroup|SGroup|Entity|Squad
---@param blueprint Squad|table
---@param delay number
---@return EventID
function Event_IsHoldingBP(callback, data, target, blueprint, delay) end

--- Callback given callback function with data, when a target element is in a hold or not.
---@param callback function
---@param data table
---@param target SGroup|Squad
---@param inHold boolean
---@param delay number
---@return EventID
function Event_IsInHold(callback, data, target, inHold, delay) end

--- Returns true if a given event is running.
---@param f function
---@return boolean
function Event_IsQueued(f) end

--- Returns true if a given event is running.
---@param f function
---@return boolean
function Event_IsRunning(f) end

--- Callback when a target element is selected.
---@param callback function
---@param data table
---@param target SGroup|Squad|EGroup|Entity
---@param delay number
---@return EventID
function Event_IsSelected(callback, data, target, delay) end

--- Callback given callback function with data, when group is under attack in the last attackTime seconds.
---@param callback function
---@param data table
---@param group EGroup|SGroup
---@param ANY_ALL boolean
---@param attackTime number
---@param player Player
---@param delay number
---@return EventID
---@overload fun(callback: function, data: table, group: EGroup|SGroup, ANY_ALL: boolean, attackTime: number)
---@overload fun(callback: function, data: table, group: EGroup|SGroup, ANY_ALL: boolean, attackTime: number, player: Player)
function Event_IsUnderAttack(callback, data, group, ANY_ALL, attackTime, player, delay) end

--- Callback when an SGroup's member count <= amount.
---@param callback function
---@param data table
---@param sgroup SGroup
---@param amount integer
---@param delay number
---@return EventID
function Event_MembersCount(callback, data, sgroup, amount, delay) end

--- Callback given callback function with data, a narrative event is running.
---@param callback function
---@param data table
---@param delay number
---@return EventID
---@overload fun(callback: function, data: table)
function Event_NarrativeEventsNotRunning(callback, data, delay) end

--- Callback given callback function with data, when no narrative events are running.
---@param callback function
---@param data table
---@param delay number
---@return EventID
---@overload fun(callback: function, data: table)
function Event_NarrativeEventsRunning(callback, data, delay) end

--- Callback given callback function with data, when the given objective has started.
---@param callback function
---@param data table
---@param Objective ObjectiveID
---@param delay number
---@return EventID
function Event_ObjectiveStarted(callback, data, Objective, delay) end

--- Callback given callback function with data, when an element's health falls below (or above if higher is true) given threshold.
---@param callback function
---@param data table
---@param target EGroup|SGroup|Entity|Squad
---@param threshold number
---@param higher boolean
---@param delay number
---@return EventID
---@overload fun(callback: function, data: table, target: EGroup|SGroup|Entity|Squad, threshold: number, higher: boolean)
function Event_OnHealth(callback, data, target, threshold, higher, delay) end

--- Callback given function with data, when player has greater than or equal to amountOfBuildings
---@param callback function
---@param data table
---@param player Player
---@param unknown integer
---@param delay number
---@return EventID
---@overload fun(callback: function, data: table, player: Player)
---@overload fun(callback: function, data: table, player: Player, unknown: integer)
function Event_PlayerBuildingCount(callback, data, player, unknown, delay) end

--- Callback given callback function with data, when the given player can not see the element.
---@param callback function
---@param data table
---@param player Player
---@param element Squad|SGroup|Entity|EGroup|Marker|ScarPosition|table
---@param all any|boolean
---@param delay number
---@return EventID
---@overload fun(callback: function, data: table, player: Player, element: Squad|SGroup|Entity|EGroup|Marker|ScarPosition|table)
---@overload fun(callback: function, data: table, player: Player, element: Squad|SGroup|Entity|EGroup|Marker|ScarPosition|table, all: any|boolean)
function Event_PlayerCanNotSeeElement(callback, data, player, element, all, delay) end

--- Callback given callback function with data, when the given player can see the element.
---@param callback function
---@param data table
---@param player_team Player|integer
---@param element Squad|SGroup|Entity|EGroup|Marker|ScarPosition|table
---@param all any|boolean
---@param delay number
---@return EventID
---@overload fun(callback: function, data: table, player_team: Player|integer, element: Squad|SGroup|Entity|EGroup|Marker|ScarPosition|table)
---@overload fun(callback: function, data: table, player_team: Player|integer, element: Squad|SGroup|Entity|EGroup|Marker|ScarPosition|table, all: any|boolean)
function Event_PlayerCanSeeElement(callback, data, player_team, element, all, delay) end

