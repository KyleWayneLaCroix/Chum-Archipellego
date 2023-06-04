MACRO overworld_sprite
; pointer, length, type, palette
	dw \1
	db \2 tiles, BANK(\1), \3, \4
ENDM

OverworldSprites:
; entries correspond to SPRITE_* constants
	table_width NUM_SPRITEDATA_FIELDS, OverworldSprites
	overworld_sprite ChrisSpriteGFX, 12, WALKING_SPRITE, PAL_OW_RED
	overworld_sprite ChrisBikeSpriteGFX, 12, WALKING_SPRITE, PAL_OW_RED
	overworld_sprite GameboyKidSpriteGFX, 12, STANDING_SPRITE, PAL_OW_GREEN
	overworld_sprite RivalSpriteGFX, 12, WALKING_SPRITE, PAL_OW_RED
	overworld_sprite RedSpriteGFX, 12, WALKING_SPRITE, PAL_OW_RED
	overworld_sprite BillSpriteGFX, 12, WALKING_SPRITE, PAL_OW_RED
	overworld_sprite MomSpriteGFX, 12, WALKING_SPRITE, PAL_OW_RED
	overworld_sprite BlaineSpriteGFX, 12, WALKING_SPRITE, PAL_OW_BROWN
	overworld_sprite DaisySpriteGFX, 12, WALKING_SPRITE, PAL_OW_BLUE
	overworld_sprite ElmSpriteGFX, 12, WALKING_SPRITE, PAL_OW_BROWN
	overworld_sprite FalknerSpriteGFX, 12, WALKING_SPRITE, PAL_OW_BLUE
	overworld_sprite WhitneySpriteGFX, 12, WALKING_SPRITE, PAL_OW_RED
	overworld_sprite BugsySpriteGFX, 12, WALKING_SPRITE, PAL_OW_GREEN
	overworld_sprite MortySpriteGFX, 12, WALKING_SPRITE, PAL_OW_BROWN
	overworld_sprite JasmineSpriteGFX, 12, WALKING_SPRITE, PAL_OW_GREEN
	overworld_sprite PryceSpriteGFX, 12, WALKING_SPRITE, PAL_OW_BROWN
	overworld_sprite ClairSpriteGFX, 12, WALKING_SPRITE, PAL_OW_RED
	overworld_sprite BrockSpriteGFX, 12, WALKING_SPRITE, PAL_OW_BROWN
	overworld_sprite BrunoSpriteGFX, 12, WALKING_SPRITE, PAL_OW_RED
	overworld_sprite MistySpriteGFX, 12, WALKING_SPRITE, PAL_OW_BLUE
	overworld_sprite SurgeSpriteGFX, 12, WALKING_SPRITE, PAL_OW_GREEN
	overworld_sprite ErikaSpriteGFX, 12, WALKING_SPRITE, PAL_OW_GREEN
	overworld_sprite SabrinaSpriteGFX, 12, WALKING_SPRITE, PAL_OW_RED
	overworld_sprite CooltrainerMSpriteGFX, 12, WALKING_SPRITE, PAL_OW_BLUE
	overworld_sprite CooltrainerFSpriteGFX, 12, WALKING_SPRITE, PAL_OW_BLUE
	overworld_sprite BugCatcherSpriteGFX, 12, WALKING_SPRITE, PAL_OW_BLUE
	overworld_sprite TwinSpriteGFX, 12, WALKING_SPRITE, PAL_OW_RED
	overworld_sprite YoungsterSpriteGFX, 12, WALKING_SPRITE, PAL_OW_BLUE
	overworld_sprite LassSpriteGFX, 12, WALKING_SPRITE, PAL_OW_RED
	overworld_sprite TeacherSpriteGFX, 12, WALKING_SPRITE, PAL_OW_RED
	overworld_sprite BeautySpriteGFX, 12, WALKING_SPRITE, PAL_OW_BLUE
	overworld_sprite SuperNerdSpriteGFX, 12, WALKING_SPRITE, PAL_OW_BLUE
	overworld_sprite RockerSpriteGFX, 12, WALKING_SPRITE, PAL_OW_GREEN
	overworld_sprite PokefanMSpriteGFX, 12, WALKING_SPRITE, PAL_OW_BROWN
	overworld_sprite PokefanFSpriteGFX, 12, WALKING_SPRITE, PAL_OW_BROWN
	overworld_sprite GrampsSpriteGFX, 12, WALKING_SPRITE, PAL_OW_BROWN
	overworld_sprite GrannySpriteGFX, 12, WALKING_SPRITE, PAL_OW_BROWN
	overworld_sprite SwimmerGuySpriteGFX, 12, WALKING_SPRITE, PAL_OW_BLUE
	overworld_sprite SwimmerGirlSpriteGFX, 12, WALKING_SPRITE, PAL_OW_BLUE
	overworld_sprite BigSnorlaxSpriteGFX, 12, STANDING_SPRITE, PAL_OW_BLUE
	overworld_sprite SurfingPikachuSpriteGFX, 12, WALKING_SPRITE, PAL_OW_RED
	overworld_sprite RocketSpriteGFX, 12, WALKING_SPRITE, PAL_OW_BROWN
	overworld_sprite RocketGirlSpriteGFX, 12, WALKING_SPRITE, PAL_OW_BROWN
	overworld_sprite NurseSpriteGFX, 12, STANDING_SPRITE, PAL_OW_RED
	overworld_sprite LinkReceptionistSpriteGFX, 12, WALKING_SPRITE, PAL_OW_RED
	overworld_sprite ClerkSpriteGFX, 12, WALKING_SPRITE, PAL_OW_GREEN
	overworld_sprite FisherSpriteGFX, 12, WALKING_SPRITE, PAL_OW_BLUE
	overworld_sprite FishingGuruSpriteGFX, 12, WALKING_SPRITE, PAL_OW_BLUE
	overworld_sprite ScientistSpriteGFX, 12, WALKING_SPRITE, PAL_OW_BLUE
	overworld_sprite KimonoGirlSpriteGFX, 12, WALKING_SPRITE, PAL_OW_RED
	overworld_sprite SageSpriteGFX, 12, WALKING_SPRITE, PAL_OW_BROWN
	overworld_sprite GentlemanSpriteGFX, 12, WALKING_SPRITE, PAL_OW_BLUE
	overworld_sprite BlackBeltSpriteGFX, 12, WALKING_SPRITE, PAL_OW_BROWN
	overworld_sprite ReceptionistSpriteGFX, 12, WALKING_SPRITE, PAL_OW_BLUE
	overworld_sprite OfficerSpriteGFX, 12, WALKING_SPRITE, PAL_OW_BLUE
	overworld_sprite BigLaprasSpriteGFX, 12, STANDING_SPRITE, PAL_OW_BLUE
	overworld_sprite GymGuideSpriteGFX, 12, WALKING_SPRITE, PAL_OW_BLUE
	overworld_sprite SailorSpriteGFX, 12, WALKING_SPRITE, PAL_OW_BLUE
	overworld_sprite BikerSpriteGFX, 12, WALKING_SPRITE, PAL_OW_BROWN
	overworld_sprite PharmacistSpriteGFX, 12, WALKING_SPRITE, PAL_OW_BLUE
	overworld_sprite MonsterSpriteGFX, 12, WALKING_SPRITE, PAL_OW_RED
	overworld_sprite FairySpriteGFX, 12, WALKING_SPRITE, PAL_OW_RED
	overworld_sprite BirdSpriteGFX, 12, WALKING_SPRITE, PAL_OW_RED
	overworld_sprite DragonSpriteGFX, 12, WALKING_SPRITE, PAL_OW_RED
	overworld_sprite BigOnixSpriteGFX, 12, STANDING_SPRITE, PAL_OW_BROWN
	overworld_sprite N64SpriteGFX, 4, STILL_SPRITE, PAL_OW_BROWN
	overworld_sprite SudowoodoSpriteGFX, 12, STANDING_SPRITE, PAL_OW_GREEN
	overworld_sprite SurfSpriteGFX, 12, WALKING_SPRITE, PAL_OW_BLUE
	overworld_sprite PokeBallSpriteGFX, 4, STILL_SPRITE, PAL_OW_RED
	overworld_sprite PokedexSpriteGFX, 4, STILL_SPRITE, PAL_OW_BROWN
	overworld_sprite PaperSpriteGFX, 4, STILL_SPRITE, PAL_OW_BLUE
	overworld_sprite VirtualBoySpriteGFX, 4, STILL_SPRITE, PAL_OW_RED
	overworld_sprite RockSpriteGFX, 4, STILL_SPRITE, PAL_OW_ROCK
	overworld_sprite BoulderSpriteGFX, 4, STILL_SPRITE, PAL_OW_ROCK
	overworld_sprite SnesSpriteGFX, 4, STILL_SPRITE, PAL_OW_BLUE
	overworld_sprite FamicomSpriteGFX, 4, STILL_SPRITE, PAL_OW_RED
	overworld_sprite FruitTreeSpriteGFX, 4, STILL_SPRITE, PAL_OW_TREE
	overworld_sprite GoldTrophySpriteGFX, 4, STILL_SPRITE, PAL_OW_BROWN
	overworld_sprite SilverTrophySpriteGFX, 4, STILL_SPRITE, PAL_OW_SILVER
	overworld_sprite KrisSpriteGFX, 12, WALKING_SPRITE, PAL_OW_BLUE
	overworld_sprite KrisBikeSpriteGFX, 12, WALKING_SPRITE, PAL_OW_BLUE
	overworld_sprite SuicuneSpriteGFX, 4, STILL_SPRITE, PAL_OW_BLUE
	overworld_sprite KyleSpriteGFX, 12, WALKING_SPRITE, PAL_OW_BLUE
	overworld_sprite LinkSpriteGFX, 12, WALKING_SPRITE, PAL_OW_GREEN
	overworld_sprite BigClaySpriteGFX, 12, STANDING_SPRITE, PAL_OW_BLUE 
	overworld_sprite MushroomSpriteGFX, 4, STILL_SPRITE, PAL_OW_RED
	overworld_sprite ZoomerSpriteGFX, 12, WALKING_SPRITE, PAL_OW_RED
	overworld_sprite SkreeAndRipperSpriteGFX, 12, WALKING_SPRITE, PAL_OW_BROWN
	overworld_sprite MorphBallSpriteGFX, 4, STILL_SPRITE, PAL_OW_RED
	overworld_sprite EnergyTankSpriteGFX, 4, STILL_SPRITE, PAL_OW_RED
	overworld_sprite MissilesSpriteGFX, 4, STILL_SPRITE, PAL_OW_RED
	overworld_sprite LeverLeftSpriteGFX, 4, STILL_SPRITE, PAL_OW_SILVER
	overworld_sprite LeverRightSpriteGFX, 4, STILL_SPRITE, PAL_OW_SILVER
	overworld_sprite GoronSpriteGFX, 12, WALKING_SPRITE, PAL_OW_BROWN
	overworld_sprite RegimagmaSpriteGFX, 12, STANDING_SPRITE, PAL_OW_RED
	overworld_sprite RollyBallSpriteGFX, 12, WALKING_SPRITE, PAL_OW_BLUE
	overworld_sprite MBlockSpriteGFX, 12, STANDING_SPRITE, PAL_OW_PURPLE
	overworld_sprite MarinSpriteGFX, 12, WALKING_SPRITE, PAL_OW_RED
	overworld_sprite TarinSpriteGFX, 12, WALKING_SPRITE, PAL_OW_RED
	overworld_sprite ShopkeeperSpriteGFX, 12, WALKING_SPRITE, PAL_OW_GREEN
	overworld_sprite ChompSpriteGFX, 12, WALKING_SPRITE, PAL_OW_SILVER
	overworld_sprite OctorokSpriteGFX, 12, WALKING_SPRITE, PAL_OW_RED
	overworld_sprite CuccoSpriteGFX, 12, WALKING_SPRITE, PAL_OW_SILVER
	overworld_sprite KaeporaSpriteGFX, 4, STILL_SPRITE, PAL_OW_BROWN
	overworld_sprite LAYoungsterSpriteGFX, 12, WALKING_SPRITE, PAL_OW_GREEN
	overworld_sprite MoblinSpriteGFX, 12, WALKING_SPRITE, PAL_OW_GREEN
	overworld_sprite GelSpriteGFX, 12, WALKING_SPRITE, PAL_OW_RED
	overworld_sprite CrabSpriteGFX, 12, WALKING_SPRITE, PAL_OW_RED
	overworld_sprite LAGuySpriteGFX, 12, WALKING_SPRITE, PAL_OW_BLUE
	overworld_sprite LAGirlSpriteGFX, 12, WALKING_SPRITE, PAL_OW_RED
	overworld_sprite LAGrannySpriteGFX, 4, STILL_SPRITE, PAL_OW_BROWN
	overworld_sprite LAFisherSpriteGFX, 4, STILL_SPRITE, PAL_OW_BLUE
	overworld_sprite BladeTrapSpriteGFX, 4, STILL_SPRITE, PAL_OW_RED
	overworld_sprite CardSpriteGFX, 4, STILL_SPRITE, PAL_OW_BLUE
	overworld_sprite HeartSpriteGFX, 4, STILL_SPRITE, PAL_OW_RED
	overworld_sprite EggSpriteGFX, 4, STILL_SPRITE, PAL_OW_GREEN
	overworld_sprite TMSpriteGFX, 4, STILL_SPRITE, PAL_OW_PURPLE
	overworld_sprite LAGrampsSpriteGFX, 4, STILL_SPRITE, PAL_OW_RED
	overworld_sprite GreatFairySpriteGFX, 12, STANDING_SPRITE, PAL_OW_RED
	overworld_sprite SwordSpriteGFX, 4, STANDING_SPRITE, PAL_OW_BROWN
	overworld_sprite BlockSpriteGFX, 4, STANDING_SPRITE, PAL_OW_PURPLE
	assert_table_length NUM_OVERWORLD_SPRITES
