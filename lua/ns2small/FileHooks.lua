_G.ns2small_scale = Vector(.5, .5, .5)

ModLoader.SetupFileHook("lua/Mixins/BaseModelMixin.lua",    "lua/ns2small/BaseModelMixin.lua",    "post")
ModLoader.SetupFileHook("lua/Player.lua",                   "lua/ns2small/Player.lua",            "post")
ModLoader.SetupFileHook("lua/ExtentsMixin.lua",             "lua/ns2small/ExtentsMixin.lua",      "post")
ModLoader.SetupFileHook("lua/WallMovementMixin.lua",        "lua/ns2small/WallMovementMixin.lua", "post")
ModLoader.SetupFileHook("lua/TechPoint.lua",                "lua/ns2small/TechPoint.lua",         "post")
ModLoader.SetupFileHook("lua/Door.lua",                     "lua/ns2small/Door.lua",              "post")
