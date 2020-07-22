---@class Ability
Ability = {}

---@class AbilityBlueprint
AbilityBlueprint = {}

---@class ActorID
ActorID = {}

---@class Ai
Ai = {}

---@class AIEncounter
AIEncounter = {}

---@class AITacticType
AITacticType = {}

---@class AllianceResult
AllianceResult = {}

---@class Availability
Availability = {}

---@class blipID
blipID = {}

---@class Blueprint
Blueprint = {}

---@class BuildingFireState
BuildingFireState = {}

---@class ButtonIconStyle
ButtonIconStyle = {}

---@class CamouflageStanceID
CamouflageStanceID = {}

---@class CapType
CapType = {}

---@class CheckHiddenType
CheckHiddenType = {}

---@class checkID
checkID = {}

---@class CriticalID
CriticalID = {}

---@class CrushMode
CrushMode = {}

---@class CueStyleID
CueStyleID = {}

---@class DialogResult
DialogResult = {}

---@class EGroup
EGroup = {}

---@class ElementID
ElementID = {}

---@class encID
encID = {}

---@class Encounter
Encounter = {}

---@class EncounterData
EncounterData = {}

---@class Entity
Entity = {}

---@class ErrorMessage
ErrorMessage = {}

---@class event
event = {}

---@class EVENT
EVENT = {}

---@class EventCueID
EventCueID = {}

---@class EventID
EventID = {}

---@class FactionID
FactionID = {}

---@class filtertype
filtertype = {}

---@class GameEventType
GameEventType = {}

---@class GD
GD = {}

---@class GoalData
GoalData = {}

---@class HintPointActionType
HintPointActionType = {}

---@class HintPointID
HintPointID = {}

---@class HPAT
HPAT = {}

---@class HUDFeatureType
HUDFeatureType = {}

---@class ID
ID = {}

---@class Item
Item = {}

---@class LabelAlignHorizontal
LabelAlignHorizontal = {}

---@class LabelAlignVertical
LabelAlignVertical = {}

---@class LocString
LocString = {}

---@class Lua
Lua = {}

---@class Marker
Marker = {}

---@class ModID
ModID = {}

---@class Modifier
Modifier = {}

---@class ModifierApplicationType
ModifierApplicationType = {}

---@class ModifierUsageType
ModifierUsageType = {}

---@class MoveTypeBlueprint
MoveTypeBlueprint = {}

---@class ObjectiveID
ObjectiveID = {}

---@class ObjectiveState
ObjectiveState = {}

---@class ObjectiveType
ObjectiveType = {}

---@class Offset
Offset = {}

---@class OpportunityID
OpportunityID = {}

---@class OwnerType
OwnerType = {}

---@class PingID
PingID = {}

---@class Player
Player = {}

---@class PrintOnScreenID
PrintOnScreenID = {}

---@class ProductionItemType
ProductionItemType = {}

---@class PropertyBagGroup
PropertyBagGroup = {}

---@class ProximityType
ProximityType = {}

---@class ProxType
ProxType = {}

---@class RaceID
RaceID = {}

---@class ResourceAmount
ResourceAmount = {}

---@class ResourceType
ResourceType = {}

---@class ScarAbilityPBG
ScarAbilityPBG = {}

---@class ScarCamouflageStancePBG
ScarCamouflageStancePBG = {}

---@class ScarCriticalPBG
ScarCriticalPBG = {}

---@class ScarEntityPBG
ScarEntityPBG = {}

---@class ScarMarker
ScarMarker = {}

---@class ScarMoveTypePBG
ScarMoveTypePBG = {}

---@class ScarPosition
---@field public x number
---@field public y number
---@field public z number
ScarPosition = {}

---@class ScarRacePBG
ScarRacePBG = {}

---@class ScarSlotItemPBG
ScarSlotItemPBG = {}

---@class ScarSquadPBG
ScarSquadPBG = {}

---@class ScarType
ScarType = {}

---@class ScarUpgradePBG
ScarUpgradePBG = {}

---@class ScarWeaponPBG
ScarWeaponPBG = {}

---@class SectorID
SectorID = {}

---@class SGroup
SGroup = {}

---@class SlotItemID
SlotItemID = {}

---@class Squad
Squad = {}

---@class SquadBlueprint
SquadBlueprint = {}

---@class SyncWeaponID
SyncWeaponID = {}

---@class TargetPreference
TargetPreference = {}

---@class TuningValue
TuningValue = {}

---@class Type
Type = {}

---@class UIEventType
UIEventType = {}

---@class UIMode
UIMode = {}

---@class UpgradeBlueprint
UpgradeBlueprint = {}

---@class UpgradeID
UpgradeID = {}

---@class world
world = {}

--- E-mails a warning out with logfiles at the end of the game.
---@param errormessage ErrorMessage
function bug(errormessage) end

--- Clears the direct draw frame.
---@param frame string
function dr_clear(frame) end

--- Draws a 2D circle on the screen.
---@param frame string
---@param x number
---@param y number
---@param z number
---@param radius number
---@param red integer
---@param green integer
---@param blue integer
function dr_drawCircle(frame, x, y, z, radius, red, green, blue) end

--- Draws a 2D line on the screen.
---@param start ScarPosition
---@param _end ScarPosition
---@param red integer
---@param green integer
---@param blue integer
---@param frame string
function dr_drawline(start, _end, red, green, blue, frame) end

--- Sets the auto-clear interval of a frame. 0 is infinite.
---@param frame string
---@param interval number
function dr_setautoclear(frame, interval) end

--- Sets the visibility of a frame.
---@param frame string
---@param isVisible boolean
function dr_setdisplay(frame, isVisible) end

--- Draws a circle on the terrain. Accuracy controls number of points on the circle perimeter. Minimum is 3, which results in a triangle.
---@param origin ScarPosition
---@param radius number
---@param red integer
---@param green integer
---@param blue integer
---@param accuracy integer
---@param frame string
function dr_terraincircle(origin, radius, red, green, blue, accuracy, frame) end

--- Unknown functionality because of lack of frame argument.
---@param origin ScarPosition
---@param unknown_1 number
---@param unknown_2 number
---@param red integer
---@param green integer
---@param blue integer
---@param unknown_3 number
function dr_terrainrect(origin, unknown_1, unknown_2, red, green, blue, unknown_3) end

--- Draws text on the screen.
---@param frame string
---@param x number
---@param y number
---@param text string
---@param red integer
---@param green integer
---@param blue integer
function dr_text2d(frame, x, y, text, red, green, blue) end

--- Draws text on the screen (3D).
---@param frame string
---@param x number
---@param y number
---@param z number
---@param text string
---@param red integer
---@param green integer
---@param blue integer
function dr_text3d(frame, x, y, z, text, red, green, blue) end

--- Throws an error to lua and print out the error message
---@param state any
---@return integer
function fatal(state) end

--- Imports a script file
---@param file string
function import(file) end

--- Dump content of inventory to a file
function inv_dump() end

--- Loads a nis file for playing.
---@param nisFile string
function nis_load(nisFile) end

--- Pauses the NIS animation.
function nis_pause() end

--- 
function nis_play() end

--- Sets the number of seconds it takes to transition from game to nis, 0 is instantaneous
---@param numSeconds number
function nis_setintransitiontime(numSeconds) end

--- 
function nis_setnextnis() end

--- Lets the nis system know which nis will be transitioned to when the first one ends.
---@param filename string
function nis_setouttransitionnis(filename) end

--- Sets the number of seconds it takes to transition from nis back to game, 0 is instantaneous
---@param numSeconds number
function nis_setouttransitiontime(numSeconds) end

--- 
function nis_settime() end

--- 
function nis_skip() end

--- 
function nis_skipone() end

--- Stops playing the NIS animation.
function nis_stop() end

--- 
function nis_synchelp() end

--- Returns the ScarType of the value.
---@param value any
---@return ScarType
function scartype(value) end

--- Returns the string representation of the ScarType of the value.
---@param value any
---@return string
function scartype_tostring(value) end

--- ??
function statgraph() end

--- ??
---@param channel string
function statgraph_channel(channel) end

--- ??
---@param channel string
---@return boolean
function statgraph_channel_get_enabled(channel) end

--- ??
---@param channel string
---@param enable boolean
function statgraph_channel_set_enabled(channel, enable) end

--- ??
function statgraph_clear() end

--- ??
function statgraph_list() end

--- ??
function statgraph_pause() end

--- 
---@param message string
function warning(message) end

--- Plays the next intel event in the debug queue. IntelEvents are played sequentially as they are defined in a mission's .events file.
---@param UnknownType any
function _IntelDebugNext(UnknownType) end

--- Plays the next intel event in the debug queue. IntelEvents are played sequentially as they are defined in a mission's .events file.
---@param UnknownType any
function _IntelDebugPrev(UnknownType) end

--- Replays the last intel event that was debugged.
---@param UnknownType any
function _IntelDebugReplay(UnknownType) end

--- Clear ties between an actor and any units
---@param actor table
function Actor_Clear(actor) end

--- Plays a speech event for a given actor WITH a portrait and subtitle
---@param actor table
---@param locID integer
---@param continueButton boolean
---@param stickySubtitle boolean
---@param blockInput boolean
---@overload fun(actor: table, locID: integer)
---@overload fun(actor: table, locID: integer, continueButton: boolean)
---@overload fun(actor: table, locID: integer, continueButton: boolean, stickySubtitle: boolean)
function Actor_PlaySpeech(actor, locID, continueButton, stickySubtitle, blockInput) end

--- Plays a speech event for a given actor WITHOUT a portrait or subtitle. See Actor_PlaySpeech for more details
---@param actor table
---@param locID integer
---@param continueButton boolean
---@param stickySubtitle boolean
---@param blockInput boolean
---@overload fun(actor: table, locID: integer)
---@overload fun(actor: table, locID: integer, continueButton: boolean)
---@overload fun(actor: table, locID: integer, continueButton: boolean, stickySubtitle: boolean)
function Actor_PlaySpeechWithoutPortrait(actor, locID, continueButton, stickySubtitle, blockInput) end

--- Tie an entire sgroup to an actor, so audio comes from a squad member
---@param actor table
---@param sgroup SGroup
function Actor_SetFromSGroup(actor, sgroup) end

--- Tie a single squad to an actor, so audio comes from a squad member
---@param actor table
---@param squad Squad
function Actor_SetFromSquad(actor, squad) end

--- Finds all encounters that contain ANY or ALL squads within the given sgroup.
---@param sgroup SGroup
---@param all any|boolean
---@return table
function Ai:GetEncountersBySGroup(sgroup, all) end

--- Finds all encounters that contain ANY or ALL squads within the given sgroup.
---@param sgroup SGroup
---@param all any|boolean
---@return table
function Ai:GetEncountersBySquad(sgroup, all) end

--- This clears the importance bonus on this capture point
---@param pPlayer Player
---@param pEntity Entity
function AI_ClearCaptureImportanceBonus(pPlayer, pEntity) end

--- This clears the importance override on this military point
---@param pPlayer Player
---@param pEntity Entity
function AI_ClearImportance(pPlayer, pEntity) end

--- Create a new objective for player
---@param pPlayer Player
---@param objectiveType integer
---@return table
function AI_CreateObjective(pPlayer, objectiveType) end

--- Enables/disables debugging of AI Attack Objective Encounter Position Scoring
---@param enable boolean
function AI_DebugAttackEncounterPositionScoringEnable(enable) end

--- Returns true if AI Attack Objective Encounter Position Scoring is enabled
---@return boolean
function AI_DebugAttackEncounterPositionScoringIsEnabled() end

--- Enables/disables AI Lua Debugging
---@param enable boolean
function AI_DebugLuaEnable(enable) end

--- Returns true if AI Lua Debugging is enabled
---@return boolean
function AI_DebugLuaIsEnabled() end

--- Enables/disables AI Construction Debugging
---@param enable boolean
function AI_DebugRatingEnable(enable) end

--- Returns true if AI Construction Debugging is enabled
---@return boolean
function AI_DebugRatingIsEnabled() end

--- Enables/disables AI Rendering of All Task Children
---@param enable boolean
function AI_DebugRenderAllTaskChildrenEnable(enable) end

--- Returns true if AI Rendering of All Task Children is enabled
---@return boolean
function AI_DebugRenderAllTaskChildrenIsEnabled() end

--- Enables/disables AI Skirmish Capture Debugging
---@param enable boolean
function AI_DebugSkirmishCaptureEnable(enable) end

--- Returns true if AI Skirmish Capture Debugging is enabled
---@return boolean
function AI_DebugSkirmishCaptureIsEnabled() end

--- Enables/disables AI Skirmish Combat Target Debugging
---@param enable boolean
function AI_DebugSkirmishCombatTargetEnable(enable) end

--- Returns true if AI Skirmish Combat Target Debugging is enabled
---@return boolean
function AI_DebugSkirmishCombatTargetIsEnabled() end

--- Enables/disables AI Skirmish Objective Debugging
---@param enable boolean
function AI_DebugSkirmishObjectiveEnable(enable) end

--- Returns true if AI Skirmish Objective Debugging is enabled
---@return boolean
function AI_DebugSkirmishObjectiveIsEnabled() end

--- Disable all of the economy overrides for the AI player
---@param pPlayer Player
function AI_DisableAllEconomyOverrides(pPlayer) end

--- Disables all encounters
function AI_DisableAllEncounters() end

--- Enables or Disables an AI player
---@param pPlayer Player
---@param enable boolean
function AI_Enable(pPlayer, enable) end

--- Enables or Disables all AI players
---@param enable boolean
function AI_EnableAll(enable) end

--- Enables all encounters
function AI_EnableAllEncounters() end

--- Enable or disable the economy override for the AI player
---@param pPlayer Player
---@param overrideName string
---@param enable boolean
function AI_EnableEconomyOverride(pPlayer, overrideName, enable) end

--- Returns a table with all active (not dead) encounters.
---@return table
function AI_GetActiveEncounters() end

--- Gets the difficulty level of this AI player
---@param pPlayer Player
---@return integer
function AI_GetDifficulty(pPlayer) end

--- Returns the number of alive encounters currently managed by the AI manager.
---@return integer
function AI_GetNumEncounters() end

--- Get the personality name of this AI player
---@param pPlayer Player
---@return string
function AI_GetPersonality(pPlayer) end

--- Get the personality lua file name of this AI player
---@param pPlayer Player
---@return string
function AI_GetPersonalityLuaFileName(pPlayer) end

--- Returns true if player is an AI player
---@param pPlayer Player
---@return boolean
function AI_IsAIPlayer(pPlayer) end

--- Returns true if player is a AIPlayer and is enabled
---@param pPlayer Player
---@return boolean
function AI_IsEnabled(pPlayer) end

--- Returns True if the current AI_Manager difficulty matches any in a given list.
---@param difficultyList integer|table
---@return boolean
function AI_IsMatchingDifficulty(difficultyList) end

--- Locks the entity and disables its tactics (if any) and the AI will no longer use this object
---@param pPlayer Player
---@param pEntity Entity
function AI_LockEntity(pPlayer, pEntity) end

--- Locks the squad and disables its tactics (if any) and the AI will no longer use this object
---@param pPlayer Player
---@param pSquad Squad
function AI_LockSquad(pPlayer, pSquad) end

--- Locks the squads and disables its tactics (if any) and the AI will no longer use these objects
---@param pPlayer Player
---@param squads SGroup
function AI_LockSquads(pPlayer, squads) end

--- Overrides the current difficulty setting (only for the AI Manager). Pass 'nil' to reset to Game_GetSPDifficulty() value
---@param level integer
function AI_OverrideDifficulty(level) end

--- Disables all encounters, then clears out the encounter list
function AI_RemoveAllEncounters() end

--- Restores the default personality and difficulty settings of this AI player
---@param pPlayer Player
function AI_RestoreDefaultPersonalitySettings(pPlayer) end

--- This sets importance bonus of the given capture point
---@param pPlayer Player
---@param pEntity Entity
---@param importanceBonus number
function AI_SetCaptureImportanceBonus(pPlayer, pEntity, importanceBonus) end

--- Set the level of debug information shown but Ai:Print().
function AI_SetDebugLevel() end

--- Set the difficulty level of this AI player
---@param pPlayer Player
---@param difficultyLevel integer
function AI_SetDifficulty(pPlayer, difficultyLevel) end

--- This overrides the default importance of the given military point
---@param pPlayer Player
---@param pEntity Entity
---@param importance number
function AI_SetImportance(pPlayer, pEntity, importance) end

--- Set the personality name of this AI player
---@param pPlayer Player
---@param personalityName string
function AI_SetPersonality(pPlayer, personalityName) end

--- Sets the delay to use when using staggeredSpawn for encounters. The new interval will take effect immediately.
---@param delay number
function AI_SetStaggeredSpawnDelay(delay) end

--- Toggle encounter/goal debug information on screen.
function AI_ToggleDebugData() end

--- Toggle printing console debug information for encounters.
function AI_ToggleDebugPrint() end

--- Unlocks all designer locked squads for player
---@param pPlayer Player
function AI_UnlockAll(pPlayer) end

--- Unlocks this entity so that AI can use it again
---@param pPlayer Player
---@param pEntity Entity
function AI_UnlockEntity(pPlayer, pEntity) end

--- Unlocks the given squad so the AI can use it again
---@param pPlayer Player
---@param pSquad Squad
function AI_UnlockSquad(pPlayer, pSquad) end

--- Locks the squads and disables its tactics (if any) and the AI will no longer use these objects
---@param pPlayer Player
---@param squads SGroup
function AI_UnlockSquads(pPlayer, squads) end

--- Re-updates the AI in regards to all the static objects in the world (if SCAR creates new strategic points dynamically this will need to be called)
---@param pPlayer Player
function AI_UpdateStatics(pPlayer) end

--- Adjust default goal data for ability goals.  Sets the default GoalData to the current defaults plus additionalDefaultGoalData; any values specified are used for unspecified encounter ability goal values.
---@param additionalDefaultGoalData table
function AIAbilityGoal_AdjustDefaultGoalData(additionalDefaultGoalData) end

--- Set default goal data for ability goals.  defaultGoalData is cloned; any values specified are used for unspecified encounter ability goal values.
---@param defaultGoalData table
function AIAbilityGoal_SetDefaultGoalData(defaultGoalData) end

--- Set modify goal data for ability goals.  modifyGoalData is cloned; values specified via keyname_Multiplier are used for the numeric keyname encounter ability goal value.
---@param modifyGoalData table
function AIAbilityGoal_SetModifyGoalData(modifyGoalData) end

--- Set override goal data for ability goals.  overrideGoalData is cloned; any values specified are used for encounter ability goal values.
---@param overrideGoalData table
function AIAbilityGoal_SetOverrideGoalData(overrideGoalData) end

--- Set ability for ability objective
---@param pObjective table
---@param abilityPBG PropertyBagGroup
function AIAbilityObjective_AbilityGuidance_SetAbilityPBG(pObjective, abilityPBG) end

--- Adjust default goal data for attack goals.  Sets the default GoalData to the current defaults plus additionalDefaultGoalData; any values specified are used for unspecified encounter attack goal values.
---@param additionalDefaultGoalData table
function AIAttackGoal_AdjustDefaultGoalData(additionalDefaultGoalData) end

--- Set default goal data for attack goals.  defaultGoalData is cloned; any values specified are used for unspecified encounter attack goal values.
---@param defaultGoalData table
function AIAttackGoal_SetDefaultGoalData(defaultGoalData) end

--- Set modify goal data for attack goals.  modifyGoalData is cloned; values specified via keyname_Multiplier are used for the numeric keyname encounter attack goal value.
---@param modifyGoalData table
function AIAttackGoal_SetModifyGoalData(modifyGoalData) end

--- Set override goal data for attack goals.  overrideGoalData is cloned; any values specified are used for encounter attack goal values.
---@param overrideGoalData table
function AIAttackGoal_SetOverrideGoalData(overrideGoalData) end

--- Adjust default goal data.  Sets the default GoalData to the current defaults plus additionalDefaultGoalData; any values specified are used for unspecified encounter goal values.
---@param additionalDefaultGoalData table
function AIBaseGoal_AdjustDefaultGoalData(additionalDefaultGoalData) end

--- Set default goal data.  defaultGoalData is cloned; any values specified are used for unspecified encounter goal values.
---@param defaultGoalData table
function AIBaseGoal_SetDefaultGoalData(defaultGoalData) end

--- Set modify goal data.  modifyGoalData is cloned; values specified via keyname_Multiplier are used for the numeric keyname encounter goal value.
---@param modifyGoalData table
function AIBaseGoal_SetModifyGoalData(modifyGoalData) end

--- Set override goal data.  overrideGoalData is cloned; any values specified are used for encounter goal values.
---@param overrideGoalData table
function AIBaseGoal_SetOverrideGoalData(overrideGoalData) end

--- Adjust default goal data for defend goals.  Sets the default GoalData to the current defaults plus additionalDefaultGoalData; any values specified are used for unspecified encounter defend goal values.
---@param additionalDefaultGoalData table
function AIDefendGoal_AdjustDefaultGoalData(additionalDefaultGoalData) end

--- Set default goal data for defend goals.  defaultGoalData is cloned; any values specified are used for unspecified encounter defend goal values.
---@param defaultGoalData table
function AIDefendGoal_SetDefaultGoalData(defaultGoalData) end

--- Set modify goal data for defend goals.  modifyGoalData is cloned; values specified via keyname_Multiply are used for the numeric keyname encounter defend goal value.
---@param modifyGoalData table
function AIDefendGoal_SetModifyGoalData(modifyGoalData) end

--- Set override goal data for defend goals.  overrideGoalData is cloned; any values specified are used for encounter defend goal values.
---@param overrideGoalData table
function AIDefendGoal_SetOverrideGoalData(overrideGoalData) end

--- Adjust default goal data for move goals.  Sets the default GoalData to the current defaults plus additionalDefaultGoalData; any values specified are used for unspecified encounter move goal values.
---@param additionalDefaultGoalData table
function AIMoveGoal_AdjustDefaultGoalData(additionalDefaultGoalData) end

--- Set default goal data for move goals.  defaultGoalData is cloned; any values specified are used for unspecified encounter move goal values.
---@param defaultGoalData table
function AIMoveGoal_SetDefaultGoalData(defaultGoalData) end

--- Set modify goal data for move goals.  modifyGoalData is cloned; values specified via keyname_Multiply are used for the numeric keyname encounter move goal value.
---@param modifyGoalData table
function AIMoveGoal_SetModifyGoalData(modifyGoalData) end

--- Set override goal data for move goals.  overrideGoalData is cloned; any values specified are used for encounter move goal values.
---@param overrideGoalData table
function AIMoveGoal_SetOverrideGoalData(overrideGoalData) end

--- Ends the objective and deletes it.
---@param pObjective table
function AIObjective_Cancel(pObjective) end

--- Enables/disables squads in combat garrisoning.
---@param pObjective table
---@param enable boolean
function AIObjective_CombatGuidance_EnableCombatGarrison(pObjective, enable) end

--- Enables/disables allowing squads to retaliate against attacking enemies outside the allowed leash area
---@param pObjective table
---@param enable boolean
function AIObjective_CombatGuidance_EnableRetaliateAttacks(pObjective, enable) end

--- Sets the target area radius for the maximum range an enemy can be for a retaliate attack
---@param pObjective table
---@param radius number
function AIObjective_CombatGuidance_SetRetaliateAttackTargetAreaRadius(pObjective, radius) end

--- Add facing position to objective; used to determine good defensive setup positions.
---@param pObjective table
---@param pos ScarPosition
function AIObjective_DefenseGuidance_AddFacingPosition(pObjective, pos) end

--- Enables/disables idle squads garrisoning.
---@param pObjective table
---@param enable boolean
function AIObjective_DefenseGuidance_EnableIdleGarrison(pObjective, enable) end

--- Remove all facing positions from objective.
---@param pObjective table
function AIObjective_DefenseGuidance_ResetFacingPositions(pObjective) end

--- Enable / disable aggressive move into engagement area
---@param pObjective table
---@param enable boolean
function AIObjective_EngagementGuidance_EnableAggressiveEngagementMove(pObjective, enable) end

--- Enable objective to return to previous stages if they fail to meet conditions for current stage.
---@param pObjective table
---@param enable boolean
function AIObjective_EngagementGuidance_SetAllowReturnToPreviousStages(pObjective, enable) end

--- Enable coordinated arrival or setup of squads at engagement area.
---@param pObjective table
---@param enable boolean
function AIObjective_EngagementGuidance_SetCoordinatedSetup(pObjective, enable) end

--- Sets max time, in seconds, to accomplish objective, once the target is engaged.
---@param pObjective table
---@param seconds number
function AIObjective_EngagementGuidance_SetMaxEngagementTime(pObjective, seconds) end

--- Sets max time, in seconds, to remain idle at objective target, once engaged.
---@param pObjective table
---@param seconds number
function AIObjective_EngagementGuidance_SetMaxIdleTime(pObjective, seconds) end

--- Enable retreat to break supression.
---@param pObjective table
---@param enable boolean
function AIObjective_FallbackGuidance_EnableRetreatOnPinned(pObjective, enable) end

--- Enable retreat to break supression.
---@param pObjective table
---@param enable boolean
function AIObjective_FallbackGuidance_EnableRetreatOnSuppression(pObjective, enable) end

--- Set entities remaining threshold of encounter [0-N] to fallback at.
---@param pObjective table
---@param value number
function AIObjective_FallbackGuidance_SetEntitiesRemainingThreshold(pObjective, value) end

--- Set health threshold [0-1] to fallback at.
---@param pObjective table
---@param value number
function AIObjective_FallbackGuidance_SetFallbackCapacityPercentage(pObjective, value) end

--- Set health threshold [0-1] to fallback at.
---@param pObjective table
---@param value number
function AIObjective_FallbackGuidance_SetFallbackCombatRatingPercentage(pObjective, value) end

--- Set combat rating threshold of area [0-1] to fallback at.
---@param pObjective table
---@param value number
function AIObjective_FallbackGuidance_SetFallbackSquadHealthPercentage(pObjective, value) end

--- Set health threshold [0-1] to fallback at.
---@param pObjective table
---@param value number
function AIObjective_FallbackGuidance_SetFallbackVehicleHealthPercentage(pObjective, value) end

--- Set global fallback threshold (0.0f for individual squad).
---@param pObjective table
---@param value number
function AIObjective_FallbackGuidance_SetGlobalFallbackPercentage(pObjective, value) end

--- Set global retreat type (true for retreat; false for fallback).
---@param pObjective table
---@param value boolean
function AIObjective_FallbackGuidance_SetGlobalFallbackRetreat(pObjective, value) end

--- Set combat rating threshold of area [0-1] to fallback at.
---@param pObjective table
---@param value number
function AIObjective_FallbackGuidance_SetRetreatCapacityPercentage(pObjective, value) end

--- Set combat rating threshold of area [0-1] to fallback at.
---@param pObjective table
---@param value number
function AIObjective_FallbackGuidance_SetRetreatCombatRatingPercentage(pObjective, value) end

--- Set combat rating threshold of area [0-1] to fallback at.
---@param pObjective table
---@param value number
function AIObjective_FallbackGuidance_SetRetreatHealthPercentage(pObjective, value) end

--- Set fallback target.
---@param pObjective table
---@param pos ScarPosition
function AIObjective_FallbackGuidance_SetTargetPosition(pObjective, pos) end

--- Determines if objective is still valid.  Must be true before calling any other of the AIObjective_* function.  Return true if valid, false otherwise.
---@param pObjective table
---@return boolean
function AIObjective_IsValid(pObjective) end

--- Enable / disable aggressive movements on way to engagement targets
---@param pObjective table
---@param enable boolean
function AIObjective_MoveGuidance_EnableAggressiveMove(pObjective, enable) end

--- Reset preference for shorter paths on way to engagement targets, to defaults
---@param pObjective table
function AIObjective_MoveGuidance_ResetPathingLengthFactor(pObjective) end

--- Reset preference for safe movements on way to engagement targets, to defaults
---@param pObjective table
function AIObjective_MoveGuidance_ResetSafePathingWeight(pObjective) end

--- Set preference for shorter paths on way to engagement targets
---@param pObjective table
---@param weight number
function AIObjective_MoveGuidance_SetPathingLengthFactor(pObjective, weight) end

--- Set preference for safe movements on way to engagement targets
---@param pObjective table
---@param weight number
function AIObjective_MoveGuidance_SetSafePathingWeight(pObjective, weight) end

--- Set radius (follow distance) for coordinated move phase (<= 0 disables coordinated movement)
---@param pObjective table
---@param radius number
function AIObjective_MoveGuidance_SetSquadCoherenceRadius(pObjective, radius) end

--- Clears all notification callbacks for objective
---@param pObjective table
function AIObjective_Notify_ClearCallbacks(pObjective) end

--- Sets the failure notification callback for objective.
---@param pObjective table
---@param f function
function AIObjective_Notify_SetFailureCallback(pObjective, f) end

--- Sets the transition notification callback for objective.
---@param pObjective table
---@param f function
function AIObjective_Notify_SetOnTransitionCallback(pObjective, f) end

--- Sets the ID for the notification event sent out by objective
---@param pObjective table
---@param id integer
function AIObjective_Notify_SetPlayerEventObjectiveID(pObjective, id) end

