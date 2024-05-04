local _, TRB = ...
local _, _, classIndexId = UnitClass("player")
if classIndexId ~= 4 then --Only do this if we're on a Rogue!
	return
end

TRB.Classes = TRB.Classes or {}
TRB.Classes.Rogue = TRB.Classes.Rogue or {}

---@class TRB.Classes.Rogue.RogueBaseSpells : TRB.Classes.SpecializationSpellsBase
---@field public cripplingPoison TRB.Classes.SpellBase
---@field public woundPoison TRB.Classes.SpellBase
---@field public numbingPoison TRB.Classes.SpellBase
---@field public atrophicPoison TRB.Classes.SpellBase
---@field public stealth TRB.Classes.SpellBase
---@field public nimbleFingers TRB.Classes.SpellBase
---@field public subterfuge TRB.Classes.SpellBase
---@field public rushedSetup TRB.Classes.SpellBase
---@field public tightSpender TRB.Classes.SpellBase
---@field public shadowDance TRB.Classes.SpellBase
---@field public adrenalineRush TRB.Classes.SpellBase
---@field public crimsonVial TRB.Classes.SpellThreshold
---@field public distract TRB.Classes.SpellThreshold
---@field public feint TRB.Classes.SpellThreshold
---@field public sap TRB.Classes.SpellThreshold
---@field public cheapShot TRB.Classes.SpellComboPointThreshold
---@field public kidneyShot TRB.Classes.SpellComboPointThreshold
---@field public sliceAndDice TRB.Classes.SpellComboPointThreshold
---@field public shiv TRB.Classes.SpellComboPointThreshold
---@field public gouge TRB.Classes.SpellComboPointThreshold
---@field public echoingReprimand TRB.Classes.SpellComboPointThreshold
---@field public echoingReprimand_2CP TRB.Classes.SpellBase
---@field public echoingReprimand_3CP TRB.Classes.SpellBase
---@field public echoingReprimand_4CP TRB.Classes.SpellBase
---@field public echoingReprimand_5CP TRB.Classes.SpellBase
---@field public sepsis TRB.Classes.SpellComboPointThreshold
---@field public dismantle TRB.Classes.SpellThreshold
---@field public deathFromAbove TRB.Classes.SpellThreshold
TRB.Classes.Rogue.RogueBaseSpells = setmetatable({}, {__index = TRB.Classes.SpecializationSpellsBase})
TRB.Classes.Rogue.RogueBaseSpells.__index = TRB.Classes.Rogue.RogueBaseSpells

---Creates a new RogueBaseSpells
---@return TRB.Classes.Rogue.RogueBaseSpells
function TRB.Classes.Rogue.RogueBaseSpells:New()
    ---@type TRB.Classes.SpecializationSpellsBase
    local base = TRB.Classes.SpecializationSpellsBase
    self = setmetatable(base:New(), TRB.Classes.Rogue.RogueBaseSpells) --[[@as TRB.Classes.Rogue.RogueBaseSpells]]
   
    -- Class Poisons
    self.cripplingPoison = TRB.Classes.SpellBase:New({
        id = 3409,
        isTalent = false
    })
    self.woundPoison = TRB.Classes.SpellBase:New({
        id = 8680,
        isTalent = false
    })
    self.numbingPoison = TRB.Classes.SpellBase:New({
        id = 5760,
        isTalent = true
    })
    self.atrophicPoison = TRB.Classes.SpellBase:New({
        id = 392388,
        isTalent = true
    })
    
    self.stealth = TRB.Classes.SpellBase:New({
        id = 1784
    })

    -- Rogue Class Baseline Abilities
    self.cheapShot = TRB.Classes.SpellComboPointThreshold:New({
        id = 1833,
        resource = -40,
        comboPointsGenerated = 1,
        stealth = true,
        thresholdId = 2,
        settingKey = "cheapShot",
        rushedSetup = true,
        baseline = true,
        isSnowflake = true
    })
    self.crimsonVial = TRB.Classes.SpellThreshold:New({
        id = 185311,
        resource = -20,
        thresholdId = 3,
        settingKey = "crimsonVial",
        hasCooldown = true,
        cooldown = 30,
        nimbleFingers = true,
        baseline = true
    })
    self.distract = TRB.Classes.SpellThreshold:New({
        id = 1725,
        resource = -30,
        comboPointsGenerated = 0,
        thresholdId = 4,
        settingKey = "distract",
        hasCooldown = true,
        cooldown = 30,
        rushedSetup = true,
        baseline = true
    })
    self.kidneyShot = TRB.Classes.SpellComboPointThreshold:New({
        id = 408,
        resource = -25,
        comboPoints = true,
        thresholdId = 5,
        settingKey = "kidneyShot",
        hasCooldown = true,
        cooldown = 20,
        rushedSetup = true,
        baseline = true
    })
    self.sliceAndDice = TRB.Classes.SpellComboPointThreshold:New({
        id = 315496,
        resource = -25,
        comboPoints = true,
        thresholdId = 6,
        settingKey = "sliceAndDice",
        hasCooldown = false,
        isSnowflake = true,
        pandemicTimes = {
            12 * 0.3, -- 0 CP, show same as if we had 1
            12 * 0.3,
            18 * 0.3,
            24 * 0.3,
            30 * 0.3,
            36 * 0.3,
            42 * 0.3,
            48 * 0.3
        },
        baseline = true
    })
    self.feint = TRB.Classes.SpellThreshold:New({
        id = 1966,
        resource = -35,
        thresholdId = 7,
        settingKey = "feint",
        hasCooldown = true,
        cooldown = 15,
        nimbleFingers = true,
        hasCharges = true,
        isTalent = false,
        baseline = true
    })

    --Rogue Talent Abilities
    self.shiv = TRB.Classes.SpellComboPointThreshold:New({
        id = 5938,
        resource = -30,
        comboPointsGenerated = 1,
        thresholdId = 8,
        settingKey = "shiv",
        hasCooldown = true,
        cooldown = 25,
        isTalent = true
    })
    self.sap = TRB.Classes.SpellThreshold:New({ -- Baseline
        id = 6770,
        resource = -35,
        stealth = true,
        thresholdId = 9,
        settingKey = "sap",
        rushedSetup = true,
        baseline = true
    })
    self.nimbleFingers = TRB.Classes.SpellBase:New({
        id = 378427,
        resourceMod = -10,
        isTalent = true
    })
    self.gouge = TRB.Classes.SpellComboPointThreshold:New({
        id = 1776,
        resource = -25,
        comboPointsGenerated = 1,
        thresholdId = 10,
        settingKey = "gouge",
        hasCooldown = true,
        cooldown = 15,
        isTalent = true
    })
    self.subterfuge = TRB.Classes.SpellBase:New({
        id = 115192,
        isTalent = true
    })
    self.rushedSetup = TRB.Classes.SpellBase:New({
        id = 378803,
        resourcePercent = 0.8,
        isTalent = true
    })
    self.tightSpender = TRB.Classes.SpellBase:New({
        id = 381621,
        resourcePercent = 0.9,
        isTalent = true
    })
    self.echoingReprimand = TRB.Classes.SpellComboPointThreshold:New({
        id = 385616,
        resource = -10,
        comboPointsGenerated = 2,
        thresholdId = 11,
        settingKey = "echoingReprimand",
        hasCooldown = true,
        cooldown = 45,
        isTalent = true,
        buffId = {
            323558, -- 2
            323559, -- 3
            323560, -- 4
            354835, -- 4
            354838, -- 5
        }
    })
    self.echoingReprimand_2CP = TRB.Classes.SpellBase:New({
        id = 323558,
        comboPoint = 2
    })
    self.echoingReprimand_3CP = TRB.Classes.SpellBase:New({
        id = 323559,
        comboPoint = 3
    })
    self.echoingReprimand_4CP = TRB.Classes.SpellBase:New({
        id = 323560,
        comboPoint = 4
    })
    self.echoingReprimand_4CP2 = TRB.Classes.SpellBase:New({
        id = 354835,
        comboPoint = 4
    })
    self.echoingReprimand_5CP = TRB.Classes.SpellBase:New({
        id = 354838,
        comboPoint = 5
    })
    self.shadowDance = TRB.Classes.SpellBase:New({
        id = 185422,
        isTalent = true
    })

    self.adrenalineRush = TRB.Classes.SpellBase:New({
        id = 13750
    })
    self.sepsis = TRB.Classes.SpellComboPointThreshold:New({
        id = 385408,
        resource = -25,
        comboPointsGenerated = 1,
        thresholdId = 100,
        settingKey = "sepsis",
        hasCooldown = true,
        cooldown = 90,
        buffId = 375939,
        isTalent = true
    })
    -- PvP
    self.deathFromAbove = TRB.Classes.SpellComboPointThreshold:New({
        id = 269513,
        resource = -25,
        thresholdId = 101,
        settingKey = "deathFromAbove",
        comboPoints = true,
        hasCooldown = true,
        isPvp = true
    })
    self.dismantle = TRB.Classes.SpellThreshold:New({
        id = 207777,
        resource = -25,
        thresholdId = 102,
        settingKey = "dismantle",
        hasCooldown = true,
        isPvp = true
    })

    return self
end


---@class TRB.Classes.Rogue.AssassinationSpells : TRB.Classes.Rogue.RogueBaseSpells
---@field public deadlyPoison TRB.Classes.SpellBase
---@field public amplifyingPoison TRB.Classes.SpellBase
---@field public internalBleeding TRB.Classes.SpellBase
---@field public lightweightShiv TRB.Classes.SpellBase
---@field public improvedGarrote TRB.Classes.SpellBase
---@field public viciousVenoms TRB.Classes.SpellBase
---@field public blindside TRB.Classes.SpellBase
---@field public tinyToxicBlade TRB.Classes.SpellBase
---@field public adrenalineRush TRB.Classes.SpellBase
---@field public ambush TRB.Classes.SpellComboPointThreshold
---@field public envenom TRB.Classes.SpellComboPointThreshold
---@field public fanOfKnives TRB.Classes.SpellComboPointThreshold
---@field public garrote TRB.Classes.SpellComboPointThreshold
---@field public mutilate TRB.Classes.SpellComboPointThreshold
---@field public poisonedKnife TRB.Classes.SpellComboPointThreshold
---@field public rupture TRB.Classes.SpellComboPointThreshold
---@field public crimsonTempest TRB.Classes.SpellComboPointThreshold
---@field public serratedBoneSpike TRB.Classes.SpellComboPointThreshold
---@field public kingsbane TRB.Classes.SpellComboPointThreshold
TRB.Classes.Rogue.AssassinationSpells = setmetatable({}, {__index = TRB.Classes.Rogue.RogueBaseSpells})
TRB.Classes.Rogue.AssassinationSpells.__index = TRB.Classes.Rogue.AssassinationSpells

function TRB.Classes.Rogue.AssassinationSpells:New()
    ---@type TRB.Classes.Rogue.RogueBaseSpells
    local base = TRB.Classes.Rogue.RogueBaseSpells
    self = setmetatable(base:New(), TRB.Classes.Rogue.AssassinationSpells) --[[@as TRB.Classes.Rogue.AssassinationSpells]]

    -- Assassination Poisons
    self.deadlyPoison = TRB.Classes.SpellBase:New({
        id = 2818,
        isTalent = true
    })
    self.amplifyingPoison = TRB.Classes.SpellBase:New({
        id = 383414,
        isTalent = true
    })
    -- Rogue Class Baseline Abilities
    self.ambush = TRB.Classes.SpellComboPointThreshold:New({
        id = 8676,
        resource = -50,
        comboPointsGenerated = 2,
        stealth = true,
        thresholdId = 1,
        settingKey = "ambush",
        baseline = true,
        viciousVenoms = true
    })
    self.shiv.hasCharges = true
    
    -- Assassination Baseline Abilities
    self.envenom = TRB.Classes.SpellComboPointThreshold:New({
        id = 32645,
        resource = -35,
        comboPoints = true,
        thresholdId = 12,
        settingKey = "envenom",
        baseline = true
    })
    self.fanOfKnives = TRB.Classes.SpellComboPointThreshold:New({
        id = 51723,
        resource = -35,
        comboPointsGenerated = 1,
        thresholdId = 13,
        settingKey = "fanOfKnives",
        baseline = true
    })
    self.garrote = TRB.Classes.SpellComboPointThreshold:New({
        id = 703,
        resource = -45,
        comboPointsGenerated = 1,
        thresholdId = 14,
        settingKey = "garrote",
        hasCooldown = true,
        cooldown = 6,
        baseDuration = 18,
        baseline = true,
        isSnowflake = true,
        pandemic = true
    })
    self.mutilate = TRB.Classes.SpellComboPointThreshold:New({
        id = 1329,
        resource = -50,
        comboPointsGenerated = 2,
        thresholdId = 15,
        settingKey = "mutilate",
        baseline = true,
        viciousVenoms = true
    })
    self.poisonedKnife = TRB.Classes.SpellComboPointThreshold:New({
        id = 185565,
        resource = -40,
        comboPointsGenerated = 1,
        thresholdId = 16,
        settingKey = "poisonedKnife",
        baseline = true
    })
    self.rupture = TRB.Classes.SpellComboPointThreshold:New({
        id = 1943,
        resource = -25,
        comboPoints = true,
        thresholdId = 17,
        settingKey = "rupture",
        pandemicTimes = {
            8 * 0.3, -- 0 CP, show same as if we had 1
            8 * 0.3,
            12 * 0.3,
            16 * 0.3,
            20 * 0.3,
            24 * 0.3,
            28 * 0.3,
            32 * 0.3,
        },
        baseline = true
    })

    -- Assassination Spec Abilities
    self.internalBleeding = TRB.Classes.SpellBase:New({
        id = 381627,
        isTalent = true
    })
    self.lightweightShiv = TRB.Classes.SpellBase:New({
        id = 394983,
        isTalent = true
    })
    self.crimsonTempest = TRB.Classes.SpellComboPointThreshold:New({
        id = 121411,
        resource = -30,
        comboPoints = true,
        thresholdId = 18,
        settingKey = "crimsonTempest",
        pandemicTimes = {
            6 * 0.3, -- 0 CP, show same as if we had 1
            6 * 0.3,
            8 * 0.3,
            10 * 0.3,
            12 * 0.3,
            14 * 0.3,
            16 * 0.3,
            18 * 0.3, -- Kyrian ability buff
        },
        isTalent = true
    })
    self.improvedGarrote = TRB.Classes.SpellBase:New({
        id = 381632,
        stealthBuffId = 392401,
        buffId = 392403,
        isTalent = true
    })
    self.viciousVenoms = TRB.Classes.SpellBase:New({
        id = 381634,
        isTalent = true,
        energyMod = {
            [0] = 0,
            [1] = -5,
            [2] = -10
        }
    })
    -- TODO: Add Doomblade as a bleed
    self.blindside = TRB.Classes.SpellBase:New({
        id = 121153,
        duration = 10,
        isTalent = true
    })
    self.tinyToxicBlade = TRB.Classes.SpellBase:New({
        id = 381800,
        isTalent = true
    })
    self.serratedBoneSpike = TRB.Classes.SpellComboPointThreshold:New({
        id = 385424,
        resource = -15,
        comboPointsGenerated = 2,
        thresholdId = 19,
        settingKey = "serratedBoneSpike",
        hasCooldown = true,
        debuffId = 394036,
        isTalent = true
    })
    self.kingsbane = TRB.Classes.SpellComboPointThreshold:New({
        id = 385627,
        resource = -35,
        comboPointsGenerated = 1,
        thresholdId = 21,
        settingKey = "kingsbane",
        hasCooldown = true,
        cooldown = 60,
        isTalent = true
    })

    -- TODO: Remove Sepsis, Death From Above and Dismantle once thresholdId is removed.
    self.sepsis.thresholdId = 20
    -- PvP
    self.deathFromAbove.thresholdId = 22
    self.dismantle.thresholdId = 23

    return self
end


---@class TRB.Classes.Rogue.OutlawSpells : TRB.Classes.Rogue.RogueBaseSpells
---@field public opportunity TRB.Classes.SpellBase
---@field public restlessBlades TRB.Classes.SpellBase
---@field public dirtyTricks TRB.Classes.SpellBase
---@field public broadside TRB.Classes.SpellBase
---@field public buriedTreasure TRB.Classes.SpellBase
---@field public grandMelee TRB.Classes.SpellBase
---@field public ruthlessPrecision TRB.Classes.SpellBase
---@field public skullAndCrossbones TRB.Classes.SpellBase
---@field public trueBearing TRB.Classes.SpellBase
---@field public countTheOdds TRB.Classes.SpellBase
---@field public bladeRush TRB.Classes.SpellBase
---@field public keepItRolling TRB.Classes.SpellBase
---@field public greenskinsWickers TRB.Classes.SpellBase
---@field public bladeFlurry TRB.Classes.SpellThreshold
---@field public rollTheBones TRB.Classes.SpellThreshold
---@field public dreadblades TRB.Classes.SpellThreshold
---@field public deathFromAbove TRB.Classes.SpellThreshold
---@field public ambush TRB.Classes.SpellComboPointThreshold
---@field public betweenTheEyes TRB.Classes.SpellComboPointThreshold
---@field public dispatch TRB.Classes.SpellComboPointThreshold
---@field public pistolShot TRB.Classes.SpellComboPointThreshold
---@field public sinisterStrike TRB.Classes.SpellComboPointThreshold
---@field public ghostlyStrike TRB.Classes.SpellComboPointThreshold
TRB.Classes.Rogue.OutlawSpells = setmetatable({}, {__index = TRB.Classes.Rogue.RogueBaseSpells})
TRB.Classes.Rogue.OutlawSpells.__index = TRB.Classes.Rogue.OutlawSpells

function TRB.Classes.Rogue.OutlawSpells:New()
    ---@type TRB.Classes.Rogue.RogueBaseSpells
    local base = TRB.Classes.Rogue.RogueBaseSpells
    self = setmetatable(base:New(), TRB.Classes.Rogue.OutlawSpells) --[[@as TRB.Classes.Rogue.OutlawSpells]]

    -- Rogue Class Baseline Abilities
    self.ambush = TRB.Classes.SpellComboPointThreshold:New({
        id = 8676,
        resource = -50,
        comboPointsGenerated = 2,
        stealth = true,
        thresholdId = 1,
        settingKey = "ambush",
        baseline = true
    })
    self.cheapShot.attributes.dirtyTricks = true
    self.sap.attributes.dirtyTricks = true
    self.gouge.attributes.dirtyTricks = true
    
    -- Outlaw Baseline Abilities
    self.betweenTheEyes = TRB.Classes.SpellComboPointThreshold:New({
        id = 315341,
        resource = -25,
        comboPoints = true,
        thresholdId = 12,
        settingKey = "betweenTheEyes",
        hasCooldown = true,
        isSnowflake = true,
        cooldown = 45,
        restlessBlades = true,
        baseline = true
    })
    self.dispatch = TRB.Classes.SpellComboPointThreshold:New({
        id = 2098,
        resource = -35,
        comboPoints = true,
        thresholdId = 13,
        settingKey = "dispatch",
        baseline = true
    })
    self.pistolShot = TRB.Classes.SpellComboPointThreshold:New({
        id = 185763,
        resource = -40,
        comboPointsGenerated = 1,
        thresholdId = 14,
        settingKey = "pistolShot",
        hasCooldown = false,
        isSnowflake = true,
        baseline = true
    })
    self.sinisterStrike = TRB.Classes.SpellComboPointThreshold:New({
        id = 193315,
        resource = -45,
        comboPointsGenerated = 1,
        thresholdId = 15,
        settingKey = "sinisterStrike",
        hasCooldown = false,
        isSnowflake = true,
        baseline = true
    })
    self.opportunity = TRB.Classes.SpellBase:New({
        id = 195627,
        resourcePercent = 0.5,
        baseline = true,
        isTalent = true
    })
    self.bladeFlurry = TRB.Classes.SpellThreshold:New({
        id = 13877,
        resource = -15,
        thresholdId = 16,
        settingKey = "bladeFlurry",
        hasCooldown = true,
        cooldown = 30,
        restlessBlades = true,
        baseline = true,
        isTalent = true
    })

    -- Outlaw Spec Abilities
    self.adrenalineRush.attributes.restlessBlades = true
    self.adrenalineRush.isTalent = true

    self.restlessBlades = TRB.Classes.SpellBase:New({
        id = 79096,
        isTalent = true
    })
    self.dirtyTricks = TRB.Classes.SpellBase:New({
        id = 108216,
        isTalent = true
    })
    self.rollTheBones = TRB.Classes.SpellThreshold:New({
        id = 315508,
        resource = -25,
        thresholdId = 17,
        settingKey = "rollTheBones",
        hasCooldown = true,
        cooldown = 45,
        restlessBlades = true
    })

    -- Roll the Bones
    self.broadside = TRB.Classes.SpellBase:New({
        id = 193356,
    })
    self.buriedTreasure = TRB.Classes.SpellBase:New({
        id = 199600,
    })
    self.grandMelee = TRB.Classes.SpellBase:New({
        id = 193358,
    })
    self.ruthlessPrecision = TRB.Classes.SpellBase:New({
        id = 193357,
    })
    self.skullAndCrossbones = TRB.Classes.SpellBase:New({
        id = 199603,
    })
    self.trueBearing = TRB.Classes.SpellBase:New({
        id = 193359,
    })
    self.countTheOdds = TRB.Classes.SpellBase:New({
        id = 381982,
        duration = 5
    })
    self.ghostlyStrike = TRB.Classes.SpellComboPointThreshold:New({
        id = 196937,
        resource = -30,
        comboPointsGenerated = 1,
        thresholdId = 19,
        settingKey = "ghostlyStrike",
        hasCooldown = true,
        isTalent = true,
        cooldown = 35,
        restlessBlades = true
    })
    self.bladeRush = TRB.Classes.SpellBase:New({
        id = 271877,
        isTalent = true,
        resource = 25,
        duration = 5,
        cooldown = 45,
        restlessBlades = true
    })
    self.dreadblades = TRB.Classes.SpellThreshold:New({
        id = 343142,
        resource = -50,
        thresholdId = 20,
        settingKey = "dreadblades",
        hasCooldown = true,
        isTalent = true,
        cooldown = 90,
        restlessBlades = true
    })
    self.keepItRolling = TRB.Classes.SpellBase:New({
        id = 381989,
        isTalent = true,
        duration = 30,
        cooldown = 60 * 7,
        restlessBlades = true
    })
    self.killingSpree = TRB.Classes.SpellComboPointThreshold:New({
        id = 51690,
        resource = -40,
        thresholdId = 21,
        settingKey = "killingSpree",
        comboPoints = true,
        hasCooldown = true,
        isTalent = true,
        cooldown = 90,
        restlessBlades = true
    })
    -- TODO: Implement this!
    self.greenskinsWickers = TRB.Classes.SpellBase:New({
        id = 386823,
        isTalent = true
    })

    -- TODO: Remove Sepsis, Death From Above and Dismantle once thresholdId is removed.
    self.sepsis.thresholdId = 18
    -- PvP
    self.deathFromAbove.thresholdId = 22
    self.dismantle.thresholdId = 23

    return self
end


---@class TRB.Classes.Rogue.SubtletySpells : TRB.Classes.Rogue.RogueBaseSpells
---@field public shadowTechniques TRB.Classes.SpellBase
---@field public symbolsOfDeath TRB.Classes.SpellBase
---@field public shadowBlades TRB.Classes.SpellBase
---@field public shadowFocus TRB.Classes.SpellBase
---@field public shotInTheDark TRB.Classes.SpellBase
---@field public flagellation TRB.Classes.SpellBase
---@field public silentStorm TRB.Classes.SpellBase
---@field public finalityBlackPowder TRB.Classes.SpellBase
---@field public finalityEviscerate TRB.Classes.SpellBase
---@field public finalityRupture TRB.Classes.SpellBase
---@field public shadowcraft TRB.Classes.SpellBase
---@field public inevitability TRB.Classes.SpellBase
---@field public killCommand TRB.Classes.SpellBase
---@field public gloomblade TRB.Classes.SpellThreshold
---@field public eviscerate TRB.Classes.SpellComboPointThreshold
---@field public backstab TRB.Classes.SpellComboPointThreshold
---@field public blackPowder TRB.Classes.SpellComboPointThreshold
---@field public rupture TRB.Classes.SpellComboPointThreshold
---@field public shadowstrike TRB.Classes.SpellComboPointThreshold
---@field public shurikenStorm TRB.Classes.SpellComboPointThreshold
---@field public shurikenToss TRB.Classes.SpellComboPointThreshold
---@field public secretTechnique TRB.Classes.SpellComboPointThreshold
---@field public shurikenTornado TRB.Classes.SpellComboPointThreshold
---@field public goremawsBite TRB.Classes.SpellComboPointThreshold
---@field public killingSpree TRB.Classes.SpellComboPointThreshold
TRB.Classes.Rogue.SubtletySpells = setmetatable({}, {__index = TRB.Classes.Rogue.RogueBaseSpells})
TRB.Classes.Rogue.SubtletySpells.__index = TRB.Classes.Rogue.SubtletySpells

function TRB.Classes.Rogue.SubtletySpells:New()
    ---@type TRB.Classes.Rogue.RogueBaseSpells
    local base = TRB.Classes.Rogue.RogueBaseSpells
    self = setmetatable(base:New(), TRB.Classes.Rogue.SubtletySpells) --[[@as TRB.Classes.Rogue.SubtletySpells]]

    self.eviscerate = TRB.Classes.SpellComboPointThreshold:New({ -- This is technically a Rogue ability but is missing from the other specs
        id = 196819,
        resource = -35,
        comboPoints = true,
        thresholdId = 1,
        settingKey = "eviscerate",
        baseline = true,
        isSnowflake = true
    })

    -- Subtlety Baseline Abilities
    self.backstab = TRB.Classes.SpellComboPointThreshold:New({
        id = 53,
        resource = -40,
        comboPointsGenerated = 1,
        thresholdId = 12,
        settingKey = "backstab",
        baseline = true,
        isSnowflake = true
    })
    self.blackPowder = TRB.Classes.SpellComboPointThreshold:New({
        id = 319175,
        resource = -35,
        comboPoints = true,
        thresholdId = 13,
        settingKey = "blackPowder",
        baseline = true,
        isSnowflake = true
    })
    self.rupture = TRB.Classes.SpellComboPointThreshold:New({
        id = 1943,
        resource = -25,
        comboPoints = true,
        thresholdId = 14,
        settingKey = "rupture",
        pandemicTimes = {
            8 * 0.3, -- 0 CP, show same as if we had 1
            8 * 0.3,
            12 * 0.3,
            16 * 0.3,
            20 * 0.3,
            24 * 0.3,
            28 * 0.3,
            32 * 0.3,
        },
        baseline = true,
        isSnowflake = true
    })
    self.shadowstrike = TRB.Classes.SpellComboPointThreshold:New({
        id = 185438,
        resource = -45,
        comboPointsGenerated = 2,
        stealth = true,
        thresholdId = 15,
        settingKey = "shadowstrike",
        baseline = true
    })
    self.shurikenStorm = TRB.Classes.SpellComboPointThreshold:New({
        id = 197835,
        resource = -45,
        comboPointsGenerated = 1,
        thresholdId = 16,
        settingKey = "shurikenStorm",
        baseline = true,
        isSnowflake = true
    })
    self.shurikenToss = TRB.Classes.SpellComboPointThreshold:New({
        id = 114014,
        resource = -40,
        comboPointsGenerated = 1,
        thresholdId = 17,
        settingKey = "shurikenToss",
        baseline = true
    })
    self.shadowTechniques = TRB.Classes.SpellBase:New({
        id = 196911
    })
    self.symbolsOfDeath = TRB.Classes.SpellBase:New({
        id = 212283,
        baseline = true
    })

    -- Subtlety Spec Abilities			
    self.shadowBlades = TRB.Classes.SpellBase:New({
        id = 121471,
        isTalent = true
    })
    self.gloomblade = TRB.Classes.SpellThreshold:New({
        id = 200758,
        resource = -40,
        thresholdId = 18,
        settingKey = "gloomblade",
        isTalent = true,
        isSnowflake = true
    })
    self.secretTechnique = TRB.Classes.SpellComboPointThreshold:New({
        id = 280719,
        resource = -30,
        comboPoints = true,
        thresholdId = 19,
        settingKey = "secretTechnique",
        hasCooldown = true,
        isTalent = true
    })
    self.shurikenTornado = TRB.Classes.SpellComboPointThreshold:New({
        id = 277925,
        resource = -60,
        comboPointsGenerated = 1,
        thresholdId = 20,
        settingKey = "shurikenTornado",
        hasCooldown = true,
        isTalent = true
    })
    self.goremawsBite = TRB.Classes.SpellComboPointThreshold:New({
        id = 426591,
        buffId = 426593,
        resource = -25,
        comboPointsGenerated = 3,
        thresholdId = 22,
        settingKey = "goremawsBite",
        hasCooldown = true,
        isTalent = true
    })
    self.shadowFocus = TRB.Classes.SpellBase:New({
        id = 108209,
        isTalent = true,
        resourcePercent = 0.9
    })
    self.shotInTheDark = TRB.Classes.SpellBase:New({
        id = 257506,
        isTalent = true
    })
    self.flagellation = TRB.Classes.SpellBase:New({
        id = 384631,
        isTalent = true
    })
    self.silentStorm = TRB.Classes.SpellBase:New({
        id = 385727,
    })
    self.finalityBlackPowder = TRB.Classes.SpellBase:New({
        id = 385948,
    })
    self.finalityEviscerate = TRB.Classes.SpellBase:New({
        id = 385949,
    })
    self.finalityRupture = TRB.Classes.SpellBase:New({
        id = 385951,
    })
    self.shadowcraft = TRB.Classes.SpellBase:New({
        id = 426594,
        isTalent = true
    })
    self.inevitability = TRB.Classes.SpellBase:New({
        id = 382512,
        isTalent = true
    })

    -- TODO: Remove Sepsis, Death From Above and Dismantle once thresholdId is removed.
    self.sepsis.thresholdId = 21
    -- PvP
    self.deathFromAbove.thresholdId = 23
    self.dismantle.thresholdId = 24

    self.shadowyDuel = TRB.Classes.SpellThreshold:New({
        id = 207736,
        resource = -50,
        thresholdId = 25,
        settingKey = "dismantle",
        hasCooldown = true,
        isPvp = true
    })
       
    return self
end