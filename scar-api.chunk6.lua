--- Specifies a marker where an ability cannot be used. This only applies to abilities where you use the cursor to pick a location in the world (like a location to paradrop at).
---@param player Player
---@param abilityPBG ScarAbilityPBG
---@param marker ScarMarker
function Player_AddAbilityLockoutZone(player, abilityPBG, marker) end

--- Add resource to player, as opposed to just setting it. Possible resource types are RT_Manpower, RT_Munition, RT_Fuel, RT_Action
---@param playerId Player
---@param resourceType integer
---@param value number
function Player_AddResource(playerId, resourceType, value) end

--- For the given player, get all of the squads gathered into a squadgroup of your naming.
---@param playerId Player
---@param squadgroupName string
---@return SGroup
function Player_AddSquadsToSGroup(playerId, squadgroupName) end

--- Gives the player new command points to spent on
---@param player Player
---@param points number
function Player_AddUnspentCommandPoints(player, points) end

--- Returns true if ANY of a players squads are in proximity of a marker
---@param playerid Player
---@param marker Marker
---@return boolean
function Player_AreSquadsNearMarker(playerid, marker) end

--- Tests if the player can currently use an ability on target entity
---@param player Player
---@param abilityPBG ScarAbilityPBG
---@param targetEntity Entity
---@return boolean
function Player_CanCastAbilityOnEntity(player, abilityPBG, targetEntity) end

--- Tests if the player can currently use an ability on target player
---@param player Player
---@param abilityPBG ScarAbilityPBG
---@param targetPlayer Player
---@return boolean
function Player_CanCastAbilityOnPlayer(player, abilityPBG, targetPlayer) end

--- Tests if the player can currently use an ability on target position
---@param player Player
---@param abilityPBG ScarAbilityPBG
---@param targetPosition ScarPosition
---@return boolean
function Player_CanCastAbilityOnPosition(player, abilityPBG, targetPosition) end

--- Tests if the player can currently use an ability on target squad
---@param player Player
---@param abilityPBG ScarAbilityPBG
---@param targetSquad Squad
---@return boolean
function Player_CanCastAbilityOnSquad(player, abilityPBG, targetSquad) end

--- Returns TRUE if player can construct the specified entity at specified position and facing. Otherwise, returns FALSE.
---@param player Player
---@param sgroupid SGroup
---@param ebp Entity
---@param targetid EGroup|ScarPosition|Marker
---@param Facing ScarPosition
---@return boolean
function Player_CanConstructOnPosition(player, sgroupid, ebp, targetid, Facing) end

--- Check if a player of specified group can place an entity at the specified position and facing angle.
---@param player Player
---@param sgroup SGroup
---@param ebp ScarEntityPBG
---@param position ScarPosition
---@param facing ScarPosition
---@return boolean
function Player_CanPlaceStructureOnPosition(player, sgroup, ebp, position, facing) end

--- Returns true if a player can see ALL or ANY items in an egroup
---@param playerid Player
---@param egroup EGroup
---@param all boolean
---@return boolean
function Player_CanSeeEGroup(playerid, egroup, all) end

--- Returns true if a player can see a given entity (revealed in FOW)
---@param player Player
---@param entity Entity
---@return boolean
function Player_CanSeeEntity(player, entity) end

--- Returns true if a player can see a given position.
---@param player Player
---@param pos ScarPosition
---@return boolean
function Player_CanSeePosition(player, pos) end

--- Returns true if a player can see ALL or ANY items in an sgroup
---@param playerid Player
---@param sgroup SGroup
---@param all boolean
---@return boolean
function Player_CanSeeSGroup(playerid, sgroup, all) end

--- Returns true if a player can see ALL or ANY units in a given squad (revealed in FOW)
---@param player Player
---@param squad Squad
---@param all boolean
---@return boolean
function Player_CanSeeSquad(player, squad, all) end

--- Any of the player's units in the marker area move out of the area, and can be made invulnerable for a bit whilst they do it
---@param player Player
---@param marker Marker
---@param invulnerable boolean
function Player_ClearArea(player, marker, invulnerable) end

--- Clears item, command and construction menu availabilities for the player.
---@param player Player
function Player_ClearAvailabilities(player) end

--- Clears the pop cap override so that modifiers can take effect again
---@param player Player
function Player_ClearPopCapOverride(player) end

--- Finish upgrade for a player
---@param pPlayer Player
---@param pUpgradePBG ScarUpgradePBG
function Player_CompleteUpgrade(pPlayer, pUpgradePBG) end

--- Do a paradrop with custom parameters for this player. This is similar to regular paradrop ability without any prereq check
---@param player Player
---@param sgroup SGroup
---@param pos ScarPosition
---@param dropHeight number
---@param dropDrift number
---@param blueprint any
---@param maxSquadEntityCount integer
---@param maxDeathOnBuilding integer
function Player_DoParadrop(player, sgroup, pos, dropHeight, dropDrift, blueprint, maxSquadEntityCount, maxDeathOnBuilding) end

--- Searches the player list in the world and returns the id of the first enemy player
---@param player Player
---@return Player
function Player_FindFirstEnemyPlayer(player) end

--- Returns a player given a player id from the ME.
---@param id integer
---@return Player
function Player_FromId(id) end

--- Returns the type of the given player if it is an AI.
---@param pPlayer Player
---@return Player
function Player_GetAIType(pPlayer) end

--- Creates/Clears groups that contain all of a player's units and buildings. Defaults - sg_allsquads and eg_allentities
---@param player Player
---@param sgroup SGroup
---@param egroup EGroup
---@overload fun(player: Player)
---@overload fun(player: Player, sgroup: SGroup)
function Player_GetAll(player, sgroup, egroup) end

--- Gather together all of a player's entities that are in proximity to a marker, a position, or within a territory sector into an EGroup. The EGroup is cleared beforehand.
---@param playerid Player
---@param egroup EGroup
---@param position Marker|ScarPosition|SectorID
---@param range number
---@overload fun(playerid: Player, egroup: EGroup, position: Marker|ScarPosition|SectorID)
function Player_GetAllEntitiesNearMarker(playerid, egroup, position, range) end

--- Gather together all of a player's squads that are in proximity to a marker, a position, or within a territory sector into an SGroup. The SGroup is cleared beforehand.
---@param player Player
---@param sgroup SGroup
---@param position Marker|ScarPosition|SectorID
---@param range number
---@overload fun(player: Player, sgroup: SGroup, position: Marker|ScarPosition|SectorID)
function Player_GetAllSquadsNearMarker(player, sgroup, position, range) end

--- Returns the entityID of the first player owned building listed in the table.
---@param player Player
---@param entitytypes table
---@return Entity
function Player_GetBuildingID(player, entitytypes) end

--- Returns the total number of buildings owned by this player.
---@param playerId Player
---@return integer
function Player_GetBuildingsCount(playerId) end

--- Returns the total number of buildings owned by this player (with exclusions).
---@param playerId Player
---@param exceptions table
---@return integer
function Player_GetBuildingsCountExcept(playerId, exceptions) end

--- Returns the number of buildings owned by this player (inclusive).
---@param playerId Player
---@param ebplist table
---@return integer
function Player_GetBuildingsCountOnly(playerId, ebplist) end

--- Use capType CT_Personnel to get current squad cap, CT_Vehicle to get current vehicle cap, CT_Medic to get current medic cap
---@param player Player
---@param capType CapType
---@return number
function Player_GetCurrentPopulation(player, capType) end

--- Returns the players UI name.
---@param player Player
---@return LocString
function Player_GetDisplayName(player) end

--- Returns an EntityGroupObs containing all the players entities.
---@param player Player
---@return EGroup
function Player_GetEntities(player) end

--- Returns an EGroup containing all of the players entities of a specific unit_type (as defined by the type_ext on the entity)
---@param player Player
---@param unitType string
---@return EGroup
function Player_GetEntitiesFromType(player, unitType) end

--- Finds the greatest (or least) concentration of entities owned by a player.
---@param player Player
---@param popcapOnly boolean
---@param includeBlueprints table
---@param excludeBlueprints table
---@param bLeastConcentrated boolean
---@param onlyInThisMarker Marker|table
---@return EGroup
---@overload fun(player: Player)
---@overload fun(player: Player, popcapOnly: boolean)
---@overload fun(player: Player, popcapOnly: boolean, includeBlueprints: table)
---@overload fun(player: Player, popcapOnly: boolean, includeBlueprints: table, excludeBlueprints: table)
---@overload fun(player: Player, popcapOnly: boolean, includeBlueprints: table, excludeBlueprints: table, bLeastConcentrated: boolean)
function Player_GetEntityConcentration(player, popcapOnly, includeBlueprints, excludeBlueprints, bLeastConcentrated, onlyInThisMarker) end

--- Returns the number of entities a player currently owns
---@param player Player
---@return integer
function Player_GetEntityCount(player) end

--- Returns the name of an entity a player currently owns
---@param player Player
---@param index integer
---@return string
function Player_GetEntityName(player, index) end

--- Returns the player's post-game fatality function name (as defined in Fatalities.scar)
---@param player Player
---@return string
function Player_GetFatalityFunctionName(player) end

--- Returns the id of the player
---@param player Player
---@return integer
function Player_GetID(player) end

--- Use capType CT_Personnel to get max squad cap or CT_VehicleCap to get max vehicle cap.
---@param player Player
---@param capType CapType
---@return number
function Player_GetMaxPopulation(player, capType) end

--- Returns the number of strategic points (not objectives) this player owns
---@param p Player
---@return integer
function Player_GetNumStrategicPoints(p) end

--- Returns the number of strategic objectives this player owns
---@param p Player
---@return integer
function Player_GetNumVictoryPoints(p) end

--- Gets the current personnel or vehicle population as a percetange of the current max-cap. The captype is either CT_Personnel or CT_Vehicle.
---@param playerid Player
---@param captype integer
---@return number
---@overload fun(playerid: Player)
function Player_GetPopulationPercentage(playerid, captype) end

--- Returns the race index for the given player.
---@param player Player
---@return integer
function Player_GetRace(player) end

--- Returns the name of the race for a given player and always in english
---@param player Player
---@return string
function Player_GetRaceName(player) end

--- Returns the relationship between 2 players.
---@param player1 Player
---@param player2 Player
---@return AllianceResult
function Player_GetRelationship(player1, player2) end

--- Returns the amount of resources a given player has.
---@param player Player
---@param type ResourceType
---@return number
function Player_GetResource(player, type) end

--- Returns the amount of resources a given player is getting per second.
---@param player Player
---@param type ResourceType
---@return number
function Player_GetResourceRate(player, type) end

--- Returns the modified cost of the given unit including all modifications added by the given player.
---@param pPlayer Player
---@param pbg PropertyBagGroup
---@return ResourceAmount
function Player_GetSquadBPCost(pPlayer, pbg) end

--- Finds the greatest (or least) concentration of squads owned by a player.
---@param player Player
---@param popcapOnly boolean
---@param includeBlueprints table
---@param excludeBlueprints table
---@param bLeastConcentrated boolean
---@param onlyInThisMarker Marker|table
---@return SGroup
---@overload fun(player: Player)
---@overload fun(player: Player, popcapOnly: boolean)
---@overload fun(player: Player, popcapOnly: boolean, includeBlueprints: table)
---@overload fun(player: Player, popcapOnly: boolean, includeBlueprints: table, excludeBlueprints: table)
---@overload fun(player: Player, popcapOnly: boolean, includeBlueprints: table, excludeBlueprints: table, bLeastConcentrated: boolean)
function Player_GetSquadConcentration(player, popcapOnly, includeBlueprints, excludeBlueprints, bLeastConcentrated, onlyInThisMarker) end

--- Returns the number of squads a player currently owns
---@param player Player
---@return integer
function Player_GetSquadCount(player) end

--- Returns a SquadGroupObs containing all the players units.
---@param player Player
---@return SGroup
function Player_GetSquads(player) end

--- Returns the starting position for this player
---@param player Player
---@return ScarPosition
function Player_GetStartingPosition(player) end

--- Returns a value (-1.0 to 1.0) of how close a point is to being controlled by the team of the player provided
---@param player Player
---@param strategicPoint Entity
---@return number
function Player_GetStrategicPointCaptureProgress(player, strategicPoint) end

--- Get the team a player is on
---@param p Player
---@return integer
function Player_GetTeam(p) end

--- Returns the current number of units the player has.
---@param player Player
---@return integer
function Player_GetUnitCount(player) end

--- Returns the cost of an upgrade.
---@param player Player
---@param upgradePBG ScarUpgradePBG
---@param resourceType ResourceType
---@return number
function Player_GetUpgradeCost(player, upgradePBG, resourceType) end

--- Tests to see if a player has an ability
---@param pPlayer Player
---@param pAbilityPBG ScarAbilityPBG
---@return boolean
function Player_HasAbility(pPlayer, pAbilityPBG) end

--- Returns true if this player owns any buildings listed in the table.
---@param player Player
---@param entitytypes table
---@return boolean
function Player_HasBuilding(player, entitytypes) end

--- Returns true if this player owns any buildings. (with exclusions).
---@param playerId Player
---@param exceptions table
---@return boolean
function Player_HasBuildingsExcept(playerId, exceptions) end

--- Returns true if this player owns any buildings listed in the table currently under construction.
---@param player Player
---@param entitytypes table
---@return boolean
function Player_HasBuildingUnderConstruction(player, entitytypes) end

--- Returns true if the given player has units that are able to capture in the capturable area of the given strategic point
---@param player Player
---@param strategicPoint Entity
---@return boolean
function Player_HasCapturingSquadNearStrategicPoint(player, strategicPoint) end

--- Checks to see if a player has lost (if player owns any squads and any buildings contained in blueprints)
---@param player Player
---@param Blueprints table
---@return boolean
function Player_HasLost(player, Blueprints) end

--- Returns whether a player has a map entry position
---@param player Player
---@return boolean
function Player_HasMapEntryPosition(player) end

--- Return true if the squad has purchased the specified upgrade.
---@param pPlayer Player
---@param upgradePBG ScarUpgradePBG
---@return boolean
function Player_HasUpgrade(pPlayer, upgradePBG) end

--- Returns true if player is still alive and false if player is dead.  Will error if playerIdx is an invalid index.
---@param player Player
---@return boolean
function Player_IsAlive(player) end

--- Returns true if the players are allied and false if they are not.
---@param playerId1 Player
---@param playerId2 Player
---@return boolean
function Player_IsAllied(playerId1, playerId2) end

--- Returns whether a player is human controlled (local or remote), not dead, and not replaced by an AI
---@param pPlayer Player
---@return boolean
function Player_IsHuman(pPlayer) end

--- Returns true if player has surrendered and false if not. Will error if playerIdx is an invalid index.
---@param player Player
---@return boolean
function Player_IsSurrendered(player) end

--- Returns the number of upgrades that this player has.
---@param player Player
---@param upgradePBG ScarSquadPBG
---@return integer
function Player_NumUpgradeComplete(player, upgradePBG) end

--- Returns true if a given player owns ALL or ANY items in a group
---@param playerid Player
---@param egroup EGroup
---@param all boolean
---@return boolean
---@overload fun(playerid: Player, egroup: EGroup)
function Player_OwnsEGroup(playerid, egroup, all) end

--- Returns true if a given player owns an entity
---@param playerid Player
---@param entity Entity
---@return boolean
function Player_OwnsEntity(playerid, entity) end

--- Returns true if a given player owns ALL or ANY items in a group
---@param playerid Player
---@param sgroup SGroup
---@param all boolean
---@return boolean
---@overload fun(playerid: Player, sgroup: SGroup)
function Player_OwnsSGroup(playerid, sgroup, all) end

--- Returns true if a given player owns a squad
---@param playerid Player
---@param squad Squad
---@return boolean
function Player_OwnsSquad(playerid, squad) end

--- Removes a marker that was previously a lockout zone.
---@param player Player
---@param abilityPBG ScarAbilityPBG
---@param marker ScarMarker
function Player_RemoveAbilityLockoutZone(player, abilityPBG, marker) end

--- Removes an upgrade from a player
---@param player Player
---@param upgrade ScarUpgradePBG
function Player_RemoveUpgrade(player, upgrade) end

--- Reset the resource amount for a given player to zero.  Also reset team weapon
---@param player Player
---@param type ResourceType
function Player_ResetResource(player, type) end

--- Restrict a list of addons.
---@param playerid Player
---@param addonlist table
function Player_RestrictAddOnList(playerid, addonlist) end

--- Restrict a list of buildings.
---@param playerid Player
---@param blueprintlist table
function Player_RestrictBuildingList(playerid, blueprintlist) end

--- Restrict a list of research items.
---@param playerid Player
---@param list table
function Player_RestrictResearchList(playerid, list) end

--- Sets the availability of an ability. Availability can be either ITEM_LOCKED, ITEM_UNLOCKED, ITEM_REMOVED or ITEM_DEFAULT
---@param player Player
---@param bp AbilityBlueprint|table
---@param availability integer
function Player_SetAbilityAvailability(player, bp, availability) end

--- Sets availability of ALL entity, squad and player commands.
---@param player Player
---@param availability Availability
---@param reason LocString
function Player_SetAllCommandAvailabilityInternal(player, availability, reason) end

--- Sets the availability of entity, squad and player commands. Availability can be either ITEM_LOCKED, ITEM_UNLOCKED, ITEM_REMOVED or ITEM_DEFAULT
---@param player Player
---@param command integer|table
---@param availability integer
function Player_SetCommandAvailability(player, command, availability) end

--- Sets the availability of a construction menu. Availability can be either ITEM_LOCKED, ITEM_UNLOCKED, ITEM_REMOVED or ITEM_DEFAULT
---@param player Player
---@param menuname string|table
---@param availability integer
function Player_SetConstructionMenuAvailability(player, menuname, availability) end

--- Set default squad mood mode which can be overrided by squad level mood mode settings
---@param pPlayer Player
---@param mood Squad
function Player_SetDefaultSquadMoodMode(pPlayer, mood) end

--- Sets the availability of an entity production item. Availability can be either ITEM_LOCKED, ITEM_UNLOCKED, ITEM_REMOVED or ITEM_DEFAULT
---@param player Player
---@param bp Entity|table
---@param availability integer
function Player_SetEntityProductionAvailability(player, bp, availability) end

--- Set the heat gain rate per second for this player. Heat is gained when near a heat source or garrisoned.
---@param player Player
---@param gainRatePerSecond number
function Player_SetHeatGainRate(player, gainRatePerSecond) end

--- Set the heat loss rate per second for this player. Heat is lost when not garrisoned and not near a heat source and not in valid cover. A value of 0 turns off the Cold System for all squads belonging to this player. It will also reset all squads to the default heat level.
---@param player Player
---@param lossRatePerSecond number
function Player_SetHeatLossRate(player, lossRatePerSecond) end

--- Sets the current personnel or vehicle max-cap for a player. The captype is either CT_Personnel or CT_Vehicle (you can't adjust Medic caps just yet).
---@param playerid Player
---@param captype integer
---@param newcap integer
function Player_SetMaxCapPopulation(playerid, captype, newcap) end

--- Sets the current personnel or vehicle cap for a player. The captype is either CT_Personnel or CT_Vehicle (you can't adjust Medic caps just yet).
---@param playerid Player
---@param captype integer
---@param newcap integer
function Player_SetMaxPopulation(playerid, captype, newcap) end

--- Sets a pop cap override that ignores any modifiers.
---@param player Player
---@param personnel number
function Player_SetPopCapOverride(player, personnel) end

--- Set the resource amount for a given player.  Ignores income cap and resource sharing.
---@param player Player
---@param type ResourceType
---@param amt number
function Player_SetResource(player, type, amt) end

--- Sets the availability of a squad production item. Availability can be either ITEM_LOCKED, ITEM_UNLOCKED, ITEM_REMOVED or ITEM_DEFAULT
---@param player Player
---@param bp SquadBlueprint|table
---@param availability integer
function Player_SetSquadProductionAvailability(player, bp, availability) end

--- Sets the availability of an upgrade. Availability can be either ITEM_LOCKED, ITEM_UNLOCKED, ITEM_REMOVED or ITEM_DEFAULT
---@param player Player
---@param bp UpgradeBlueprint|table
---@param availability integer
function Player_SetUpgradeAvailability(player, bp, availability) end

--- Sets the cost of an upgrade.
---@param player Player
---@param upgrade UpgradeID
---@param manpower number
---@param fuel number
---@param munition number
---@param action number
---@param command number
function Player_SetUpgradeCost(player, upgrade, manpower, fuel, munition, action, command) end

--- Spawns a glider and returns it
---@param player Player
---@param glider ScarEntityPBG
---@param start ScarPosition
---@param _end ScarPosition
---@return Entity
function Player_SpawnGlider(player, glider, start, _end) end

--- Abruptly stops an active ability
---@param player Player
---@param ability ScarAbilityPBG
---@param bEarlyExit boolean
function Player_StopAbility(player, ability, bEarlyExit) end

--- Prevents a player from earning any action points (and by extention, command points)
---@param player Player
function Player_StopEarningActionPoints(player) end

--- Returns the enemy squads and entities within a player's radio beacons. Radio beacons are shared among team members.
---@param player Player
---@param squads SGroup
---@param eg EGroup
function Player_Triangulate(player, squads, eg) end

--- Prints a message on the screen
---@param text string
function PrintOnScreen(text) end

--- Prints the lua content of an object on the screen
---@param object any
---@param id string
---@param style string
---@return PrintOnScreenID
---@overload fun(object: any, id: string)
function PrintOnScreen_Add(object, id, style) end

--- Removes the PrintOnScreen text of a given ID
---@param id string
function PrintOnScreen_Remove(id) end

--- Remove any messages from the screen
function PrintOnScreen_RemoveFromScreen() end

--- Returns true if ANY or ALL entities from a group are in range of a given position, marker, or territory sector.
---@param egroup EGroup
---@param position Marker|ScarPosition|SectorID
---@param all boolean
---@param range number
---@return boolean
---@overload fun(egroup: EGroup, position: Marker|ScarPosition|SectorID, all: boolean)
function Prox_AreEntitiesNearMarker(egroup, position, all, range) end

--- Returns true if ANY or ALL of a player's members (i.e. individual guys, not squads as a whole) are in range of a given position, marker, or territory sector. DO NOT USE THIS FUNCTION UNLESS YOU ABSOLUTELY HAVE TO!!
---@param player Player
---@param position Marker|ScarPosition|SectorID
---@param all boolean
---@param range number
---@param filterlist SquadBlueprint|table
---@param filtertype integer
---@return boolean
---@overload fun(player: Player, position: Marker|ScarPosition|SectorID, all: boolean)
---@overload fun(player: Player, position: Marker|ScarPosition|SectorID, all: boolean, range: number)
---@overload fun(player: Player, position: Marker|ScarPosition|SectorID, all: boolean, range: number, filterlist: SquadBlueprint|table)
function Prox_ArePlayerMembersNearMarker(player, position, all, range, filterlist, filtertype) end

--- Returns true if ANY or ALL of a player's squads are in range of a given position, marker, or territory sector. THIS FUNCTION IS VERY SLOW. DO NOT USE THIS UNLESS ABSOLUTELY NECESSARY.
---@param player Player
---@param position Marker|ScarPosition|SectorID
---@param all boolean
---@param range number
---@param filterlist SquadBlueprint|table
---@param filtertype integer
---@return boolean
---@overload fun(player: Player, position: Marker|ScarPosition|SectorID, all: boolean)
---@overload fun(player: Player, position: Marker|ScarPosition|SectorID, all: boolean, range: number)
---@overload fun(player: Player, position: Marker|ScarPosition|SectorID, all: boolean, range: number, filterlist: SquadBlueprint|table)
function Prox_ArePlayersNearMarker(player, position, all, range, filterlist, filtertype) end

--- Returns true if ANY or ALL squad members (i.e. individual guys, not squads as a whole) from a group are in range of a given position, marker, or territory sector. DO NOT USE THIS FUNCTION UNLESS YOU ABSOLUTELY HAVE TO!!
---@param sgroup SGroup
---@param position Marker|ScarPosition|SectorID
---@param all boolean
---@param range number
---@return boolean
---@overload fun(sgroup: SGroup, position: Marker|ScarPosition|SectorID, all: boolean)
function Prox_AreSquadMembersNearMarker(sgroup, position, all, range) end

--- Returns true if ANY or ALL squads from a group are in range of a given position, marker, or territory sector
---@param sgroup SGroup
---@param position Marker|ScarPosition|SectorID
---@param all boolean
---@param range number
---@return boolean
---@overload fun(sgroup: SGroup, position: Marker|ScarPosition|SectorID, all: boolean)
function Prox_AreSquadsNearMarker(sgroup, position, all, range) end

--- Returns true if ANY or ALL of a teams's squads are in range of a given position, marker, or territory sector. THIS FUNCTION IS VERY SLOW. DO NOT USE THIS UNLESS ABSOLUTELY NECESSARY.
---@param team integer
---@param position Marker|ScarPosition|SectorID
---@param all boolean
---@param range number
---@param filterlist SquadBlueprint|table
---@param filtertype integer
---@return boolean
---@overload fun(team: integer, position: Marker|ScarPosition|SectorID, all: boolean)
---@overload fun(team: integer, position: Marker|ScarPosition|SectorID, all: boolean, range: number)
---@overload fun(team: integer, position: Marker|ScarPosition|SectorID, all: boolean, range: number, filterlist: SquadBlueprint|table)
function Prox_AreTeamsNearMarker(team, position, all, range, filterlist, filtertype) end

--- Returns the distance between two entity groups. use checktype PROX_SHORTEST, PROX_LONGEST, or PROX_CENTER.
---@param egroup1 EGroup
---@param egroup2 EGroup
---@param checktype ProxType
---@return number
function Prox_EGroupEGroup(egroup1, egroup2, checktype) end

--- Returns the distance between an entity group and a squad group.  use checktype PROX_SHORTEST, PROX_LONGEST, or PROX_CENTER.
---@param egroup1 EGroup
---@param sgroup2 SGroup
---@param checktype ProxType
---@return number
function Prox_EGroupSGroup(egroup1, sgroup2, checktype) end

--- Checks if ALL or ANY entities are in proximity of a given entity group.
---@param egroup1 EGroup
---@param egroup2 EGroup
---@param proximity number
---@param all boolean
---@return boolean
function Prox_EntitiesInProximityOfEntities(egroup1, egroup2, proximity, all) end

--- Takes something (Entity, Squad, SGroup, EGroup, Position) in, then returns a random position
---@param item any
---@param radius integer
---@param minimum integer
---@return ScarPosition
function Prox_GetRandomPosition(item, radius, minimum) end

--- Returns the distance between a marker and an entity group.  use checktype PROX_SHORTEST, PROX_LONGEST, or PROX_CENTER.
---@param marker Marker
---@param egroup EGroup
---@param checktype ProxType
---@return number
function Prox_MarkerEGroup(marker, egroup, checktype) end

--- Returns the distance between a marker and a squad group.  use checktype PROX_SHORTEST, PROX_LONGEST, or PROX_CENTER.
---@param marker Marker
---@param sgroup SGroup
---@param checktype ProxType
---@return number
function Prox_MarkerSGroup(marker, sgroup, checktype) end

--- Checks if ALL or ANY players squads are in proximity of a given entity group.
---@param playerid Player
---@param egroup EGroup
---@param proximity number
---@param all boolean
---@param exclude Entity
---@return boolean
function Prox_PlayerEntitiesInProximityOfEntities(playerid, egroup, proximity, all, exclude) end

--- Checks if ALL or ANY players entities are in proximity of a given squad group.
---@param playerentities Player
---@param playersquads Player
---@param proximity number
---@param all boolean
---@return boolean
function Prox_PlayerEntitiesInProximityOfPlayerSquads(playerentities, playersquads, proximity, all) end

--- Checks if ALL or ANY players entities are in proximity of a given squad group.
---@param playerid Player
---@param sgroup SGroup
---@param proximity number
---@param all boolean
---@return boolean
function Prox_PlayerEntitiesInProximityOfSquads(playerid, sgroup, proximity, all) end

--- Checks if ALL or ANY players squads are in proximity of a given entity group.
---@param playerid Player
---@param egroup EGroup
---@param proximity number
---@param all boolean
---@param filterlist SquadBlueprint|table
---@param filtertype integer
---@return boolean
function Prox_PlayerSquadsInProximityOfEntities(playerid, egroup, proximity, all, filterlist, filtertype) end

--- Checks if ALL or ANY players squads are in proximity of a given players entities.
---@param playersquads Player
---@param playerentities Player
---@param proximity number
---@param all boolean
---@return boolean
function Prox_PlayerSquadsInProximityOfPlayerEntities(playersquads, playerentities, proximity, all) end

--- Checks if ALL or ANY players squads are in proximity of a given players squads.
---@param playerid1 Player
---@param playerid2 Player
---@param proximity number
---@param all boolean
---@return boolean
function Prox_PlayerSquadsInProximityOfPlayerSquads(playerid1, playerid2, proximity, all) end

--- Checks if ALL or ANY players squads are in proximity of a given squad group.
---@param playerid Player
---@param sgroup SGroup
---@param proximity number
---@param all boolean
---@param exclude Squad
---@param filterlist SquadBlueprint|table
---@param filtertype integer
---@return boolean
function Prox_PlayerSquadsInProximityOfSquads(playerid, sgroup, proximity, all, exclude, filterlist, filtertype) end

--- Returns the distance between two squad groups. use checktype PROX_SHORTEST, PROX_LONGEST, or PROX_CENTER.
---@param sgroup1 SGroup
---@param sgroup2 SGroup
---@param checktype ProxType
---@return number
function Prox_SGroupSGroup(sgroup1, sgroup2, checktype) end

--- Checks if ALL or ANY squads are in proximity of a given entity group.
---@param sgroup SGroup
---@param egroup EGroup
---@param proximity number
---@param all boolean
---@return boolean
function Prox_SquadsInProximityOfEntities(sgroup, egroup, proximity, all) end

--- Checks if ALL or ANY squads are in proximity of a given squad group.
---@param sgroup1 SGroup
---@param sgroup2 SGroup
---@param proximity number
---@param all boolean
---@return boolean
function Prox_SquadsInProximityOfSquads(sgroup1, sgroup2, proximity, all) end

--- Add each element of the two passed in ResourceAmounts together
---@param amt1 ResourceAmount
---@param amt2 ResourceAmount
---@return ResourceAmount
function ResourceAmount_Add(amt1, amt2) end

--- Clamps the passed in resource to zero if it has any negative numbers
---@param amt ResourceAmount
---@return ResourceAmount
function ResourceAmount_ClampToZero(amt) end

--- Returns true if the first amount has enough resources for the second amount (amt2)
---@param amt1 ResourceAmount
---@param amt2 ResourceAmount
---@return boolean
function ResourceAmount_Has(amt1, amt2) end

--- Take a resource amount and multiply each value inside of it by mult
---@param amt1 ResourceAmount
---@param mult number
---@return ResourceAmount
function ResourceAmount_Mult(amt1, mult) end

--- Subtract the second amount from the first and return the new ResourceAmount
---@param amt1 ResourceAmount
---@param amt2 ResourceAmount
---@return ResourceAmount
function ResourceAmount_Subtract(amt1, amt2) end

--- Add up all the numbers in the resource and return a single value
---@param amt1 ResourceAmount
---@return number
function ResourceAmount_Sum(amt1) end

--- Creates a new ResourceAmount all set to zero
---@return ResourceAmount
function ResourceAmount_Zero() end

--- Disables any resource income - useful to stop resources accruing during the opening movie
function Resources_Disable() end

--- Re-enables resource income.
function Resources_Enable() end

--- Add a rule to be executed every frame. Priority can be from 0 to 1000, with 0 being the lowest. Priority is used in conjunction with Rule_RemoveAll so that rules with high priority do not get removed.
---@param rule function
---@param priority integer
---@overload fun(rule: function)
function Rule_Add(rule, priority) end

--- Add a rule to be executed at every 'interval' seconds, after an initial delay. Priority can be from 0 to 1000, with 0 being the lowest. Priority is used in conjunction with Rule_RemoveAll so that rules with high priority do not get removed.
---@param rule function
---@param delay number
---@param interval number
---@param priority integer
---@overload fun(rule: function, delay: number, interval: number)
function Rule_AddDelayedInterval(rule, delay, interval, priority) end

--- Add a rule to be executed 'calls' times, at every 'interval' seconds, after an initial delay. Priority can be from 0 to 1000, with 0 being the lowest. Priority is used in conjunction with Rule_RemoveAll so that rules with high priority do not get removed.
---@param rule function
---@param delay number
---@param interval number
---@param calls_1 integer
---@param priority integer
---@param calls_2 integer
---@overload fun(rule: function, delay: number, interval: number, calls_1: integer)
---@overload fun(rule: function, delay: number, interval: number, calls_1: integer, priority: integer)
function Rule_AddDelayedIntervalEx(rule, delay, interval, calls_1, priority, calls_2) end

--- Add a rule to be executed when the event of 'eventType' has happened on entities in the 'egroup'
---@param rule function
---@param egroup EGroup
---@param eventtype integer
function Rule_AddEGroupEvent(rule, egroup, eventtype) end

--- Add a rule to be executed when the event of 'eventType' has happened on the 'entity'
---@param rule function
---@param entity Entity
---@param eventtype integer
function Rule_AddEntityEvent(rule, entity, eventtype) end

--- Add a rule to be executed when the event of 'eventType' has happened, regardless of source
---@param rule function
---@param eventtype integer
function Rule_AddGlobalEvent(rule, eventtype) end

--- Add a rule to be executed at every 'interval' seconds. Priority can be from 0 to 1000, with 0 being the lowest. Priority is used in conjunction with Rule_RemoveAll so that rules with high priority do not get removed.
---@param rule function
---@param interval number
---@param priority integer
---@overload fun(rule: function, interval: number)
function Rule_AddInterval(rule, interval, priority) end

--- Add a rule to be executed 'calls' times, at every 'interval' seconds. Priority can be from 0 to 1000, with 0 being the lowest. Priority is used in conjunction with Rule_RemoveAll so that rules with high priority do not get removed.
---@param rule function
---@param interval number
---@param calls integer
---@param priority integer
---@overload fun(rule: function, interval: number, calls: integer)
function Rule_AddIntervalEx(rule, interval, calls, priority) end

--- Add a rule to be executed once, after 'delay' seconds. Priority can be from 0 to 1000, with 0 being the lowest. Priority is used in conjunction with Rule_RemoveAll so that rules with high priority do not get removed.
---@param rule function
---@param delay number
---@param priority integer
---@overload fun(rule: function, delay: number)
function Rule_AddOneShot(rule, delay, priority) end

--- Add a rule to be executed when the event of 'eventType' has happened on the 'player'
---@param rule function
---@param player Player
---@param eventtype integer
function Rule_AddPlayerEvent(rule, player, eventtype) end

--- Add a rule to be executed when the event of 'eventType' has happened on squads in the 'sgroup'
---@param rule function
---@param sgroup SGroup
---@param eventtype integer
function Rule_AddSGroupEvent(rule, sgroup, eventtype) end

--- Add a rule to be executed when the event of 'eventType' has happened on the 'squad'
---@param rule function
---@param squad Squad
---@param eventtype integer
function Rule_AddSquadEvent(rule, squad, eventtype) end

--- Change 'interval' seconds of an existing rule
---@param rule function
---@param interval number
function Rule_ChangeInterval(rule, interval) end

--- Test if a rule is currently active
---@param rule function
---@return boolean
function Rule_Exists(rule) end

--- Remove a currently active rule (this does not remove any event rules)
---@param rule function
function Rule_Remove(rule) end

--- Kills all rules below a certain priority. The default is to remove ALL rules.
---@param max_priority integer
---@overload fun()
function Rule_RemoveAll(max_priority) end

--- Remove an active event rule for entities in the 'egroup'
---@param rule function
---@param egroup EGroup
function Rule_RemoveEGroupEvent(rule, egroup) end

--- Remove an active event rule for the 'entity'
---@param rule function
---@param entity Entity
function Rule_RemoveEntityEvent(rule, entity) end

--- Remove an active event rule that's been applied 'globally'
---@param rule function
function Rule_RemoveGlobalEvent(rule) end

--- Remove a currently active rule if it exists(this does not remove any event rules)
---@param rule function
function Rule_RemoveIfExist(rule) end

--- Remove a currently executing rule (only works inside a rule function)
function Rule_RemoveMe() end

--- Remove an active event rule for the 'player'
---@param rule function
---@param player Player
function Rule_RemovePlayerEvent(rule, player) end

