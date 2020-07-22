--- Returns whether ANY or ALL of the entities in the group are owned by the world (i.e. neutral)
---@param egroup EGroup
---@param all boolean
---@return boolean
function World_OwnsEGroup(egroup, all) end

--- Returns true if the squad is owned by the world
---@param entity Entity
---@return boolean
function World_OwnsEntity(entity) end

--- Returns whether ANY or ALL of the squads in the group are owned by the world (i.e. neutral)
---@param sgroup SGroup
---@param all boolean
---@return boolean
function World_OwnsSGroup(sgroup, all) end

--- Returns true if the squad is owned by the world
---@param squad Squad
---@return boolean
function World_OwnsSquad(squad) end

--- Returns true if two world positions are in proximity to each other
---@param p1 ScarPosition
---@param p2 ScarPosition
---@param prox number
---@return boolean
function World_PointPointProx(p1, p2, prox) end

--- Creates a new Position object.
---@param x number
---@param y number
---@param z number
---@return ScarPosition
function World_Pos(x, y, z) end

--- Removes all resource and strategic points but not entities with a supply ext NOTE: this could eventually be written as - RemoveAllOfType( type ) which would be more flexible.
function World_RemoveAllResourcePoints() end

--- Remove a locked pilfering area, must pass the same pos and radius as when the lock area was created
---@param pos ScarPosition
---@param radius number
function World_RemovePilferLockArea(pos, radius) end

--- Sets a particular sector in the world as a supply provider (or not)
---@param point ScarPosition
---@param bSupply boolean
function World_SetDesignerSupply(point, bSupply) end

--- - to document
function World_SetGameOver() end

--- Set what percent ice heals per second (0.05 means 5% per second)
---@param percentPerSecond number
function World_SetIceHealingRate(percentPerSecond) end

--- Change the player's custom skin settings, skin must exist in the AE list of DLC skins
---@param pPlayer Player
---@param skin string
function World_SetPlayerCustomSkin(pPlayer, skin) end

--- Sets the player to a lose state, with a reason for losing, and kills the player
---@param player Player
function World_SetPlayerLose(player) end

--- Sets the player and all the members allied to player to a win state, with a reason for winning. Also sets all other players to a lose state, and kills them (if they're not already dead)
---@param player Player
function World_SetPlayerWin(player) end

--- Set what percent snow heals per second (0.05 means 5% per second)
---@param percentPerSecond number
function World_SetSnowHealingRate(percentPerSecond) end

--- Sets every player on a team to a win state, with a reason for winning. Also sets all other players to a lose state, and kills them (if they're not already dead)
---@param team integer
function World_SetTeamWin(team) end

--- spawn a demolitions charge at a position, 'player' is the one that owns the demolitions and can detonate them.
---@param player Player
---@param pos ScarPosition
---@return boolean
function World_SpawnDemolitionCharge(player, pos) end

--- Returns true if the two points are in the same territory region, and owned by the specified territory team, Returns false otherwise.
---@param team_index integer
---@param p1 ScarPosition
---@param p2 ScarPosition
---@return boolean
function World_TeamTerritoryPointsConnected(team_index, p1, p2) end

--- Add to the current Company's strength.
---@param strength integer
---@param announce boolean
function XP1_AddCompanyStrength(strength, announce) end

--- Returns the actor ID for the company that is currently active.
---@param UnknownType any
---@return ActorID
function XP1_CommanderPortrait(UnknownType) end

--- Takes in a table and chooses the right variable for the current chosen company setting. CD_AIRBORNE, CD_MECHANIZED, CD_SUPPORT, CD_RANGER.
---@param companyVariables table
---@return any
function XP1_CompanyDif(companyVariables) end

--- Util function for constructing the data-table needed by XP1_PlayCompanySpeechLine. It requires a STRICT naming convention of intelEvent functions: <intelEventName>_<companyNAME>. Eg. EVENTS.MissionIntro_AIRBORNE.
---@param intelEventName string
---@return table
function XP1_ConstructCompanySpeechTable(intelEventName) end

--- Wrapper function for creating an encounter. Randomly adds veterancy to enemy units based on XP1 campaign metamap node strength for the mission. If spawnNow is true, spawns specified units immediately.
---@param data EncounterData
---@param spawnNow boolean
---@param spawnStaggered boolean
---@return Encounter
function XP1_EncounterCreate(data, spawnNow, spawnStaggered) end

--- Return the current Company's Actual strength.
---@param UnknownType any
---@return integer
function XP1_GetActualCompanyStrength(UnknownType) end

--- Returns the indicated commander's data table. If nil is passed, will return the current active commander.
---@param CommanderDivision integer
function XP1_GetCommanderDataTable(CommanderDivision) end

--- Gets the current Company's Icon.
---@param UnknownType any
---@return string
function XP1_GetCompanyIcon(UnknownType) end

--- Gets the current Company's Localized name.
---@param UnknownType any
---@return integer
function XP1_GetCompanyLocName(UnknownType) end

--- Return the current Company's strength [0-100].
---@param UnknownType any
---@return integer
function XP1_GetCompanyStrength(UnknownType) end

--- Gets the current Company (CD_AIRBORNE/CD_MECHANIZED/CD_SUPPORT).
---@param UnknownType any
---@return string
function XP1_GetDivision(UnknownType) end

--- Gets the current Company's name.
---@param UnknownType any
---@return string
function XP1_GetDivisionName(UnknownType) end

--- Returns the current metamap subphase (SUBPHASE_EARLY, SUBPHASE_MID, SUBPHASE_LATE)
---@param UnknownType any
---@return integer
function XP1_GetMetaSubPhase(UnknownType) end

--- Return the current MissionSuccessLevel [0-100].
---@param UnknownType any
---@return integer
function XP1_GetMissionSuccessLevel(UnknownType) end

--- Returns the current node strength.
---@param UnknownType any
---@return integer
function XP1_GetNodeStrength(UnknownType) end

--- Randomly return a veterancy rank based on mission node strength, between 0-5.
---@param Void any
---@return integer
function XP1_GetNodeStrengthVeterancy(Void) end

--- Adjusts the current mission success level by the amount provided (Mission Success Level is an int clamped between 0 and 3)
---@param amount integer
function XP1_IncrementMissionSuccessLevel(amount) end

--- Returns true if there is a company active. Used mainly to check if it's safe to alter stored data.
---@param isCompanyActive boolean
function XP1_IsCompanyAvailable(isCompanyActive) end

--- Takes in a table and chooses the right variable for the current node strength setting. 1-5 elements.
---@param nodeDifficultyVariables table
---@return any
function XP1_NodeDif(nodeDifficultyVariables) end

--- Plays a line of speech dependant on your current active company.
---@param commanderLines table
---@return string
function XP1_PlayCompanySpeechLine(commanderLines) end

--- Reduce the current Company's strength [0-100].
---@param newAmount any
---@param announce any
---@return integer
function XP1_RemoveCompanyStrength(newAmount, announce) end

--- Sets the current commander (CD_AIRBORNE, CD_MECHANIZED, CD_SUPPORT). If nil is passed in, will re-set to the primary commander. Note this should be done behind a fade to black or something.
---@param CommanderDivision integer
---@param showUIDetails boolean
function XP1_SetActiveCommander(CommanderDivision, showUIDetails) end

--- Set the current Company's Actual strength.
---@param strength integer
function XP1_SetActualCompanyStrength(strength) end

--- Set the current Company's strength [0-100].
---@param strength integer
function XP1_SetCompanyStrength(strength) end

--- Sets the current mission success level to the amount provided (Mission Success Level is an int clamped between 0 and 100)
---@param newValue integer
function XP1_SetMissionSuccessLevel(newValue) end

--- Generates the output file read by XP1.
---@param win boolean
function XP1_ShowResults(win) end

--- Stop tracking all real-time changes in Company Strength and Experience.
---@param UnknownType any
function XP1_StopCompanyStatTracking(UnknownType) end

---@undocumented
---@vararg any
function isAFunctionNameWeAreInterstedIn (...) end

---@undocumented
---@vararg any
function lod_setmaxdistance (...) end

---@undocumented
---@vararg any
function nothing (...) end

---@undocumented
---@vararg any
function planecrash_FindPlane (...) end

---@undocumented
---@vararg any
function planecrash_Init (...) end

---@undocumented
---@vararg any
function planecrash_KillPlane (...) end

---@undocumented
---@vararg any
function planecrash_Trigger (...) end

---@undocumented
---@vararg any
function playertrigger_Init (...) end

---@undocumented
---@vararg any
function playertrigger_Trigger (...) end

---@undocumented
---@vararg any
function playertrigger_TriggerPrefab (...) end

---@undocumented
---@vararg any
function playertrigger_TriggerScarFunction (...) end

---@undocumented
---@vararg any
function quitgame (...) end

---@undocumented
---@vararg any
function shadowmap_set_distance_override (...) end

---@undocumented
---@vararg any
function shadowmap_toggle (...) end

---@undocumented
---@vararg any
function shadowmap_toggle_distance_override (...) end

---@undocumented
---@vararg any
function simpledefendencounter_GetEncounterID (...) end

---@undocumented
---@vararg any
function simpledefendencounter_Init (...) end

---@undocumented
---@vararg any
function simpledefendencounter_Stop (...) end

---@undocumented
---@vararg any
function simpledefendencounter_Trigger (...) end

---@undocumented
---@vararg any
function simpledefendencounter_TriggerGoal (...) end

---@undocumented
---@vararg any
function skipNIS (...) end

---@undocumented
---@vararg any
function water_reflection_enable (...) end

---@undocumented
---@vararg any
function water_reflection_toggle (...) end

---@undocumented
---@vararg any
function view (...) end

---@undocumented
---@vararg any
function __AI_staggeredSpawner (...) end

---@undocumented
---@vararg any
function __ApplyRoleVariation (...) end

---@undocumented
---@vararg any
function __CallNisletSkippedCallback (...) end

---@undocumented
---@vararg any
function __CheckNISFinished (...) end

---@undocumented
---@vararg any
function __ClampRulePriority (...) end

---@undocumented
---@vararg any
function __createPopup (...) end

---@undocumented
---@vararg any
function __DoNothing (...) end

---@undocumented
---@vararg any
function __DoObjectiveStartUI (...) end

---@undocumented
---@vararg any
function __EntityDemolitionCallback (...) end

---@undocumented
---@vararg any
function __Event_AND_Check (...) end

---@undocumented
---@vararg any
function __Event_ElementOnScreen_Check (...) end

---@undocumented
---@vararg any
function __Event_EncounterIsDead_Check (...) end

---@undocumented
---@vararg any
function __Event_eventChecker (...) end

---@undocumented
---@vararg any
function __Event_GroupBurning_EGroup (...) end

---@undocumented
---@vararg any
function __Event_GroupCount_Check (...) end

---@undocumented
---@vararg any
function __Event_GroupHasCritical_Check (...) end

---@undocumented
---@vararg any
function __Event_GroupIsDead_Check (...) end

---@undocumented
---@vararg any
function __Event_GroupIsNotPinned_Check (...) end

---@undocumented
---@vararg any
function __Event_GroupIsNotSuppressed_Check (...) end

---@undocumented
---@vararg any
function __Event_GroupIsPinned_Check (...) end

---@undocumented
---@vararg any
function __Event_GroupIsSuppressed_Check (...) end

---@undocumented
---@vararg any
function __Event_GroupLeftAlive_EGroup (...) end

---@undocumented
---@vararg any
function __Event_GroupLeftAlive_SGroup (...) end

---@undocumented
---@vararg any
function __Event_Init (...) end

---@undocumented
---@vararg any
function __Event_IsDoingAttack_Check (...) end

---@undocumented
---@vararg any
function __Event_IsEngaged (...) end

---@undocumented
---@vararg any
function __Event_IsHoldingAny_Check (...) end

---@undocumented
---@vararg any
function __Event_IsHoldingBP_Check (...) end

---@undocumented
---@vararg any
function __Event_IsInHold_Check (...) end

---@undocumented
---@vararg any
function __Event_IsOwnedBy (...) end

---@undocumented
---@vararg any
function __Event_IsOwnedByTeam (...) end

---@undocumented
---@vararg any
function __Event_IsSelected_Check (...) end

---@undocumented
---@vararg any
function __Event_IsUnderAttack_Check (...) end

---@undocumented
---@vararg any
function __Event_MembersCount_Check (...) end

---@undocumented
---@vararg any
function __Event_NarrativeEventsRunning (...) end

---@undocumented
---@vararg any
function __Event_NoNarrativeEventsRunning (...) end

---@undocumented
---@vararg any
function __Event_ObjectiveStarted_Check (...) end

---@undocumented
---@vararg any
function __Event_OnHealth_Check (...) end

---@undocumented
---@vararg any
function __Event_OR_Check (...) end

---@undocumented
---@vararg any
function __Event_PlayerBuildingCount (...) end

---@undocumented
---@vararg any
function __Event_PlayerCanNotSeeElement_Check (...) end

---@undocumented
---@vararg any
function __Event_PlayerCanSeeElement_Check (...) end

---@undocumented
---@vararg any
function __Event_PlayerDoesntOwnTerritory_Check (...) end

---@undocumented
---@vararg any
function __Event_PlayerOwnsTerritory_Check (...) end

---@undocumented
---@vararg any
function __Event_PlayerResourceLevel (...) end

---@undocumented
---@vararg any
function __Event_PlayerSquadCount (...) end

---@undocumented
---@vararg any
function __Event_PlayNIS (...) end

---@undocumented
---@vararg any
function __Event_Proximity_Entities (...) end

---@undocumented
---@vararg any
function __Event_Proximity_Player (...) end

---@undocumented
---@vararg any
function __Event_Proximity_Pos (...) end

---@undocumented
---@vararg any
function __Event_Proximity_Squads (...) end

---@undocumented
---@vararg any
function __Event_ShowTaskbar (...) end

---@undocumented
---@vararg any
function __Event_TeamCanNotSeeElement_Check (...) end

---@undocumented
---@vararg any
function __Event_TeamCanSeeElement_Check (...) end

---@undocumented
---@vararg any
function __Event_TeamDoesntOwnTerritory_Check (...) end

---@undocumented
---@vararg any
function __Event_TeamOwnsTerritory_Check (...) end

---@undocumented
---@vararg any
function __Event_TeamResourceLevel (...) end

---@undocumented
---@vararg any
function __Event_TeamSquadCount (...) end

---@undocumented
---@vararg any
function __Event_TerritoryInSupply (...) end

---@undocumented
---@vararg any
function __Event_TerritoryNotInSupply (...) end

---@undocumented
---@vararg any
function __Event_Timer_Check (...) end

---@undocumented
---@vararg any
function __FindObjectiveTable (...) end

---@undocumented
---@vararg any
function __formatTime (...) end

---@undocumented
---@vararg any
function __GetBlipType (...) end

---@undocumented
---@vararg any
function __GetGroupCaller (...) end

---@undocumented
---@vararg any
function __HighlightEntity (...) end

---@undocumented
---@vararg any
function __HighlightPosition (...) end

---@undocumented
---@vararg any
function __HighlightSquad (...) end

---@undocumented
---@vararg any
function __isTableTeam (...) end

---@undocumented
---@vararg any
function __Metrics_Init (...) end

---@undocumented
---@vararg any
function __MonitorPlayerResourceRates (...) end

---@undocumented
---@vararg any
function __MonitorTerritories (...) end

---@undocumented
---@vararg any
function __objectiveDelayedComplete (...) end

---@undocumented
---@vararg any
function __objectiveDelayedFail (...) end

---@undocumented
---@vararg any
function __objectiveDelayedStart (...) end

---@undocumented
---@vararg any
function __ObjectiveLuaTableQueryCallback (...) end

---@undocumented
---@vararg any
function __ObjectiveNothing (...) end

---@undocumented
---@vararg any
function __ObjectiveOnActivateCallback (...) end

---@undocumented
---@vararg any
function __ObjectiveOnCounterDisplayCallback (...) end

---@undocumented
---@vararg any
function __ObjectiveOnSelectCallback (...) end

---@undocumented
---@vararg any
function __ObjectiveOnShowCallback (...) end

---@undocumented
---@vararg any
function __OnSpawnActionComplete (...) end

---@undocumented
---@vararg any
function __ParadropSquadFull (...) end

---@undocumented
---@vararg any
function __ProxCheck_Init (...) end

---@undocumented
---@vararg any
function __rearEchelonAttrition (...) end

---@undocumented
---@vararg any
function __ResetSkippedFlag (...) end

---@undocumented
---@vararg any
function __ScarUtil_Init (...) end

---@undocumented
---@vararg any
function __SetupCounterattack (...) end

---@undocumented
---@vararg any
function __ShowObjectiveBlips (...) end

---@undocumented
---@vararg any
function __ShowSingleBlip (...) end

---@undocumented
---@vararg any
function __SquadStopPatrollingMarker (...) end

---@undocumented
---@vararg any
function __StaggeredRetreat_Mngr (...) end

---@undocumented
---@vararg any
function __stopBlizzard (...) end

---@undocumented
---@vararg any
function __Team_Init (...) end

---@undocumented
---@vararg any
function __UnitIntroductionSpeech (...) end

---@undocumented
---@vararg any
function __UpdateObjectives (...) end

---@undocumented
---@vararg any
function __UpdateSquadPatrolOrders (...) end

---@undocumented
---@vararg any
function __Util_KillSyncWpn (...) end

---@undocumented
---@vararg any
function __waveDefense_int_ClearWarningMarkers (...) end

---@undocumented
---@vararg any
function __waveDefense_int_MarkWarning (...) end

---@undocumented
---@vararg any
function __waveManager_DEBUG_ToggleUI (...) end

---@undocumented
---@vararg any
function __waveManager_DetermineSpawnWeights (...) end

---@undocumented
---@vararg any
function __waveManager_DetermineWeights (...) end

---@undocumented
---@vararg any
function __waveManager_weightedSpawnTotal (...) end

---@undocumented
---@vararg any
function __waveManager_weightedTotal (...) end

---@undocumented
---@vararg any
function _AddSquadToBeDeletedNearMarker (...) end

---@undocumented
---@vararg any
function _AE_DamageIce (...) end

---@undocumented
---@vararg any
function _AE_DamageIce_small (...) end

---@undocumented
---@vararg any
function _AE_DamageIce_Stug_delayed (...) end

---@undocumented
---@vararg any
function _AIDefaultGoalData_ApplyModifiers (...) end

---@undocumented
---@vararg any
function _AIDefaultGoalData_metaAbilityBlackList_findValueByValueInTable (...) end

---@undocumented
---@vararg any
function _AIDefaultGoalData_metaAbilityControlsList_findValueByValueInTable (...) end

---@undocumented
---@vararg any
function _AIDefaultGoalData_metaTacticControlsList_findValueByValueInTable (...) end

---@undocumented
---@vararg any
function _AIDefaultGoalData_SetDefaultGoalDataMetaData (...) end

---@undocumented
---@vararg any
function _ALERT (...) end

---@undocumented
---@vararg any
function _AnnounceEventTriggered (...) end

---@undocumented
---@vararg any
function _autosave_delayedA (...) end

---@undocumented
---@vararg any
function _autosave_delayedB (...) end

---@undocumented
---@vararg any
function _autosave_delayedC (...) end

---@undocumented
---@vararg any
function _autosave_waitForEvents (...) end

---@undocumented
---@vararg any
function _autosave_waitForEvents_noFade (...) end

---@undocumented
---@vararg any
function _CamCycle_Check (...) end

---@undocumented
---@vararg any
function _Camera_Init (...) end

---@undocumented
---@vararg any
function _CheckObjectivesCompletion (...) end

---@undocumented
---@vararg any
function _CountAvg_Report (...) end

---@undocumented
---@vararg any
function _CountAvg_Track (...) end

---@undocumented
---@vararg any
function _CreateDecrementCheck (...) end

---@undocumented
---@vararg any
function _CreateWave_Callback (...) end

---@undocumented
---@vararg any
function _DebugMenuSelect (...) end

---@undocumented
---@vararg any
function _DecrementProgressBar (...) end

---@undocumented
---@vararg any
function _DefenseInit (...) end

---@undocumented
---@vararg any
function _DespawnMe (...) end

---@undocumented
---@vararg any
function _destroyTank_retreat (...) end

---@undocumented
---@vararg any
function _donothing (...) end

---@undocumented
---@vararg any
function _EventCue_Init (...) end

---@undocumented
---@vararg any
function _ForceRetreatAll2 (...) end

---@undocumented
---@vararg any
function _GetGroupByBP (...) end

---@undocumented
---@vararg any
function _GetTargetName (...) end

---@undocumented
---@vararg any
function _HintAndFlashButtonManager (...) end

---@undocumented
---@vararg any
function _ImportCallback (...) end

---@undocumented
---@vararg any
function _InitAudio (...) end

---@undocumented
---@vararg any
function _initdata (...) end

---@undocumented
---@vararg any
function _InitializeObjectives (...) end

---@undocumented
---@vararg any
function _InitNIS (...) end

---@undocumented
---@vararg any
function _IntelDebug (...) end

---@undocumented
---@vararg any
function _LoadAtmosphere (...) end

---@undocumented
---@vararg any
function _metrics_capturePoint (...) end

---@undocumented
---@vararg any
function _metrics_capturePoint_Reset (...) end

---@undocumented
---@vararg any
function _MoveToPosition_CamLock (...) end

---@undocumented
---@vararg any
function _MovieCapture_Init (...) end

---@undocumented
---@vararg any
function _NextTankGoal (...) end

---@undocumented
---@vararg any
function _NextWave (...) end

---@undocumented
---@vararg any
function _NisletIsFinished (...) end

---@undocumented
---@vararg any
function _NisletIsStarting (...) end

---@undocumented
---@vararg any
function _PassesConditions (...) end

---@undocumented
---@vararg any
function _passiveAbiltySelect (...) end

---@undocumented
---@vararg any
function _PlayEndNIS (...) end

---@undocumented
---@vararg any
function _PlayerProxCheck (...) end

---@undocumented
---@vararg any
function _PlayIntroNIS (...) end

---@undocumented
---@vararg any
function _PlayIntroNISlet (...) end

---@undocumented
---@vararg any
function _PlaySitrep (...) end

---@undocumented
---@vararg any
function _PRINT (...) end

---@undocumented
---@vararg any
function _Private_EGroup_Exists (...) end

---@undocumented
---@vararg any
function _Private_Marker_Exists (...) end

---@undocumented
---@vararg any
function _Private_SGroup_Exists (...) end

---@undocumented
---@vararg any
function _Prox_AreSquadsNearMarker (...) end

---@undocumented
---@vararg any
function _Prox_AreSquadsNearPosition (...) end

---@undocumented
---@vararg any
function _Prox_AreSquadsWithinTerritory (...) end

---@undocumented
---@vararg any
function _Prox_GetEntityCostScore (...) end

---@undocumented
---@vararg any
function _Prox_GetEntityHealthScore (...) end

