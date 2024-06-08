TEAM_LONER = 1

ITEMCATEGORY_AMMO = 1
ITEMCATEGORY_SUPPLIES = 2
ITEMCATEGORY_WEAPONS = 3
ITEMCATEGORY_ARMOR = 4
ITEMCATEGORY_SPECIAL = 5 -- soon!

HUDSTYLE_ATE = 0
HUDSTYLE_CLASSIC = 1
HUDSTYLE_TEA = 2

SEASONAL_EVENT_NONE = 0
SEASONAL_EVENT_EASTER = 1
SEASONAL_EVENT_HALLOWEEN = 2
SEASONAL_EVENT_CHRISTMAS = 3

EVENT_NONE = 0
EVENT_ZOMBIEAPOCALYPSE = 1

DEBUGGING_NONE = 0
DEBUGGING_NORMAL = 1
DEBUGGING_ADVANCED = 2
DEBUGGING_EXPERIMENTAL = 3
DEBUGGING_TRUE = 4

TIME_SECOND = 1
TIME_MINUTE = 60
TIME_HOUR = 3600
TIME_DAY = 86400
TIME_WEEK = TIME_DAY * 7
TIME_YEAR = TIME_DAY * 365

SKILL_AGILITY = 1
SKILL_BARTER = 2
SKILL_DAMAGE = 3
SKILL_DEFENSE = 4
SKILL_ENDURANCE = 5
SKILL_ENGINEER = 6
SKILL_IMMUNITY = 7
SKILL_KNOWLEDGE = 8
SKILL_MEDSKILL = 9
SKILL_SALVAGE = 10
SKILL_SPEED = 11
SKILL_STRENGTH = 12
SKILL_SURVIVOR = 13
SKILL_VITALITY = 14

RARITY_TRASH = 0
RARITY_JUNK = 1
RARITY_COMMON = 2
RARITY_UNCOMMON = 3
RARITY_RARE = 4
RARITY_SUPERRARE = 5
RARITY_EPIC = 6
RARITY_MYTHIC = 7
RARITY_LEGENDARY = 8
RARITY_GODLY = 9
RARITY_EVENT = 10
RARITY_UNOBTAINABLE = 11

VARIANT_POISONOUS = 1
VARIANT_SHOCK = 2
VARIANT_OVERPOWERED = 3
VARIANT_REFLECTOR = 4
VARIANT_INFECTIVE = 5
VARIANT_SICKNESS = 6
VARIANT_LEECH = 7
VARIANT_ENRAGED = 8

WEIGHT_UNIT = "kg"

GM.VariantNames = {
    [VARIANT_POISONOUS] = "Poisonous",
    [VARIANT_SHOCK] = "Shock",
    [VARIANT_OVERPOWERED] = "Overpowered",
    [VARIANT_REFLECTOR] = "Reflector",
    [VARIANT_INFECTIVE] = "Infective",
    [VARIANT_SICKNESS] = "Sickness",
    [VARIANT_LEECH] = "Leech",
    [VARIANT_ENRAGED] = "Enraged"
}



--- ↓ Do. Not. Touch. ↓

GM.PlayerCharactersTest = false
