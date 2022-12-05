import os
import shutil
import pandas as pd
import random as rand
import re

# Data Files for Wild Data
johtoGrassCSV = 'johto_grass.csv'
johtoWaterCSV = 'johto_water.csv'

# Game Files
johtoGrassFile = '../data/wild/johto_grass.asm'
johtoWaterFile = '../data/wild/johto_water.asm'


# Lists / Dicts / etc
pokeConstants = []


# Constant Handling
def definePokeConstant(const):
    pokeConstants.append(const)


# Update Grass
def updateGrass(region="Johto"):
    formatted = {}
    grass = pd.read_csv(region.lower() + "_grass.csv")
    for row in grass.to_dict(orient="records"):
        if row["Map"] not in formatted.keys():
            formatted[row["Map"]] = {}
            formatted[row["Map"]]["Morn"] = []
            formatted[row["Map"]]["Day"] = []
            formatted[row["Map"]]["Nite"] = []
            formatted[row["Map"]]["EncounterRates"] = {}
        if row["Time"] not in formatted[row["Map"]]["EncounterRates"].keys():
            formatted[row["Map"]]["EncounterRates"][row["Time"]] = row["EncounterRate"]
        entry = "    db " + str(row["Level"]) + ", " + row["Pokemon"]
        formatted[row["Map"]][row["Time"]].append(entry)
    newFile = "; " + region.capitalize() + " Pokémon in grass\n\n"
    newFile += region.capitalize() + "GrassWildMons:\n\n"
    for location in formatted.keys():
        newFile += "    def_grass_wildmons " + location + "\n"
        mornRate = formatted[location]["EncounterRates"]["Morn"]
        dayRate = formatted[location]["EncounterRates"]["Day"]
        niteRate = formatted[location]["EncounterRates"]["Nite"]
        newFile += "    db " + str(mornRate) + " percent, "
        newFile += str(dayRate) + " percent, "
        newFile += str(niteRate) + " percent ; encounter rates: morn/day/nite\n"
        times = ["Morn", "Day", "Nite"]
        for time in times:
            newFile += "    ; " + time.lower() + "\n"
            newFile += "\n".join(formatted[location][time])
            newFile += "\n"
        newFile += "    end_grass_wildmons\n\n"
    newFile += "    db -1 ; end\n"
    finalFile = open("../data/wild/" + region.lower() + "_grass.asm", "w")
    finalFile.write(newFile)
    finalFile.close()


# Update Water
def updateWater(region="Johto"):
    formatted = {}
    grass = pd.read_csv(region.lower() + "_water.csv")
    for row in grass.to_dict(orient="records"):
        if row["Map"] not in formatted.keys():
            formatted[row["Map"]] = {}
            formatted[row["Map"]]["Encounters"] = []
            formatted[row["Map"]]["EncounterRate"] = row["EncounterRate"]
            entry = "    db " + str(row["Level"]) + ", " + row["Pokemon"]
        formatted[row["Map"]]["Encounters"].append(entry)
    newFile = "; " + region.capitalize() + " Pokémon in water\n\n"
    newFile += region.capitalize() + "WaterWildMons:\n\n"
    for location in formatted.keys():
        newFile += "    def_water_wildmons " + location + "\n"
        newFile += "    db " + str(formatted[location]["EncounterRate"])
        newFile += " percent ; encounter rate\n"
        newFile += "\n".join(formatted[location]["Encounters"])
        newFile += "\n"
        newFile += "    end_water_wildmons\n\n"
    newFile += "    db -1 ; end\n"
    finalFile = open("../data/wild/" + region.lower() + "_water.asm", "w")
    finalFile.write(newFile)
    finalFile.close()


updateGrass()
updateWater()
