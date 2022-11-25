import os
import shutil
import pandas as pd
import random as rand
import re

# Data Files for New Pokemon List
pokeDataCSV = 'pokemon.csv'
pokeAttacksCSV = 'pokemon-attacks.csv'
pokeEvosCSV = 'pokemon-evolutions.csv'
pokeEggMovesCSV = 'pokemon-eggmoves.csv'
pokeTreesCSV = 'pokemon-trees.csv'
pokeTreeSleepCSV = 'pokemon-tree-sleep.csv'
pokeBugCatchCSV = 'pokemon-bug-contest.csv'
pokeSwapCSV = 'pokemon-swap.csv'

# Game Files
pokeConstantsFile = '../constants/pokemon_constants.asm'
pokeNamesFile = "../data/pokemon/names.asm"
pokeBaseStatsFile = "../data/pokemon/base_stats.asm"
pokeEvoAttacksPointersFile = "../data/pokemon/evos_attacks_pointers.asm"
pokeEvoAttacksFile = "../data/pokemon/evos_attacks.asm"
pokeEggMovePointersFile = "../data/pokemon/egg_move_pointers.asm"
pokeEggMovesFile = "../data/pokemon/egg_moves.asm"
pokeMenuIconsFile = "../data/pokemon/menu_icons.asm"
dexDataPointersFile = "../data/pokemon/dex_entry_pointers.asm"
dexEntriesFile = "../data/pokemon/dex_entries.asm"
dexOrderNewFile = "../data/pokemon/dex_order_new.asm"
dexOrderAlphaFile = "../data/pokemon/dex_order_alpha.asm"
pokePicPointersFile = "../data/pokemon/pic_pointers.asm"
pokePalettesFile = "../data/pokemon/palettes.asm"
pokeAnimPointersFile = "../gfx/pokemon/anim_pointers.asm"
pokeAnimsFile = "../gfx/pokemon/anims.asm"
pokeIdlePointersFile = "../gfx/pokemon/idle_pointers.asm"
pokeIdlesFile = "../gfx/pokemon/idles.asm"
pokeBitmaskPointersFile = "../gfx/pokemon/bitmask_pointers.asm"
pokeBitmasksFile = "../gfx/pokemon/bitmasks.asm"
pokeFramePointersFile = "../gfx/pokemon/frame_pointers.asm"
pokeJohtoFramesFile = "../gfx/pokemon/johto_frames.asm"
pokeKantoFramesFile = "../gfx/pokemon/kanto_frames.asm"
pokeGen1OrderFile = "../data/pokemon/gen1_order.asm"
pokeEZChatOrderFile = "../data/pokemon/ezchat_order.asm"
buenasPasswordsFile = "../data/radio/buenas_passwords.asm"
treeMonsFile = "../data/wild/treemons.asm"
treeSleepFile = "../data/wild/treemons_asleep.asm"
bugContestFile = "../data/wild/bug_contest_mons.asm"
overworldScriptingFile = "../engine/overworld/scripting.asm"
mobile42File = "../mobile/mobile_42.asm"
mobile46File = "../mobile/mobile_46.asm"
partiesFile = "../data/trainers/parties.asm"
battleTowerFile = "../data/battle_tower/parties.asm"

# Lists / Dicts / etc
pokeConstants = []
pokeNames = []
pokeEvosAttacks = {}
pokeEggMoves = {}
pokeMenuIcons = []


# Formatting Functions
def padString(list, item):
    longestLen = len(max(list, key=len))
    return item.ljust(longestLen)


# Constant Handling
def definePokeConstant(const):
    pokeConstants.append(const)


def updatePokeConstants(pokeConstants):
    # format pokemon
    formatted = []
    i = 0
    while i < len(pokeConstants):
        poke = "    const " + padString(pokeConstants, pokeConstants[i])
        poke = poke + ' ; ' + "{:02X}".format(i + 1)
        formatted.append(poke)
        i += 1
    kanto = "\n".join(formatted[0:151])
    johto = "\n".join(formatted[151:])
    newFile = ""
    with open("templatesforscripts/pokemon_constants.asm", "r") as f:
        newFile = f.read()
    newFile = newFile.replace("<Kanto Pokemon>", kanto)
    newFile = newFile.replace("<Johto Pokemon>", johto)
    print(newFile)
    finalFile = open(pokeConstantsFile, "w")
    finalFile.write(newFile)
    finalFile.close()


# Name Handling
def definePokeName(name):
    pokeNames.append(name.ljust(10, '@'))


def updatePokeNames(pokeNames):
    formatted = []
    newFile = ""
    with open("templatesforscripts/names.asm", "r") as f:
        newFile = f.read()
    for name in pokeNames:
        formatted.append('	db "' + name + '"')
    pokeNames = "\n".join(formatted)
    newFile = newFile.replace("<PokemonNames>", pokeNames)
    print(newFile)
    finalFile = open(pokeNamesFile, "w")
    finalFile.write(newFile)
    finalFile.close()


# Base Stats Handling
def createBaseData(poke):
    # Simple Assignments
    constant = poke['constant']
    nameLower = poke['constant'].lower()
    imgFolder = nameLower
    if constant in ['UNOWN', 'MISSINGNO']:
        imgFolder = "unown_a"
    catchRate = str(int(poke['catchRate']))
    baseXP = poke['baseXP']
    if baseXP > 255:
        baseXP = 255
    eggCycle = poke['eggCycle']
    # Stats
    statNames = ["hp", "atk", "def", "spd", "sat", "sdf"]
    stats = []
    for stat in statNames:
        stats.append(str(poke[stat]).rjust(3))
    stats = ", ".join(stats)
    # Types
    types = poke['type1']
    if poke['type2']:
        types = types + ', ' + poke['type2']
    else:
        types = types + ', ' + poke['type1']
    types = types.upper()
    types = types.replace("PSYCHIC", "PSYCHIC_TYPE")
    # Items
    held1 = poke["heldItem1"] if poke["heldItem1"] else "NO_ITEM"
    held2 = poke["heldItem2"] if poke["heldItem2"] else "NO_ITEM"
    # Gender Ratio
    genderDict = {
        '0': 'GENDER_F0',
        '0.125': 'GENDER_F12_5',
        '0.25': 'GENDER_F25',
        '0.5': 'GENDER_F50',
        '0.75': 'GENDER_F75',
        '1': 'GENDER_F100',
        'U': 'GENDER_UNKNOWN'
    }
    gender = genderDict[poke['genderRate']]
    # Growth Rate
    growthDict = {
        "Fast": "GROWTH_FAST",
        "Erratic": "GROWTH_FAST",
        "Medium Fast": "GROWTH_MEDIUM_FAST",
        "Fluctuating": "GROWTH_SLIGHTLY_FAST",
        "Medium Slow": "GROWTH_MEDIUM_SLOW",
        "Slow": "GROWTH_SLOW"
    }
    growthRate = growthDict[poke['growthRate']]
    # Egg Groups
    eggGroupDict = {
        "MINERAL": "EGG_MINERAL",
        "Amorphous": "EGG_INDETERMINATE",
        "FLYING": "EGG_FLYING",
        "Field": "EGG_GROUND",
        "Bug": "EGG_BUG",
        "Monster": "EGG_MONSTER",
        "Human-Like": "EGG_HUMANSHAPE",
        "Fairy": "EGG_FAIRY",
        "Water 2": "EGG_WATER_2",
        "Undiscovered": "EGG_NONE",
        "Water 1": "EGG_WATER_1",
        "Grass": "EGG_PLANT",
        "Ditto": "EGG_DITTO",
        "Dragon": "EGG_DRAGON",
        "Field 1": "EGG_GROUND",
        "Water 3": "EGG_WATER_3"
    }
    eggGroup1 = eggGroupDict.get(poke["eggGroup1"]) or "EGG_NONE"
    eggGroup2 = eggGroupDict.get(poke["eggGroup2"]) or eggGroup1

    # TODO: TM/HM
    baseStats = """ db {constant}

	db {stats}
	;   hp  atk  def  spd  sat  sdf

	db {types} ; type
	db {catchRate} ; catch rate
	db {baseXP} ; base exp
	db {held1}, {held2} ; items
	db {gender} ; gender ratio
	db 100 ; unknown 1
	db {eggCycle} ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/{imgFolder}/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db {growthRate} ; growth rate
	dn {eggGroup1}, {eggGroup2} ; egg groups

	; tm/hm learnset
	tmhm
	; end
"""
    file = open('../data/pokemon/base_stats/' + nameLower + '.asm', "w")
    file.write(baseStats.format(
        constant=constant,
        stats=stats,
        types=types,
        catchRate=catchRate,
        baseXP=baseXP,
        held1=held1,
        held2=held2,
        gender=gender,
        eggCycle=eggCycle,
        imgFolder=imgFolder,
        growthRate=growthRate,
        eggGroup1=eggGroup1,
        eggGroup2=eggGroup2
    ))
    file.close()


def updatePokeBaseStats(pokeConstants):
    formatted = []
    newFile = ""
    with open("templatesforscripts/base_stats.asm", "r") as f:
        newFile = f.read()
    for constant in pokeConstants:
        formatted.append('INCLUDE "data/pokemon/base_stats/' + constant.lower() + '.asm"')
    pokeBaseStats = "\n".join(formatted)
    newFile = newFile.replace("<baseStats>", pokeBaseStats)
    print(newFile)
    finalFile = open(pokeBaseStatsFile, "w")
    finalFile.write(newFile)
    finalFile.close()


# Evos and Attacks Handling
def updateEvosAttacksPointers(pokeConstants):
    formatted = []
    newFile = ""
    with open("templatesforscripts/evos_attacks_pointers.asm", "r") as f:
        newFile = f.read()
    for constant in pokeConstants:
        formatted.append('	dw ' + constant.capitalize() + 'EvosAttacks')
    pokeNames = "\n".join(formatted)
    newFile = newFile.replace("<Pointers>", pokeNames)
    print(newFile)
    finalFile = open(pokeEvoAttacksPointersFile, "w")
    finalFile.write(newFile)
    finalFile.close()


def updateEvosAttacks(pokeConstants, pokeEvosAttacks):
    newFile = ""
    with open("templatesforscripts/evos_attacks.asm", "r") as f:
        newFile = f.read()
    for constant in pokeConstants:
        newFile += constant.capitalize() + "EvosAttacks:\n"
        if constant in pokeEvosAttacks:
            if "evos" in pokeEvosAttacks[constant]:
                for evo in pokeEvosAttacks[constant]["evos"]:
                    newFile += "	db " + evo[1] + ", " + evo[2] + ", " + evo[0] + "\n"
            newFile += "	db 0 ; no more evolutions\n"
            if "moves" in pokeEvosAttacks[constant]:
                for move in pokeEvosAttacks[constant]["moves"]:
                    newFile += "	db " + str(move[0]) + ", " + str(move[1]) + "\n"
            newFile += "	db 0 ; no more level-up moves\n"
        else:
            newfile += "	db 0 ; no more evolutions\n"
            newFile += "	db 0 ; no more level-up moves\n"
        newFile += "\n"
    finalFile = open(pokeEvoAttacksFile, "w")
    finalFile.write(newFile)
    finalFile.close()


# Egg Move Handling
def updateEggMoves(pokeConstants, pokeEggMoves):
    eggMovePointers = ""
    with open("templatesforscripts/egg_move_pointers.asm", "r") as f:
        eggMovePointers = f.read()
    eggMoves = ""
    with open("templatesforscripts/egg_moves.asm", "r") as f:
        eggMoves = f.read()
    for constant in pokeConstants:
        if constant in pokeEggMoves:
            eggMovePointers += "	dw " + constant.capitalize() + "EggMoves\n"
            eggMoves += constant.capitalize() + "EggMoves:\n"
            for move in pokeEggMoves[constant]:
                print(move)
                eggMoves += "	db " + str(move) + "\n"
            eggMoves += "	db -1 ; end\n\n"
        else:
            eggMovePointers += "	dw NoEggMoves\n"
    eggMovePointers += "    assert_table_length NUM_POKEMON"
    eggMoves += "NoEggMoves:\n	db -1 ; end\n"
    print(eggMovePointers)
    print(eggMoves)
    finalFile = open(pokeEggMovePointersFile, "w")
    finalFile.write(eggMovePointers)
    finalFile.close()
    finalFile = open(pokeEggMovesFile, "w")
    finalFile.write(eggMoves)
    finalFile.close()


# TO-DO CRY HANDLING
# Menu Icon Handling
def defineMenuIcon(icon):
    pokeMenuIcons.append(icon)


def updatePokeIcons(pokeMenuIcons, pokeConstants):
    # format pokemon
    formatted = []
    i = 0
    while i < len(pokeConstants):
        icon = "	db " + padString(pokeMenuIcons, pokeMenuIcons[i])
        icon += ' ; ' + pokeConstants[i]
        formatted.append(icon)
        i += 1
    icons = "\n".join(formatted)
    newFile = ""
    with open("templatesforscripts/menu_icons.asm", "r") as f:
        newFile = f.read()
    newFile = newFile.replace("<PokeMenuIcons>", icons)
    print(newFile)
    finalFile = open(pokeMenuIconsFile, "w")
    finalFile.write(newFile)
    finalFile.close()


# Dex Data Handling
def createDexData(poke):
    nameLower = poke["constant"].lower()
    species = poke["species name"]
    height = poke["Height"]
    weight = poke["Weight"]
    PokeDexP1L1 = poke["PokeDexP1L1"]
    PokeDexP1L2 = poke["PokeDexP1L2"]
    PokeDexP1L3 = poke["PokeDexP1L3"]
    PokeDexP2L1 = poke["PokeDexP2L1"]
    PokeDexP2L2 = poke["PokeDexP2L2"]
    PokeDexP2L3 = poke["PokeDexP2L3"]
    pokedex = """
	db "{species}@" ; species name
	dw {height}, {weight} ; height, weight

	db   "{PokeDexP1L1}"
    next "{PokeDexP1L2}"
    next "{PokeDexP1L3}"

    page "{PokeDexP2L1}"
    next "{PokeDexP2L2}"
    next "{PokeDexP2L3}@"
"""
    file = open('../data/pokemon/dex_entries/' + nameLower + '.asm', "w")
    file.write(pokedex.format(
        species=species,
        height=height,
        weight=weight,
        PokeDexP1L1=PokeDexP1L1,
        PokeDexP1L2=PokeDexP1L2,
        PokeDexP1L3=PokeDexP1L3,
        PokeDexP2L1=PokeDexP2L1,
        PokeDexP2L2=PokeDexP2L2,
        PokeDexP2L3=PokeDexP2L3
    ))
    file.close()


def updateDexEntryPointers(pokeConstants):
    formatted = []
    newFile = ""
    with open("templatesforscripts/dex_entry_pointers.asm", "r") as f:
        newFile = f.read()
    for constant in pokeConstants:
        formatted.append('	dw ' + constant.capitalize() + 'PokedexEntry')
    dexPointers = "\n".join(formatted)
    newFile = newFile.replace("<pokedexPointer>", dexPointers)
    print(newFile)
    finalFile = open(dexDataPointersFile, "w")
    finalFile.write(newFile)
    finalFile.close()


def updateDexEntriesFile(pokeConstants):
    # format pokemon
    formatted = []
    for constant in pokeConstants:
        poke = padString(pokeConstants, constant.capitalize() + "PokedexEntry::")
        poke += '  INCLUDE "data/pokemon/dex_entries/'
        poke += constant.lower() + '.asm"'
        formatted.append(poke)
    group1 = "\n".join(formatted[0:63])
    group2 = "\n".join(formatted[63:127])
    group3 = "\n".join(formatted[127:191])
    group4 = "\n".join(formatted[191:])
    newFile = 'SECTION "Pokedex Entries 001-064", ROMX\n\n'
    newFile += group1 + "\n"
    newFile += 'SECTION "Pokedex Entries 065-128", ROMX\n\n'
    newFile += group2 + "\n"
    newFile += 'SECTION "Pokedex Entries 129-192", ROMX\n\n'
    newFile += group3 + "\n"
    newFile += 'SECTION "Pokedex Entries 193-251", ROMX\n\n'
    newFile += group4 + "\n"
    finalFile = open(dexEntriesFile, "w")
    finalFile.write(newFile)
    finalFile.close()


def updateDexOrderNew(pokeConstants):
    # Just going to use the same order for now
    formatted = []
    for constant in pokeConstants:
        poke = "	db " + constant
        formatted.append(poke)
    newFile = ""
    with open("templatesforscripts/dex_order_new.asm", "r") as f:
        newFile = f.read()
    newFile = newFile.replace("<NewDexOrder>", "\n".join(formatted))
    finalFile = open(dexOrderNewFile, "w")
    finalFile.write(newFile)
    finalFile.close()


def updateDexOrderAlpha(pokeConstants):
    formatted = []
    alphaConstants = sorted(pokeConstants)
    for constant in alphaConstants:
        poke = "	db " + constant
        formatted.append(poke)

    newFile = ""
    with open("templatesforscripts/dex_order_alpha.asm", "r") as f:
        newFile = f.read()
    print(newFile)
    newFile = newFile.replace("<DexOrderAlpha>", "\n".join(formatted))
    print(newFile)
    finalFile = open(dexOrderAlphaFile, "w")
    finalFile.write(newFile)
    finalFile.close()


# TODO footprints
# Sprites Folders and placeholders
def createSpritePlaceholders(pokeConstants):
    for constant in pokeConstants:
        gfxFolder = "../gfx/pokemon/" + constant.lower()
        if not os.path.exists(gfxFolder):
            os.mkdir(gfxFolder)
            shutil.copyfile("templatesforscripts/front.png", gfxFolder + "/front.png")
            shutil.copyfile("templatesforscripts/back.png", gfxFolder + "/back.png")
            shutil.copyfile("templatesforscripts/anim.asm", gfxFolder + "/anim.asm")
            shutil.copyfile("templatesforscripts/anim_idle.asm", gfxFolder + "/anim_idle.asm")
            shutil.copyfile("templatesforscripts/shiny.pal", gfxFolder + "/shiny.pal")
            shutil.copyfile("templatesforscripts/frames.asm", gfxFolder + "/frames.asm")


def updatePicPointers(pokeConstants):
    formatted = []
    for constant in pokeConstants:
        # Hardcoding the two possible values for
        # this for my project right now cause... yeah.
        if constant in ['UNOWN', 'MISSINGNO']:
            unownValue = """
	; Unown pics have their own table. See UnownPicPointers
	dbw -1, -1
	dbw -1, -1

"""
            formatted.append(unownValue)
        else:
            pokeName = constant.capitalize()
            formatted.append("	dba " + pokeName + "Frontpic")
            formatted.append("	dba " + pokeName + "Backpic")
    newFile = ""
    with open("templatesforscripts/pic_pointers.asm", "r") as f:
        newFile = f.read()
    print(newFile)
    newFile = newFile.replace("<pic pointers>", "\n".join(formatted))
    print(newFile)
    finalFile = open(pokePicPointersFile, "w")
    finalFile.write(newFile)
    finalFile.close()


# TODO Pic Banks
# Palettes file
def updatePalettes(pokeConstants):
    formatted = []
    for constant in pokeConstants:
        name = constant.lower()
        if constant in ['UNOWN', 'MISSINGNO']:
            poke = 'INCLUDE "gfx/pokemon/' + name
            poke += '/normal.pal" ; not front.gbcpal'
        else:
            poke = 'INCBIN "gfx/pokemon/' + name
            poke += '/front.gbcpal", middle_colors'
        formatted.append(poke)
        poke2 = 'INCLUDE "gfx/pokemon/' + name + '/shiny.pal"'
        formatted.append(poke2)
    newFile = ""
    with open("templatesforscripts/palettes.asm", "r") as f:
        newFile = f.read()
    newFile = newFile.replace("<PokePalettes>", "\n".join(formatted))
    finalFile = open(pokePalettesFile, "w")
    finalFile.write(newFile)
    finalFile.close()


# Anim Pointers
def updateAnimPointers(pokeConstants):
    newFile = "AnimationPointers:\n"
    newFile += "	table_width 2, AnimationPointers\n"
    for constant in pokeConstants:
        newFile += "	dw " + constant.capitalize()
        newFile += "Animation\n"
    newFile += "    assert_table_length NUM_POKEMON\n"
    finalFile = open(pokeAnimPointersFile, "w")
    finalFile.write(newFile)
    finalFile.close()


# Anims
def updateAnims(pokeConstants):
    newFile = ""
    for constant in pokeConstants:
        newFile += padString(pokeConstants, constant.capitalize() + "Animation:")
        newFile += ' INCLUDE "gfx/pokemon/' + constant.lower() + '/anim.asm"\n'
    newFile += 'EggAnimation:        INCLUDE "gfx/pokemon/egg/anim.asm"\n'
    finalFile = open(pokeAnimsFile, "w")
    finalFile.write(newFile)
    finalFile.close()


# Anim Idle Pointers
def updateIdlePointers(pokeConstants):
    newFile = "AnimationIdlePointers:\n"
    newFile += "	table_width 2, AnimationIdlePointers\n"
    for constant in pokeConstants:
        newFile += "	dw " + constant.capitalize()
        newFile += "AnimationIdle\n"
    newFile += "    assert_table_length NUM_POKEMON\n"
    finalFile = open(pokeIdlePointersFile, "w")
    finalFile.write(newFile)
    finalFile.close()


# Idles
def updateIdles(pokeConstants):
    newFile = ""
    for constant in pokeConstants:
        newFile += padString(pokeConstants, constant.capitalize() + "AnimationIdle:")
        newFile += ' INCLUDE "gfx/pokemon/' + constant.lower() + '/anim_idle.asm"\n'
    newFile += 'EggAnimationIdle:        INCLUDE "gfx/pokemon/egg/anim_idle.asm"\n'
    finalFile = open(pokeIdlesFile, "w")
    finalFile.write(newFile)
    finalFile.close()


# Bitmask Pointers
def updateBitmaskPointers(pokeConstants):
    newFile = "BitmasksPointers:\n"
    newFile += "	table_width 2, BitmasksPointers\n"
    for constant in pokeConstants:
        newFile += "	dw " + constant.capitalize()
        newFile += "Bitmasks\n"
    newFile += "    assert_table_length NUM_POKEMON\n"
    finalFile = open(pokeBitmaskPointersFile, "w")
    finalFile.write(newFile)
    finalFile.close()


# Bitmasks
def updateBitmasks(pokeConstants):
    newFile = ""
    for constant in pokeConstants:
        newFile += padString(pokeConstants, constant.capitalize() + "Bitmasks:")
        newFile += ' INCLUDE "gfx/pokemon/' + constant.lower() + '/bitmask.asm"\n'
    newFile += 'EggBitmasks:        INCLUDE "gfx/pokemon/egg/bitmask.asm"\n'
    finalFile = open(pokeBitmasksFile, "w")
    finalFile.write(newFile)
    finalFile.close()


# Frame Pointers
def updateFramePointers(pokeConstants):
    newFile = "FramesPointers:\n"
    newFile += "	table_width 2, FramesPointers\n"
    for constant in pokeConstants:
        newFile += "	dw " + constant.capitalize()
        newFile += "Frames\n"
    newFile += "    assert_table_length NUM_POKEMON\n"
    finalFile = open(pokeFramePointersFile, "w")
    finalFile.write(newFile)
    finalFile.close()


# Frames
def updateFrames(pokeConstants):
    formatted = []
    for constant in pokeConstants:
        poke = padString(pokeConstants, constant.capitalize() + "Frames:")
        poke += ' INCLUDE "gfx/pokemon/' + constant.lower() + '/frames.asm"\n'
        formatted.append(poke)
    kantoFile = "KantoFrames: ; used only for BANK(KantoFrames)\n\n"
    kantoFile += "\n".join(formatted[0:151])
    finalKFile = open(pokeKantoFramesFile, "w")
    finalKFile.write(kantoFile)
    finalKFile.close()
    johtoFile = "JohtoFrames: ; used only for BANK(JohtoFrames)\n\n"
    johtoFile += "\n".join(formatted[151:])
    johtoFile += "\n" + 'EggFrames:        INCLUDE "gfx/pokemon/egg/frames.asm"'
    finalJFile = open(pokeJohtoFramesFile, "w")
    finalJFile.write(johtoFile)
    finalJFile.close()


# Gen1 Order
def updateGen1Order(pokeConstant):
    formatted = []
    for constant in pokeConstants:
        poke = '	db ' + constant
        formatted.append(poke)
    newFile = "Pokered_MonIndices:\n"
    newFile += "	table_width 1, Pokered_MonIndices\n"
    newFile += "\n".join(formatted[0:190])
    newFile += "\n  assert_table_length 190 ; gen 1 mon indexes\n"
    newFile += "\n".join(formatted[190:])
    # Need to add 2 more entries at the bottom
    newFile += "\n" + formatted[0]
    newFile += "\n  assert_table_length NUM_POKEMON + 1"
    finalFile = open(pokeGen1OrderFile, "w")
    finalFile.write(newFile)
    finalFile.close()


# EZ Chat Order Removal
def removeEZChatOrder():
    shutil.copyfile("templatesforscripts/ezchat_order.asm", pokeEZChatOrderFile)


# Update Buena's Passwords
def updateBuenasPasswords(pokeConstants):
    newFile = ""
    with open("templatesforscripts/buenas_passwords.asm", "r") as f:
        newFile = f.read()
    newFile = newFile.replace("<starter1>", pokeConstants[0])
    newFile = newFile.replace("<starter2>", pokeConstants[3])
    newFile = newFile.replace("<starter3>", pokeConstants[6])
    newFile = newFile.replace("<poke1>", pokeConstants[rand.randrange(0, (len(pokeConstants)-1)/6)])
    newFile = newFile.replace("<poke2>", pokeConstants[rand.randrange((len(pokeConstants)-1)/6, ((len(pokeConstants)-1)/6)*2)])
    newFile = newFile.replace("<poke3>", pokeConstants[rand.randrange(((len(pokeConstants)-1)/6)*2, ((len(pokeConstants)-1)/6)*3)])
    newFile = newFile.replace("<poke4>", pokeConstants[rand.randrange(((len(pokeConstants)-1)/6)*3,((len(pokeConstants)-1)/6)*4)])
    newFile = newFile.replace("<poke5>", pokeConstants[rand.randrange(((len(pokeConstants)-1)/6)*4,((len(pokeConstants)-1)/6)*5)])
    newFile = newFile.replace("<poke6>", pokeConstants[rand.randrange(((len(pokeConstants)-1)/6)*5,((len(pokeConstants)-1)/6)*6)])
    print(newFile)
    finalFile = open(buenasPasswordsFile, "w")
    finalFile.write(newFile)
    finalFile.close()


# Update TreeMons
def updateTreeMons():
    formatted = {}
    pokeTrees = pd.read_csv(pokeTreesCSV)

    for row in pokeTrees.to_dict(orient="records"):
        if row["TreeMonSet"] != "Rock":
            if row["TreeMonSet"] not in formatted:
                formatted[row["TreeMonSet"]] = {}
                formatted[row["TreeMonSet"]]["common"] = []
                formatted[row["TreeMonSet"]]["rare"] = []
            entry = "	db " + str(row["%"]) + ", " + row["Pokemon"]
            entry += ", " + row["Pokemon"] + ", " + str(row["Level"]) + "\n"
            formatted[row["TreeMonSet"]][row["Rarity"]].append(entry)
        else:
            if row["TreeMonSet"] not in formatted:
                formatted[row["TreeMonSet"]] = []
            entry = "	db " + str(row["%"]) + ", " + row["Pokemon"]
            entry += ", " + row["Pokemon"] + ", " + str(row["Level"]) + "\n"
            formatted[row["TreeMonSet"]].append(entry)

    newFile = ""
    with open("templatesforscripts/treemons.asm", "r") as f:
        newFile = f.read()
    treeTypes = formatted.keys()
    for treeType in treeTypes:
        if treeType != "Rock":
            newFile += "TreeMonSet_" + treeType + ":\n"
            newFile += "; common\n"
            for poke in formatted[treeType]["common"]:
                newFile += poke
            newFile += "	db -1\n"
            newFile += "; rare\n"
            for poke in formatted[treeType]["rare"]:
                newFile += poke
            newFile += "	db -1\n"
            newFile += "\n"
    newFile += "TreeMonSet_Rock:\n"
    for poke in formatted["Rock"]:
        newFile += poke
    newFile += "	db -1\n"
    print(newFile)
    finalFile = open(treeMonsFile, "w")
    finalFile.write(newFile)
    finalFile.close()


# Update TreeMonsAsleep
def updateTreeMonsAsleep():
    formatted = {}
    pokeTrees = pd.read_csv(pokeTreeSleepCSV)
    formatted["AsleepTreeMonsNite"] = []
    formatted["AsleepTreeMonsDay"] = []
    formatted["AsleepTreeMonsMorn"] = []
    for row in pokeTrees.to_dict(orient="records"):
        if row["SleepNite"] == 1:
            formatted["AsleepTreeMonsNite"].append(row["Pokemon"])
        if row["SleepDay"] == 1:
            formatted["AsleepTreeMonsDay"].append(row["Pokemon"])
        if row["SleepMorn"] == 1:
            formatted["AsleepTreeMonsMorn"].append(row["Pokemon"])
    newFile = "; Used by CheckSleepingTreeMon\n"
    for time in formatted.keys():
        newFile += "\n" + time + ":\n"
        for poke in formatted[time]:
            newFile += "\tdb " + poke + "\n"
        newFile += "\tdb -1; end\n"
    finalFile = open(treeSleepFile, "w")
    finalFile.write(newFile)
    finalFile.close()


# Update Bug Contest
def updateBugContestMons():
    newFile = "ContestMons:\n"
    newFile += "\t;   %, species,   min, max\n"
    bugContest = pd.read_csv(pokeBugCatchCSV)
    for row in bugContest.to_dict(orient="records"):
        newFile += "	db " + str(row["%"]) + ", " + row["species"]
        newFile += ", " + str(row["min"]) + ", " + str(row["max"]) + "\n"
    newFile += "\n"
    finalFile = open(bugContestFile, "w")
    finalFile.write(newFile)
    finalFile.close()


# Pikachu Check
def pikachuCheck(pokeConstants):
    if "PIKACHU" not in pokeConstants:
        print("NOTE: No pikachu in constants, update line 1125 in file engine/overworld/scripting.asm")


# # Update mobile_42.asm
# def updateMobile42(pokeConstants):
#     newFile = ""
#     with open("templatesforscripts/mobile_42.asm", "r") as f:
#         newFile = f.read()
#     newFile = newFile.replace("<Starter1Stage2>", pokeConstants[2])
#     newFile = newFile.replace("<Starter2Stage2>", pokeConstants[5])
#     print(newFile)
#     finalFile = open(mobile42File, "w")
#     finalFile.write(newFile)
#     finalFile.close()


# # Update mobile_46.asm
# def updateMobile46(pokeConstants):
#     newFile = ""
#     with open("templatesforscripts/mobile_46.asm", "r") as f:
#         newFile = f.read()
#     newFile = newFile.replace("<uber1>", pokeConstants[len(pokeConstants) - 1])
#     newFile = newFile.replace("<uber2>", pokeConstants[len(pokeConstants) - 2])
#     newFile = newFile.replace("<uber3>", pokeConstants[len(pokeConstants) - 3])
#     print(newFile)
#     finalFile = open(mobile46File, "w")
#     finalFile.write(newFile)
#     finalFile.close()


# Species Boost Item checks
def checkBoostItemSpecies(pokeConstants):
    boostPoke = [
        "PIKACHU",
        "CUBONE",
        "MAROWAK",
        "FARFETCH_D",
        "CHANSEY",
        "DITTO"
    ]
    final = []
    for poke in boostPoke:
        if poke not in pokeConstants:
            final.append(poke)
    if len(final) > 0:
        print("The Following Pokemon are referenced in engine/battle/effect_commands.asm due to having special, species-specific items.")
        for poke in final:
            print(poke)
        print("Make sure you adjust these references")


# Replace unused pic bank file
def replaceUnusedPicBank():
    shutil.copyfile("templatesforscripts/unused_pic_banks.asm", "../data/pokemon/unused_pic_banks.asm")


# Togepi Check
def togepiCheck(pokeConstants):
    if "TOGEPI" not in pokeConstants:
        print("NOTE: No togepi in constants, update togepi check in file engine/pokemon/breeding.asm")


# Trainer Pokemon Swap
def trainerPokeSwap():
    trainers = pd.read_csv(pokeSwapCSV)
    newFile = ""
    with open(partiesFile, "r") as f:
        newFile = f.read()
    f.close()
    for row in trainers.to_dict(orient="records"):
        print(row["OGPoke"] + " => " + row["NewPoke"])
        newFile = re.sub(rf"\b{row['OGPoke']}\b", row["NewPoke"], newFile)
    finalFile = open(partiesFile, "w")
    finalFile.write(newFile)
    finalFile.close()


# Battletower Trainer Pokemon Swap
def battleTowerPokeSwap():
    trainers = pd.read_csv(pokeSwapCSV)
    newFile = ""
    with open(battleTowerFile, "r") as f:
        newFile = f.read()
    f.close()
    for row in trainers.to_dict(orient="records"):
        print(row["OGPoke"] + " => " + row["NewPoke"])
        newFile = re.sub(rf"\b{row['OGPoke']}\b", row["NewPoke"], newFile)
    finalFile = open(battleTowerFile, "w")
    finalFile.write(newFile)
    finalFile.close()


pokeData = pd.read_csv(pokeDataCSV)

for row in pokeData.to_dict(orient="records"):
    definePokeConstant(row["constant"])
    definePokeName(row["name"])
    createBaseData(row)
    defineMenuIcon(row["icon"])
    pokeEvosAttacks[row["constant"]] = {}
    pokeEvosAttacks[row["constant"]]["moves"] = []
    createDexData(row)

pokeAttacks = pd.read_csv(pokeAttacksCSV)

for row in pokeAttacks.to_dict(orient="records"):
    pokeEvosAttacks[row["pokemon"]]["moves"].append([row["level"], row["move"]])

pokeEvos = pd.read_csv(pokeEvosCSV)

for row in pokeEvos.to_dict(orient="records"):
    if "evos" not in pokeEvosAttacks[row["pokemon"]]:
        pokeEvosAttacks[row["pokemon"]]["evos"] = []
    pokeEvosAttacks[row["pokemon"]]["evos"].append([row["evolution"], row["method"], row["method detail"]])

pokeEggs = pd.read_csv(pokeEggMovesCSV)

for row in pokeEggs.to_dict(orient="records"):
    if row["pokemon"] not in pokeEggMoves:
        pokeEggMoves[row["pokemon"]] = []
    pokeEggMoves[row["pokemon"]].append(row["move"])

updatePokeConstants(pokeConstants)
updatePokeNames(pokeNames)
updatePokeBaseStats(pokeConstants)
updateEvosAttacksPointers(pokeConstants)
updateEvosAttacks(pokeConstants, pokeEvosAttacks)
updateEggMoves(pokeConstants, pokeEggMoves)
updateDexEntryPointers(pokeConstants)
updatePokeIcons(pokeMenuIcons, pokeConstants)
updateDexEntriesFile(pokeConstants)
updateDexOrderNew(pokeConstants)
updateDexOrderAlpha(pokeConstants)
createSpritePlaceholders(pokeConstants)
updatePicPointers(pokeConstants)
updatePalettes(pokeConstants)
updateAnimPointers(pokeConstants)
updateAnims(pokeConstants)
updateIdlePointers(pokeConstants)
updateIdles(pokeConstants)
updateBitmaskPointers(pokeConstants)
updateBitmasks(pokeConstants)
updateFramePointers(pokeConstants)
updateFrames(pokeConstants)
updateGen1Order(pokeConstants)
removeEZChatOrder()
updateBuenasPasswords(pokeConstants)

# # One-off Updates
# updateTreeMons()
# updateTreeMonsAsleep()
# updateBugContestMons()
# pikachuCheck(pokeConstants)
# checkBoostItemSpecies(pokeConstants)
# print("Be sure to update data/events/odd_eggs.asm with appropriate egg data.")
# replaceUnusedPicBank()
# togepiCheck(pokeConstants)
# trainerPokeSwap()
# battleTowerPokeSwap()
