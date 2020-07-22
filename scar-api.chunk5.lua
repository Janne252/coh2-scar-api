--- Check if the entity is on screen currently (not strict)
---@param squad Squad
---@param percent number
---@return boolean
function Misc_IsSquadOnScreen(squad, percent) end

--- Returns true if the specified squad is currently selected.
---@param squad Squad
---@return boolean
function Misc_IsSquadSelected(squad) end

--- Remove all command restrictions.
function Misc_RemoveCommandRestriction() end

--- Set the marker in which commands are restricted to.
---@param marker ScarMarker
function Misc_RestrictCommandsToMarker(marker) end

--- Save a screenshot
---@return string
function Misc_Screenshot() end

--- Set the graphic file type for screenshot (.jpg, .tga)
---@param fileExtension string
function Misc_ScreenshotExt(fileExtension) end

--- Set the full selection to the specified entity.
---@param entity Entity
function Misc_SelectEntity(entity) end

--- Set the full selection to the specified entity.
---@param squad Squad
---@param selected boolean
function Misc_SelectSquad(squad, selected) end

--- Enables/disables right-click command input.
---@param enabled boolean
function Misc_SetDefaultCommandsEnabled(enabled) end

--- Shows or hides designer splats, which are splats in the UI folder
---@param bVisible boolean
function Misc_SetDesignerSplatsVisibility(bVisible) end

--- Makes an entity belong to a specific control group. If it already belongs to another control group, it's removed from that one before being added to the new one.
---@param entity Entity
---@param groupIndex integer
function Misc_SetEntityControlGroup(entity, groupIndex) end

--- Disable/enable selectability of the specified entity.
---@param entity Entity
---@param selectable boolean
function Misc_SetEntitySelectable(entity, selectable) end

--- Enables/disables selection input.
---@param enabled boolean
function Misc_SetSelectionInputEnabled(enabled) end

--- Makes a squad belong to a specific control group. If it already belongs to another control group, it's removed from that one before being added to the new one.
---@param squad Squad
---@param groupIndex integer
function Misc_SetSquadControlGroup(squad, groupIndex) end

--- Disable/enable selectability of the specified squad.
---@param squad Squad
---@param selectable boolean
function Misc_SetSquadSelectable(squad, selectable) end

--- Hide all world entities for NIS performance debugging.
function Misc_ToggleEntities() end

--- Plays the defined end cinematic and ends an SP scenario with a Victory.
function Mission_Complete() end

--- Ends an SP scenario with a Failure.
function Mission_Fail() end

--- Return a reference to the Secondary Objective table. Nil if objective has not been started yet.
---@return table
function Mission_GetSecondaryObjective() end

--- Selects a possible secondary objective and starts it.
---@param showTitle boolean
---@param skipIntel boolean
---@param index integer
---@overload fun(showTitle: boolean, skipIntel: boolean)
function Mission_StartBonusObjective(showTitle, skipIntel, index) end

--- Ends an SP scenario with a Victory without playing any end cinematics.
function Mission_Win() end

--- Applies an entity modifier to an entity.
---@param modifier Modifier
---@param entity Entity
---@return integer
function Modifier_ApplyToEntity(modifier, entity) end

--- Applies a player modifier to a player.
---@param modifier Modifier
---@param player Player
---@return integer
function Modifier_ApplyToPlayer(modifier, player) end

--- Applies a squad modifier to a squad.
---@param modifier Modifier
---@param squad Squad
---@return integer
function Modifier_ApplyToSquad(modifier, squad) end

--- Returns a modifier that you can apply to stuff.
---@param applicationType ModifierApplicationType
---@param modtype string
---@param usageType ModifierUsageType
---@param exclusive boolean
---@param value number
---@param v any
---@return Modifier
function Modifier_Create(applicationType, modtype, usageType, exclusive, value, v) end

--- Todo.
---@param modifier Modifier
function Modifier_Destroy(modifier) end

--- Checks whether the modifier is enabled (requires an Entity and an Entity enable/disable modifier)
---@param pEntity Entity
---@param modtype string
---@param bEnabledByDefault boolean
---@return boolean
function Modifier_IsEnabled(pEntity, modtype, bEnabledByDefault) end

--- Checks if a modifier is enabled on all or any entities in an egroup
---@param egroup EGroup
---@param modifier string
---@param modtype string
---@param all boolean
---@param bEnabledByDefault boolean
function Modifier_IsEnabledOnEGroup(egroup, modifier, modtype, all, bEnabledByDefault) end

--- Remove an applied modifier.
---@param modifier ModID
function Modifier_Remove(modifier) end

--- Removes all SCAR-applied modifiers for a specific EGroup.
---@param egroup EGroup
function Modifier_RemoveAllFromEGroup(egroup) end

--- Removes all SCAR-applied modifiers for a specific SGroup.
---@param sgroup SGroup
function Modifier_RemoveAllFromSGroup(sgroup) end

--- Modifies the initial delay time of an ability
---@param player Player
---@param ability AbilityBlueprint
---@param scalefactor number
---@return ModID
function Modify_AbilityDelayTime(player, ability, scalefactor) end

--- Modifies the duration of an ability
---@param player Player
---@param ability AbilityBlueprint
---@param scalefactor number
---@return ModID
function Modify_AbilityDurationTime(player, ability, scalefactor) end

--- Modifies the manpower cost of an ability
---@param player Player
---@param ability AbilityBlueprint
---@param scalefactor number
---@param mathtype integer
---@return ModID
---@overload fun(player: Player, ability: AbilityBlueprint, scalefactor: number)
function Modify_AbilityManpowerCost(player, ability, scalefactor, mathtype) end

--- Modifies the maximum casting range of an ability. NOTE: it assumes that the actions that the ability executes can also handle the modified range
---@param player Player
---@param ability AbilityBlueprint
---@param scalefactor number
---@return ModID
function Modify_AbilityMaxCastRange(player, ability, scalefactor) end

--- Modifies the minimum casting range of an ability. NOTE: it assumes that the actions that the ability executes can also handle the modified range
---@param player Player
---@param ability AbilityBlueprint
---@param scalefactor number
---@return ModID
function Modify_AbilityMinCastRange(player, ability, scalefactor) end

--- Modifies the munitions cost of an ability
---@param player Player
---@param ability AbilityBlueprint
---@param scalefactor number
---@param mathtype integer
---@return ModID
---@overload fun(player: Player, ability: AbilityBlueprint, scalefactor: number)
function Modify_AbilityMunitionsCost(player, ability, scalefactor, mathtype) end

--- Modifies the recharge time of an ability
---@param player Player
---@param ability AbilityBlueprint
---@param scalefactor number
---@return ModID
function Modify_AbilityRechargeTime(player, ability, scalefactor) end

--- Modifies a squad or entity's armor
---@param group SGroup|EGroup
---@param scalefactor number
---@param exclusive boolean
---@return ModID
---@overload fun(group: SGroup|EGroup, scalefactor: number)
function Modify_Armor(group, scalefactor, exclusive) end

--- Modifies the capture time of all strategic points in an EGroup. DO NOT USE THIS FUNCTION.
---@param sgroup EGroup
---@param scalefactor number
---@return ModID
function Modify_CaptureTime(sgroup, scalefactor) end

--- Enable or disable hold (garrisoning) for an egroup or sgroup
---@param group EGroup
---@param disable boolean
---@return ModID
function Modify_DisableHold(group, disable) end

--- Allows paratroopers to reinforce from the sky.  Set to true to enable, false to disable.
---@param playerId Player
---@param enable boolean
function Modify_Enable_ParadropReinforcements(playerId, enable) end

--- Modifies the time taken to build a particular EBP. This only affects the given player.
---@param playerId Player
---@param ebp string
---@param scalefactor number
---@return ModID
function Modify_EntityBuildTime(playerId, ebp, scalefactor) end

--- Modifies the cost of an entity for a particular player. Possible resource types are RT_Manpower, RT_Munition, RT_Fuel, RT_Action
---@param player Player
---@param blueprint string
---@param resourcetype integer
---@param addition integer
---@return ModID
function Modify_EntityCost(player, blueprint, resourcetype, addition) end

--- Modifies the veterancy experience received by a player
---@param player Player
---@param factor number
---@return ModID
function Modify_PlayerExperienceReceived(player, factor) end

--- Modifies the production rate of a player.
---@param sgroup Player
---@param scalefactor number
---@return ModID
function Modify_PlayerProductionRate(sgroup, scalefactor) end

--- Modifies a player's resource cap. Possible resource types are RT_Manpower, RT_Munition, RT_Fuel. Possible math types are MUT_Multiplication, MUT_Addition.
---@param playerId Player
---@param resourceType integer
---@param scalefactor number
---@param mathtype integer
---@return ModID
---@overload fun(playerId: Player, resourceType: integer, scalefactor: number)
function Modify_PlayerResourceCap(playerId, resourceType, scalefactor, mathtype) end

--- Modifies a player's resource bonus received (ie. one-time resource gifts) Possible resource types are RT_Manpower, RT_Munition, RT_Fuel, RT_Action
---@param playerId Player
---@param resourceType integer
---@param scalefactor number
---@return ModID
function Modify_PlayerResourceGift(playerId, resourceType, scalefactor) end

--- Modifies a player's incoming resource rate. Possible resource types are RT_Manpower, RT_Munition, RT_Fuel, RT_Action. Possible math types are MUT_Multiplication, MUT_Addition.
---@param playerId Player
---@param resourceType integer
---@param scalefactor number
---@param mathtype integer
---@return ModID
---@overload fun(playerId: Player, resourceType: integer, scalefactor: number)
function Modify_PlayerResourceRate(playerId, resourceType, scalefactor, mathtype) end

--- Modifies the sight radius for a player.
---@param player Player
---@param scalefactor number
---@return ModID
function Modify_PlayerSightRadius(player, scalefactor) end

--- Modifies the production rate of all factories in an EGroup
---@param sgroup EGroup
---@param scalefactor number
---@return ModID
function Modify_ProductionRate(sgroup, scalefactor) end

--- Modifies the build time for a particular upgrade. This only affects the given player.
---@param entity Entity
---@param scalefactor number
---@return ModID
function Modify_ProductionSpeed(entity, scalefactor) end

--- Modifies a projectile's delay_detonate_time.
---@param player Player
---@param entityBP PropertyBagGroup
---@param factor number
---@return ModID
function Modify_ProjectileDelayTime(player, entityBP, factor) end

--- Modifies the chance of a squad/entity being hit
---@param group SGroup|EGroup
---@param scalefactor number
---@param exclusive boolean
---@return ModID
---@overload fun(group: SGroup|EGroup, scalefactor: number)
function Modify_ReceivedAccuracy(group, scalefactor, exclusive) end

--- Modifies the damage a squad/entity receives.
---@param group SGroup|EGroup
---@param scalefactor number
---@param exclusive boolean
---@return ModID
---@overload fun(group: SGroup|EGroup, scalefactor: number)
function Modify_ReceivedDamage(group, scalefactor, exclusive) end

--- Modifies the rate at which a squad gets suppressed
---@param sgroup SGroup
---@param scalefactor number
---@return ModID
function Modify_ReceivedSuppression(sgroup, scalefactor) end

--- Sets the cost of an upgrade. This only affects the given player
---@param playerId Player
---@param upgrade UpgradeID
---@param resourceType integer
---@param newCost number
---@return ModID
function Modify_SetUpgradeCost(playerId, upgrade, resourceType, newCost) end

--- Modifies the sight radius for an egroup or an sgroup.
---@param group SGroup|EGroup
---@param scalefactor number
---@return ModID
function Modify_SightRadius(group, scalefactor) end

--- Modifies the availability limit of a squad type for any given player
---@param player Player
---@param blueprint string
---@param addition integer
---@return ModID
function Modify_SquadAvailability(player, blueprint, addition) end

--- Modifies a squad's rate at which it will capture a strategic point.
---@param group SGroup
---@param scalefactor number
---@return ModID
function Modify_SquadCaptureRate(group, scalefactor) end

--- Modifies the sight radius of a squad type for any given player
---@param player Player
---@param blueprint string
---@param scalefactor number
---@return ModID
function Modify_SquadTypeSightRadius(player, blueprint, scalefactor) end

--- Modifies the target priority of a squad or entity group from the attacker. The value is an addition
---@param group SGroup|EGroup
---@param addition integer
---@return ModID
function Modify_TargetPriority(group, addition) end

--- Modifies a sync weapon only.
---@param group SGroup|EGroup
---@param modifier string
---@param scalefactor number
---@param hardpoint string
---@return ModID
---@overload fun(group: SGroup|EGroup, modifier: string, scalefactor: number)
function Modify_TeamWeapon(group, modifier, scalefactor, hardpoint) end

--- Modifies the territory radius for an egroup or an sgroup.
---@param group EGroup
---@param scalefactor number
---@return ModID
function Modify_TerritoryRadius(group, scalefactor) end

--- Modifies the maximum speed for a vehicle. This has no effect on infantry.
---@param sgroup SGroup
---@param scalefactor number
---@return ModID
function Modify_UnitSpeed(sgroup, scalefactor) end

--- Modifies the Veterancy Experience value of the target SGroup, EGroup, Entity, or Squad. Mathtype is Multiplication by default
---@param group SGroup|EGroup
---@param scalefactor number
---@param mathtype integer
---@return ModID
---@overload fun(group: SGroup|EGroup, scalefactor: number)
function Modify_UnitVeterancyValue(group, scalefactor, mathtype) end

--- Modifies the build time for a particular upgrade. This only affects the given player.
---@param playerId Player
---@param upgrade UpgradeID
---@param scalefactor number
---@return ModID
function Modify_UpgradeBuildTime(playerId, upgrade, scalefactor) end

--- Modifies the upkeep for a player
---@param playerId Player
---@param scalefactor number
---@return ModID
function Modify_Upkeep(playerId, scalefactor) end

--- Modifies a squad's weapon accuracy.
---@param group SGroup|EGroup
---@param hardpoint string
---@param scalefactor number
---@return ModID
function Modify_WeaponAccuracy(group, hardpoint, scalefactor) end

--- Modifies a squad's weapon burst length (time).
---@param group SGroup|EGroup
---@param hardpoint string
---@param scalefactor number
---@return ModID
function Modify_WeaponBurstLength(group, hardpoint, scalefactor) end

--- Modifies a squad's weapon rate of fire.
---@param group SGroup|EGroup
---@param hardpoint string
---@param scalefactor number
---@return ModID
function Modify_WeaponBurstRateOfFire(group, hardpoint, scalefactor) end

--- Modifies a squad's weapon cooldown time.
---@param group SGroup|EGroup
---@param hardpoint string
---@param scalefactor number
---@return ModID
function Modify_WeaponCooldown(group, hardpoint, scalefactor) end

--- Modifies a squad's weapon damage.
---@param group SGroup|EGroup
---@param hardpoint string
---@param scalefactor number
---@return ModID
function Modify_WeaponDamage(group, hardpoint, scalefactor) end

--- Enables or disables a weapon hardpoint
---@param group SGroup|EGroup
---@param hardpoint string
---@param enabled boolean
---@return ModID
function Modify_WeaponEnabled(group, hardpoint, enabled) end

--- Modifies a squad's weapon penetration. Does not work on artillery (mortar, nebelwerfer, etc.)
---@param group SGroup|EGroup
---@param hardpoint string
---@param scalefactor number
---@return ModID
function Modify_WeaponPenetration(group, hardpoint, scalefactor) end

--- Modifies a squad's weapon range. Does not work on artillery (mortar, nebelwerfer, etc.)
---@param group SGroup|EGroup
---@param hardpoint string
---@param scalefactor number
---@return ModID
function Modify_WeaponRange(group, hardpoint, scalefactor) end

--- Modifies a squad's weapon reload time.
---@param group SGroup|EGroup
---@param hardpoint string
---@param scalefactor number
---@return ModID
function Modify_WeaponReload(group, hardpoint, scalefactor) end

--- Modifies a squad's weapon scatter.
---@param group SGroup|EGroup
---@param hardpoint string
---@param scalefactor number
---@return ModID
function Modify_WeaponScatter(group, hardpoint, scalefactor) end

--- Modifies a squad's weapon suppression. Does not work on artillery (mortar, nebelwerfer, etc.)
---@param group SGroup|EGroup
---@param hardpoint string
---@param scalefactor number
---@return ModID
function Modify_WeaponSuppression(group, hardpoint, scalefactor) end

--- Modifies the vehicle repair rate of all a player's engineers
---@param player Player
---@param factor number
---@param engineer_entity_blueprint string
---@return ModID
function Modify_VehicleRepairRate(player, factor, engineer_entity_blueprint) end

--- Modifies the vehicle rotation speed
---@param group EGroup|SGroup
---@param factor number
---@return ModID
function Modify_VehicleRotationSpeed(group, factor) end

--- Modifies the turret rotation speed of a vehicle squad
---@param group SGroup|EGroup
---@param hardpoint string
---@param scalefactor number
---@return ModID
function Modify_VehicleTurretRotationSpeed(group, hardpoint, scalefactor) end

--- Increases the received accuracy, penetration, and damage on a squad by the scalefactor.  For example, a scalefactor of 2 means that the squad gets 2x the received accuracy, 2x the received penetration, and 2x the received damage.
---@param group EGroup|SGroup
---@param scalefactor number
---@return ModID
function Modify_Vulnerability(group, scalefactor) end

--- Make the passed entity a casualty by triggering the MakeCasualtyAction
---@param pTargetEntity Entity
function ModMisc_MakeCasualtyAction(pTargetEntity) end

--- Make the passed entity a wreck by triggering the MakeWreckAction
---@param pTargetEntity Entity
function ModMisc_MakeWreckAction(pTargetEntity) end

--- Make the passed entity go out of control
---@param pTargetEntity Entity
function ModMisc_OOCAction(pTargetEntity) end

--- Initializes and starts cold weather and blizzard mechanics, taking in atmosphere presets to use in each condition. Uses MP values by default. Defaults to NOT starting in blizzard conditions.
---@param blizzard_atmosphere string
---@param default_atmosphere string
---@param startInBlizzard boolean
---@param blizzardData table
---@param useSpeech boolean
---@param transitionOutAtmosphere string
---@overload fun(blizzard_atmosphere: string, default_atmosphere: string)
---@overload fun(blizzard_atmosphere: string, default_atmosphere: string, startInBlizzard: boolean)
---@overload fun(blizzard_atmosphere: string, default_atmosphere: string, startInBlizzard: boolean, blizzardData: table)
---@overload fun(blizzard_atmosphere: string, default_atmosphere: string, startInBlizzard: boolean, blizzardData: table, useSpeech: boolean)
function MP_BlizzardInit(blizzard_atmosphere, default_atmosphere, startInBlizzard, blizzardData, useSpeech, transitionOutAtmosphere) end

--- Create an objective and returns the unique ID for it
---@param player Player
---@param title LocString
---@param desc LocString
---@param icon string
---@param type ObjectiveType
---@param parentID integer
---@return integer
function Obj_Create(player, title, desc, icon, type, parentID) end

--- Delete the objective with the specified ID
---@param objectiveID integer
function Obj_Delete(objectiveID) end

--- Delete all objectives
function Obj_DeleteAll() end

--- Get objective state ( OS_Off, OS_Incomplete, OS_Complete, OS_Failed ) (not strict)
---@param objectiveID integer
---@return ObjectiveState
function Obj_GetState(objectiveID) end

--- Get objective visibility  (not strict)
---@param objectiveID integer
---@return boolean
function Obj_GetVisible(objectiveID) end

--- Hide the objective progress panel.
function Obj_HideProgress() end

--- Set description text localization ID for the objective
---@param objectiveID integer
---@param desc LocString
function Obj_SetDescription(objectiveID, desc) end

--- Set icon path for the objective
---@param objectiveID integer
---@param icon string
function Obj_SetIcon(objectiveID, icon) end

--- Set callback functions for the objective.  (not strict)
---@param id integer
---@param fnType function
---@param f function
function Obj_SetObjectiveFunction(id, fnType, f) end

--- Make the objective progress bar blink or stop blinking.
---@param blinking boolean
function Obj_SetProgressBlinking(blinking) end

--- Set objective state ( OS_Off, OS_Incomplete, OS_Complete, OS_Failed )
---@param objectiveID integer
---@param state ObjectiveState
function Obj_SetState(objectiveID, state) end

--- Set title text localization ID for the objective
---@param objectiveID integer
---@param title LocString
function Obj_SetTitle(objectiveID, title) end

--- Set objective visibility
---@param objectiveID integer
---@param visible boolean
function Obj_SetVisible(objectiveID, visible) end

--- Show the objective progress panel with a progress bar - call repeatedly to update progress.  Value should be normalized between [0 - 1].
---@param title LocString
---@param progress number
function Obj_ShowProgress(title, progress) end

--- Show the objective progress panel with a progress bar - call repeatedly to update progress.  Value should be normalized between [0 - 1].  Appears in center of screen.
---@param title LocString
---@param progress number
function Obj_ShowProgress2(title, progress) end

--- Show the objective progress panel with a timer icon - call repeatedly to update progress.  Value should be in seconds.
---@param title LocString
---@param progress number
function Obj_ShowProgressTimer(title, progress) end

--- Adds a tactical map ping to an objective
---@param objectiveTable table
---@param pos ScarPosition
---@return PingID
function Objective_AddPing(objectiveTable, pos) end

--- Adds multiple UI elements on one position. 'pos' can be group/entity/squad/marker. worldArrow adds a 3D arrow which points to the thing in the world. hintpointText adds a hint point that appears on the thing when moused over. If you're adding an arrow or a hintpoint, this thing will be among those potentially pointed to by the 2D HUD arrow. objectiveArrowOffset is an offset applied to the arrow's position (you can specify a height offset or a 3D position offset).
---@param objTable table
---@param pos ScarPosition
---@param ping boolean
---@param hintpointText LocString
---@param worldArrow boolean
---@param objectiveArrowOffset number|ScarPosition
---@param objectiveArrowFacing Entity|Squad|ScarPosition
---@param actionType HintPointActionType
---@param iconName string
---@return ElementID
---@overload fun(objTable: table, pos: ScarPosition)
---@overload fun(objTable: table, pos: ScarPosition, ping: boolean)
---@overload fun(objTable: table, pos: ScarPosition, ping: boolean, hintpointText: LocString)
---@overload fun(objTable: table, pos: ScarPosition, ping: boolean, hintpointText: LocString, worldArrow: boolean)
---@overload fun(objTable: table, pos: ScarPosition, ping: boolean, hintpointText: LocString, worldArrow: boolean, objectiveArrowOffset: number|ScarPosition)
---@overload fun(objTable: table, pos: ScarPosition, ping: boolean, hintpointText: LocString, worldArrow: boolean, objectiveArrowOffset: number|ScarPosition, objectiveArrowFacing: Entity|Squad|ScarPosition)
---@overload fun(objTable: table, pos: ScarPosition, ping: boolean, hintpointText: LocString, worldArrow: boolean, objectiveArrowOffset: number|ScarPosition, objectiveArrowFacing: Entity|Squad|ScarPosition, actionType: HintPointActionType)
function Objective_AddUIElements(objTable, pos, ping, hintpointText, worldArrow, objectiveArrowOffset, objectiveArrowFacing, actionType, iconName) end

--- Returns whether all primary objectives have been completed.
---@return boolean
function Objective_AreAllPrimaryObjectivesComplete() end

--- 'Completes' an objective. Wrapper function for Objective_SetState with a few other features. If you do not want the objective title to be shown on screen, pass in 'false' for bShowTitle
---@param objTable table
---@param bShowTitle boolean
---@param skipIntel boolean
---@overload fun(objTable: table)
---@overload fun(objTable: table, bShowTitle: boolean)
function Objective_Complete(objTable, bShowTitle, skipIntel) end

--- 'Fails' an objective. Wrapper function for Objective_SetState with a few other features.
---@param objTable table
---@param bShowTitle boolean
---@param skipIntel boolean
---@overload fun(objTable: table)
---@overload fun(objTable: table, bShowTitle: boolean)
function Objective_Fail(objTable, bShowTitle, skipIntel) end

--- Returns the current count associated with this objective.
---@param objTable table
---@return integer
function Objective_GetCounter(objTable) end

--- Returns the amount of seconds on the timer (time remaining or time elapsed, based on the type of timer used)
---@param objTable table
---@return integer
function Objective_GetTimerSeconds(objTable) end

--- Increases the counter that is associated with this objective in the UI. You can provide an amount to increase by.
---@param objTable table
---@param amount integer
---@overload fun(objTable: table)
function Objective_IncreaseCounter(objTable, amount) end

--- Returns whether an objective is complete
---@param objTable table
---@return boolean
function Objective_IsComplete(objTable) end

--- Returns true if a counter has been set for this objective
---@param objTable table
---@return boolean
function Objective_IsCounterSet(objTable) end

--- Returns whether an objective is failed
---@param objTable table
---@return boolean
function Objective_IsFailed(objTable) end

--- Returns whether an objective has been started. Completed objectives will return true.
---@param objTable table
---@return boolean
function Objective_IsStarted(objTable) end

--- Returns true if a timer has been set for this objective
---@param objTable table
---@return boolean
function Objective_IsTimerSet(objTable) end

--- Returns whether an objective is visible or not.
---@param objTable table
---@return boolean
function Objective_IsVisible(objTable) end

--- Pauses the objective's timer. If a timer has not been set, it does nothing.
---@param objTable table
function Objective_PauseTimer(objTable) end

--- 'Registers' an objective. Wrapper function for Objective_Create with a few other features.
---@param objTable table
---@param owner Player|integer
---@return ObjectiveID
---@overload fun(objTable: table)
function Objective_Register(objTable, owner) end

--- Removes a tactical map ping from an objective
---@param objectiveTable table
---@param PingID integer
function Objective_RemovePing(objectiveTable, PingID) end

--- Removes a group of UI elements that were added by Objective_AddUIElements
---@param objTable table
---@param elementID integer
function Objective_RemoveUIElements(objTable, elementID) end

--- Resume the objective's timer. If a timer has not been set, it does nothing.
---@param objTable table
function Objective_ResumeTimer(objTable) end

--- Sets whether this objective always shows detailed text, the HUD arrow, or the hintpoints. There can only be one objective at a time that forces the HUD arrow to show up. If you pass in 'nil' for hud_arrow then its behavior is not affected.
---@param objTable table
---@param title boolean
---@param hud_arrow boolean
---@param hintpoints boolean
function Objective_SetAlwaysShowDetails(objTable, title, hud_arrow, hintpoints) end

--- Sets a counter that is associated with this objective in the UI. You can provide a 'maximum' so that it shows up as "1 of 5"
---@param objTable table
---@param current number
---@param maximum number
---@overload fun(objTable: table, current: number)
function Objective_SetCounter(objTable, current, maximum) end

--- Shows or hides an objective from the UI and tactical map
---@param objective_table table
---@param on_off boolean
function Objective_Show(objective_table, on_off) end

--- Shows an objective to the player and activates it
---@param objTable table
---@param bShowTitle boolean
---@param skipIntel boolean
---@overload fun(objTable: table)
---@overload fun(objTable: table, bShowTitle: boolean)
function Objective_Start(objTable, bShowTitle, skipIntel) end

--- Starts a timer that is associated with this objective in the UI. Use COUNT_DOWN or COUNT_UP for the 'direction' parameter
---@param objTable table
---@param direction integer
---@param initialTime number
---@param flashThreshold number
---@overload fun(objTable: table, direction: integer)
---@overload fun(objTable: table, direction: integer, initialTime: number)
function Objective_StartTimer(objTable, direction, initialTime, flashThreshold) end

--- Stops the objective's counter. If a counter has not been set, it does nothing.
---@param objTable table
function Objective_StopCounter(objTable) end

--- Stops the objective's timer. If a timer has not been set, it does nothing.
---@param objTable table
function Objective_StopTimer(objTable) end

--- Toggles minimap blips on or off.
---@param objective_table table
---@param on_off boolean
function Objective_TogglePings(objective_table, on_off) end

--- Updates the title and description for the objective. If you only want to set one of them, pass in nil for the other
---@param objTable table
---@param title LocString
---@param description LocString
---@param bShowTitle boolean
---@overload fun(objTable: table, title: LocString, description: LocString)
function Objective_UpdateText(objTable, title, description, bShowTitle) end

--- Does things
---@param groupTable table
---@return table
function OpBounty_AddRewardGroup(groupTable) end

--- Does things
---@param groupTable table
---@return table
function OpBounty_AddRewardTable(groupTable) end

--- Operation Setup function registers all valid players
---@return table
function OpGameSetup() end

--- Does things
---@param groupTable table
---@return table
function OpNPC_AddSupportGroup(groupTable) end

--- Does things
---@param groupTable table
---@return table
function OpNPC_AddSyncWpnGroup(groupTable) end

--- Does things
---@param groupTable table
---@return table
function OpNPC_AddTeamWpnGroup(groupTable) end

--- Does things
---@param groupId integer
function OpNPC_IsGroupActive(groupId) end

--- Does things
---@param unknown Type|any
---@param value Type
---@return any
---@overload fun()
---@overload fun(unknown: Type|any)
function OpNPC_Name(unknown, value) end

--- Removes the indicated sub table from the NPC Support Manager
---@param groupID integer
function OpNPC_RemoveGroup(groupID) end

--- Does things
---@param groupTable table
---@param activeStatus boolean
function OpNPC_RetreatGroup(groupTable, activeStatus) end

--- Changes the state of the indicated sub table to the value provided
---@param groupId integer
---@param activeStatus boolean
function OpNPC_SetGroupActive(groupId, activeStatus) end

--- Does things
---@param unknown Type|any
---@param value Type
---@return any
---@overload fun()
---@overload fun(unknown: Type|any)
function OpPlayer_Action(unknown, value) end

--- Applies the indicated modifier type to the specified group or player
---@return table|EGroup|SGroup
function OpUtil_AddModifier() end

--- Works with _Op.PDT, takes a playerID or team and gives that team OR the enemy team lots of resources
---@param playerORteam Player|integer
---@param myTeam boolean
function OpUtil_AddResourcesToTeam(playerORteam, myTeam) end

--- Trys to assign a squad to a control group with the sametype of squad
---@param sgroup SGroup
---@param startWithFirst boolean
---@return boolean
---@overload fun(sgroup: SGroup)
function OpUtil_AssignSquadSameTypeControlGroup(sgroup, startWithFirst) end

--- Assigns the squads within a sgroup to free control group
---@param sgroup SGroup
---@param startWithFirst boolean
---@overload fun(sgroup: SGroup)
function OpUtil_AssignSquadUnusedControlGroup(sgroup, startWithFirst) end

--- Removes the 'Playable Zone' set by OpUtil_SetPlayZone
---@param marker Marker
function OpUtil_ClearPlayZone(marker) end

--- Tracks a syncweapon ID and destroys the weapon if it ever becomes un-crewed
---@param capturePoint EGroup
---@param playerTeam integer
---@param anyAll boolean
---@return boolean
function OpUtil_EgroupIsCapturedByTeam(capturePoint, playerTeam, anyAll) end

--- Displays an arrow with a text message over a random building that's part of an EGroup of buildings
---@param objective ObjectiveID
---@param target EGroup
---@param targetPlayer Player
---@param blueprintTable table
---@param buildingGroup EGroup
---@param objectiveText LocString
---@param pingArrow boolean
function OpUtil_EnemyEGroupArrowManager(objective, target, targetPlayer, blueprintTable, buildingGroup, objectiveText, pingArrow) end

--- Finds the nearest captureable point to the sgroup
---@param sgroup SGroup
---@param range integer
---@return EGroup|nil
function OpUtil_FindNearestCapturePoint(sgroup, range) end

--- Adds an SGroup from a list of units to be tracked for invulnerability
---@param SGroupID SGroup
---@param survivorThreshold integer
---@param percentage number
---@overload fun(SGroupID: SGroup, survivorThreshold: integer)
function OpUtil_InvulnerableAdd(SGroupID, survivorThreshold, percentage) end

--- Removes an SGroup from a list of units to be tracked for invulnerability
---@param SGroupID SGroup
function OpUtil_InvulnerableRemove(SGroupID) end

--- Tracks a syncweapon ID and destroys the weapon if it ever becomes un-crewed
---@param syncweapon SGroup
function OpUtil_LogSyncWpn(syncweapon) end

--- Works with _Op.PDT, takes a variable and returns an enemy NPC
---@param playerORteam Player|integer
---@return Player
function OpUtil_ReturnEnemyNPC(playerORteam) end

--- Works with _Op.PDT, takes a variable and returns a Human player
---@param compareVar RaceID|FactionID|string|number|integer
---@return Player
function OpUtil_ReturnHumanPlayer(compareVar) end

--- Works with _Op.PDT, takes a variable and returns a Non-Human player
---@param compareVar RaceID|FactionID|string|number|integer
---@return Player
function OpUtil_ReturnNPCPlayer(compareVar) end

--- Works with _Op.PDT, takes a player and returns the race
---@param compareVar RaceID|FactionID|string|number|Player
---@return RaceID
function OpUtil_ReturnRace(compareVar) end

--- Works with _Op.PDT, takes a variable and returns the team
---@param compareVar RaceID|FactionID|string|number|Player
---@return integer
function OpUtil_ReturnTeam(compareVar) end

--- Sets a 'playable zone' in the area and keeps all Human players within it
---@param marker Marker
function OpUtil_SetPlayZone(marker) end

--- Checks to see if an egroup is owned by a team
---@param owner Player|integer
---@param egroup EGroup
---@param ANY_ALL boolean
---@return boolean
---@overload fun(owner: Player|integer, egroup: EGroup)
function OpUtil_TeamOwnsEntity(owner, egroup, ANY_ALL) end

--- Does things
---@param groupTable table
---@return table
function OpVP_AddPenaltyGroup(groupTable) end

--- Does things
---@param unknown Type|any
---@param value Type
---@return any
---@overload fun()
---@overload fun(unknown: Type|any)
function OpVP_Name(unknown, value) end

--- Registers a single egroup or a table of egroups as a captureable point
---@param groupID_egroupTable EGroup|table
function OpVP_RegisterCaptureablePoints(groupID_egroupTable) end

--- Add a set egroups and defensive formations to defend them
---@param defendTable table
function OpVP_RegisterPointDefense(defendTable) end

--- Removes the indicated sub table from the VP Support Manager
---@param groupID integer
function OpVP_RemoveGroup(groupID) end

--- Enable the HQ Commissar in CoH2 campaign missions. The noMercy flag allows the Commissar to execute more than one member of each squad.
---@param timeLimit integer
---@param timeBetweenShots integer
---@param noMercy boolean
---@overload fun()
---@overload fun(timeLimit: integer)
---@overload fun(timeLimit: integer, timeBetweenShots: integer)
function Order227_Init(timeLimit, timeBetweenShots, noMercy) end

--- Serializes text to a file. File must start with "userdata:" (without quotes)
---@param file string
---@param contents string
function PersistentMode_SerializeResults(file, contents) end

--- Add an ability to a player
---@param pPlayer Player
---@param pAbilityPBG ScarAbilityPBG
function Player_AddAbility(pPlayer, pAbilityPBG) end

