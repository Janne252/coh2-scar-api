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

---@vararg any
function isAFunctionNameWeAreInterstedIn (...) end

---@vararg any
function lod_setmaxdistance (...) end

---@vararg any
function nothing (...) end

---@vararg any
function planecrash_FindPlane (...) end

---@vararg any
function planecrash_Init (...) end

---@vararg any
function planecrash_KillPlane (...) end

---@vararg any
function planecrash_Trigger (...) end

---@vararg any
function playertrigger_Init (...) end

---@vararg any
function playertrigger_Trigger (...) end

---@vararg any
function playertrigger_TriggerPrefab (...) end

---@vararg any
function playertrigger_TriggerScarFunction (...) end

---@vararg any
function quitgame (...) end

---@vararg any
function shadowmap_set_distance_override (...) end

---@vararg any
function shadowmap_toggle (...) end

---@vararg any
function shadowmap_toggle_distance_override (...) end

---@vararg any
function simpledefendencounter_GetEncounterID (...) end

---@vararg any
function simpledefendencounter_Init (...) end

---@vararg any
function simpledefendencounter_Stop (...) end

---@vararg any
function simpledefendencounter_Trigger (...) end

---@vararg any
function simpledefendencounter_TriggerGoal (...) end

---@vararg any
function skipNIS (...) end

---@vararg any
function water_reflection_enable (...) end

---@vararg any
function water_reflection_toggle (...) end

---@vararg any
function view (...) end

---@vararg any
function Actor_PlaySpeechInternal (...) end

---@vararg any
function AI_ClearCaptureImportance (...) end

---@vararg any
function AI_ClearMilitaryPointImportance (...) end

---@vararg any
function AI_ClearSquadImportance (...) end

---@vararg any
function AI_ConvertToSimSquad (...) end

---@vararg any
function AI_DebugSkirmishForwardDeployEnable (...) end

---@vararg any
function AI_DebugSkirmishForwardDeployIsEnabled (...) end

---@vararg any
function AI_Initialize (...) end

---@vararg any
function AI_IsAITargetable (...) end

---@vararg any
function AI_IsDebugDisplay (...) end

---@vararg any
function AI_IsRTM (...) end

---@vararg any
function AI_IsSquadValid (...) end

---@vararg any
function AI_Loop (...) end

---@vararg any
function AI_OnAIMigrated (...) end

---@vararg any
function AI_RestartEncounters (...) end

---@vararg any
function AI_RestartSCAR (...) end

---@vararg any
function AI_SetAITargetable (...) end

---@vararg any
function AI_SetCaptureImportance (...) end

---@vararg any
function AI_SetDebugDisplay (...) end

---@vararg any
function AI_SetDefaultEnemyPlayer (...) end

---@vararg any
function AI_SetMilitaryPointImportance (...) end

---@vararg any
function AI_SetSquadImportance (...) end

---@vararg any
function AI_ToggleDebugDisplay (...) end

---@vararg any
function AIDefaultGoalData_Initialize (...) end

---@vararg any
function AIEvents_Initialize (...) end

---@vararg any
function AIObjective_FallbackGuidance_SetRetreatDelayTime (...) end

---@vararg any
function AIObjective_MoveGuidance_EnableRelaxedPatrol (...) end

---@vararg any
function AIObjective_TargetGuidance_GetTargetAreaRadius (...) end

---@vararg any
function AIObjective_TargetGuidance_GetTargetLeashRadius (...) end

---@vararg any
function AIObjective_TargetGuidance_GetTargetPos (...) end

---@vararg any
function AIPlayer_GetClumpCentreSquad (...) end

---@vararg any
function AIPlayer_GetClumpTerritoryPointEntity (...) end

---@vararg any
function AISquad_ShouldFallBackOrBraceSelf (...) end

---@vararg any
function Annihilate_CheckAnnihilation (...) end

---@vararg any
function Annihilate_DelayedWin (...) end

---@vararg any
function Annihilate_GameOver (...) end

---@vararg any
function AttackGoal_SetupObjective_Tactics (...) end

---@vararg any
function AutoReinforce_Manager (...) end

---@vararg any
function AutoRetreat_Manager (...) end

---@vararg any
function AutoRetreat_Retreat (...) end

---@vararg any
function BaseGoal_SetupObjective_FallbackParams (...) end

---@vararg any
function BaseGoal_SetupObjective_Tactics (...) end

---@vararg any
function BaseGoal_SetupObjective_Target (...) end

---@vararg any
function BeginnerHint_AbilityCallback (...) end

---@vararg any
function BeginnerHint_DemoPackCallback (...) end

---@vararg any
function BeginnerHint_FindAnOpportunity (...) end

---@vararg any
function BeginnerHint_GetDetailsForAbility (...) end

---@vararg any
function BeginnerHint_GetIconFromAbility (...) end

---@vararg any
function BeginnerHint_GetLastAbilityUse (...) end

---@vararg any
function BeginnerHint_Init (...) end

---@vararg any
function BeginnerHint_Manager (...) end

---@vararg any
function BeginnerHint_MarkAbilityUse (...) end

---@vararg any
function BeginnerHint_MarkCommandUse (...) end

---@vararg any
function BeginnerHint_MergeCallback (...) end

---@vararg any
function BeginnerHint_MoveOrderCallback (...) end

---@vararg any
function BeginnerHint_OpportunityOver (...) end

---@vararg any
function BeginnerHint_PickAnEntity (...) end

---@vararg any
function BeginnerHint_PickASquad (...) end

---@vararg any
function BeginnerHint_PickUpCallback (...) end

---@vararg any
function BeginnerHint_RallyPointCallback (...) end

---@vararg any
function BeginnerHint_ReinforceCallback (...) end

---@vararg any
function BeginnerHint_TestAbilityIsFromPlayer (...) end

---@vararg any
function BeginnerHint_TestCommandIsFromPlayer (...) end

---@vararg any
function BeginnerHint_TestOpportunity (...) end

---@vararg any
function BeginnerHint_TestOpportunityOnEntity (...) end

---@vararg any
function BeginnerHint_TestOpportunityOnPosition (...) end

---@vararg any
function BeginnerHint_TestOpportunityOnSquad (...) end

---@vararg any
function Blizzard_End (...) end

---@vararg any
function Blizzard_End_AtmosphereFinal (...) end

---@vararg any
function Blizzard_End_MidTransition (...) end

---@vararg any
function Blizzard_End_StartTransition (...) end

---@vararg any
function Blizzard_End_TransitionFinished (...) end

---@vararg any
function Blizzard_Start (...) end

---@vararg any
function Blizzard_Start_MidTransition (...) end

---@vararg any
function Blizzard_Start_StartTransition (...) end

---@vararg any
function Blizzard_Start_Timer (...) end

---@vararg any
function Blizzard_Start_TransitionFinished (...) end

---@vararg any
function Blizzard_StartGameplayTransition (...) end

---@vararg any
function Blizzard_TransitionGameplay (...) end

---@vararg any
function Blizzard_TransitionGameplay_Final (...) end

---@vararg any
function Blizzard_TransitionGameplay_Tick (...) end

---@vararg any
function Blizzard_WaitToEnd (...) end

---@vararg any
function Blizzard_WaitToStart (...) end

---@vararg any
function BlizzardCue (...) end

---@vararg any
function BridgeTerritory_Manager (...) end

---@vararg any
function Camera_Dump (...) end

---@vararg any
function Campaign_InitializeConstants (...) end

---@vararg any
function CaptureIntel_DefaultBonus (...) end

---@vararg any
function CaptureIntel_DropItem (...) end

---@vararg any
function CaptureIntel_IntelSpotted (...) end

---@vararg any
function CaptureIntel_IntroEvent (...) end

---@vararg any
function CaptureIntel_ItemPickedUp (...) end

---@vararg any
function CaptureIntel_OutroEvent (...) end

---@vararg any
function CaptureIntel_ReturnCheck (...) end

---@vararg any
function CaptureIntel_ShowReward (...) end

---@vararg any
function CaptureIntel_SquadKilled (...) end

---@vararg any
function CaptureIntel_Start (...) end

---@vararg any
function CaptureIntel_VehicleRecrewed (...) end

---@vararg any
function Ceasefire_Manager (...) end

---@vararg any
function CloneGoal (...) end

---@vararg any
function CloneTable (...) end

---@vararg any
function Cmd_DoPlan (...) end

---@vararg any
function Command_Init (...) end

---@vararg any
function Command_PlayerBroadcastMessage (...) end

---@vararg any
function Command_SquadPath (...) end

---@vararg any
function ConscriptProgression_AudioInit (...) end

---@vararg any
function ConscriptProgression_FrontovikSpeech (...) end

---@vararg any
function ConscriptProgression_FrontovikUnlock (...) end

---@vararg any
function ConscriptProgression_PenalSpeech (...) end

---@vararg any
function ConscriptProgression_PenalUnlock (...) end

---@vararg any
function CTRL_IndexOperator (...) end

---@vararg any
function DebugEconomy (...) end

---@vararg any
function DebugPrintGoals (...) end

---@vararg any
function DeleteOldProduceStructures (...) end

---@vararg any
function Demolition_IntroEvent (...) end

---@vararg any
function Demolition_OutroEvent (...) end

---@vararg any
function Demolition_ShowReward (...) end

---@vararg any
function Demolition_Start (...) end

---@vararg any
function DeploymentPoint_Destroyed (...) end

---@vararg any
function DeploymentPoint_Placed (...) end

---@vararg any
function DesignerLib_Init (...) end

---@vararg any
function Destroy_Tank_Start (...) end

---@vararg any
function DestroyTank_IntroEvent (...) end

---@vararg any
function DestroyTank_OutroEvent (...) end

---@vararg any
function DestroyTank_ShowReward (...) end

---@vararg any
function DoesTableContain (...) end

---@vararg any
function Encounter_KillHalf (...) end

---@vararg any
function Entity_AddAbility (...) end

---@vararg any
function Entity_BuildingReset (...) end

---@vararg any
function Entity_ClearDemolitionCallbacks (...) end

---@vararg any
function Entity_DoBurnDamage (...) end

---@vararg any
function Entity_ExtensionEnabled (...) end

---@vararg any
function Entity_ExtensionExecuting (...) end

---@vararg any
function Entity_ExtensionName (...) end

---@vararg any
function Entity_RemoveAbility (...) end

---@vararg any
function Event_Add (...) end

---@vararg any
function Event_GetEvent (...) end

---@vararg any
function Event_IsAnyQueuedInternal (...) end

---@vararg any
function Event_IsAnyRunningInternal (...) end

---@vararg any
function EventCue_InternalHintPointManager (...) end

---@vararg any
function EventCue_InternalManager (...) end

---@vararg any
function EventCue_RepeaterManager (...) end

---@vararg any
function EventRule_AddEntityEvent (...) end

---@vararg any
function EventRule_AddEvent (...) end

---@vararg any
function EventRule_AddPlayerEvent (...) end

---@vararg any
function EventRule_AddSquadEvent (...) end

---@vararg any
function EventRule_Exists (...) end

---@vararg any
function EventRule_GetNextUniqueRuleID (...) end

---@vararg any
function EventRule_Refresh (...) end

---@vararg any
function EventRule_RemoveAll (...) end

---@vararg any
function EventRule_RemoveEntityEvent (...) end

---@vararg any
function EventRule_RemoveEvent (...) end

---@vararg any
function EventRule_RemoveMe (...) end

---@vararg any
function EventRule_RemovePlayerEvent (...) end

---@vararg any
function EventRule_RemoveRuleIDEvent (...) end

---@vararg any
function EventRule_RemoveSquadEvent (...) end

---@vararg any
function Fatality_Execute (...) end

---@vararg any
function Fatality_Play (...) end

---@vararg any
function FixUpVPTickerData (...) end

---@vararg any
function FixUpVPTickerLastPlayedData (...) end

---@vararg any
function FOW_EnableTint (...) end

---@vararg any
function FOW_IsTintEnabled (...) end

---@vararg any
function FOW_Toggle (...) end

---@vararg any
function Game_ColdTechDisabled (...) end

---@vararg any
function Game_CurrentSystemTime (...) end

---@vararg any
function Game_GetRenderFrameCount (...) end

---@vararg any
function Game_SubTextFadeInternal (...) end

---@vararg any
function HintMouseover_Manager (...) end

---@vararg any
function HintPoint_RemoveInternal (...) end

---@vararg any
function INIT_BonusCaptureIntel (...) end

---@vararg any
function INIT_BonusDemolition (...) end

---@vararg any
function INIT_BonusDestroyTank (...) end

---@vararg any
function INIT_BonusRescueSquads (...) end

---@vararg any
function INIT_BonusVIP (...) end

---@vararg any
function Init_Framedump (...) end

---@vararg any
function IsAllies (...) end

---@vararg any
function IsAxis (...) end

---@vararg any
function KillVIP_IntroEvent (...) end

---@vararg any
function KillVIP_OutroEvent (...) end

---@vararg any
function KillVIP_ShowReward (...) end

---@vararg any
function KillVIP_Start (...) end

---@vararg any
function Loc_FormatText1 (...) end

---@vararg any
function Loc_FormatText2 (...) end

---@vararg any
function Loc_FormatText3 (...) end

---@vararg any
function Loc_FormatText4 (...) end

---@vararg any
function ManualMovieCaptureEnd (...) end

---@vararg any
function ManualMovieCaptureStart (...) end

---@vararg any
function MapIcon_ClearFacing (...) end

---@vararg any
function MapIcon_CreateEntity (...) end

---@vararg any
function MapIcon_CreatePosition (...) end

---@vararg any
function MapIcon_CreateSquad (...) end

---@vararg any
function MapIcon_Destroy (...) end

---@vararg any
function MapIcon_DestroyAll (...) end

---@vararg any
function MapIcon_SetFacingEntity (...) end

---@vararg any
function MapIcon_SetFacingPosition (...) end

---@vararg any
function MapIcon_SetFacingSquad (...) end

---@vararg any
function Marker_Create (...) end

---@vararg any
function Marker_GetRandomPositionInternal (...) end

---@vararg any
function Metrics_CheckPoint (...) end

---@vararg any
function Metrics_Complete (...) end

---@vararg any
function Metrics_RegisterCapturePoint (...) end

---@vararg any
function Metrics_Start (...) end

---@vararg any
function Misc_AddRestrictCommandsCircle (...) end

---@vararg any
function Misc_AddRestrictCommandsOBB (...) end

---@vararg any
function Misc_ClearControlGroup (...) end

---@vararg any
function Misc_ClearSelection (...) end

---@vararg any
function Misc_ClearSubselection (...) end

---@vararg any
function Misc_DumpMemStats (...) end

---@vararg any
function Misc_GetSpeechDebugEnabled (...) end

---@vararg any
function Misc_ScreenFadeChange (...) end

---@vararg any
function Misc_ScreenFadeRemove (...) end

---@vararg any
function Misc_ScreenFadeStart (...) end

---@vararg any
function Misc_SetAmbientFXVisibility (...) end

---@vararg any
function Misc_SetSpeechDebugEnabled (...) end

---@vararg any
function Misc_SuperScreenshot (...) end

---@vararg any
function Misc_SyncCheckVariable (...) end

---@vararg any
function Mission_CheatLose (...) end

---@vararg any
function Mission_CheatWin (...) end

---@vararg any
function Mission_GetNIS (...) end

---@vararg any
function Mission_IsDebug (...) end

---@vararg any
function Mission_SetDebug (...) end

---@vararg any
function Mission_SetSecondaryObjectiveOverride (...) end

---@vararg any
function Mission_StartSecondaryObjective (...) end

---@vararg any
function Modifier_AddToEntityTable (...) end

---@vararg any
function Modifier_AddToMiscTable (...) end

---@vararg any
function Modifier_AddToSquadTable (...) end

---@vararg any
function Modifier_Init (...) end

---@vararg any
function Modifier_RemoveInternal (...) end

---@vararg any
function Modify_SlotItemDropRate (...) end

---@vararg any
function ModMisc_ApplyDeformation (...) end

---@vararg any
function MP_BlizzardInterval (...) end

---@vararg any
function MP_BlizzardTransition (...) end

---@vararg any
function Obj_CreatePopup (...) end

---@vararg any
function Obj_HideProgressEx (...) end

---@vararg any
function Obj_HighlightEntity (...) end

