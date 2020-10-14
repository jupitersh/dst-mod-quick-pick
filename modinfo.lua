name = "Quick Pick"
description = "It makes almost everything pick quickly."
author = "辣椒小皇纸"
version = "1.4.0"
forumthread = ""

api_version = 10

all_clients_require_mod = false
client_only_mod = false
dst_compatible = true

icon_atlas = "modicon.xml"
icon = "modicon.tex"

server_filter_tags = {"Quick Pick"}

----------------------
-- General settings --
----------------------

configuration_options =
{
    {
        name = "quick_pick_cactus",
        label = "Quick Pick Cactus or Lichen",
        hover = "Quick picking cactus or lichen",
        options =   {
                        {description = "Yes", data = true, hover = ""},
                        {description = "No", data = false, hover = ""},
                    },
        default = true,
    },
    {
        name = "quick_pick_plant_normal_ground",
        label = "Quick Pick Wormwood's plant",
        hover = "Quick picking the plants that Wormwood planted on the groud",
        options =   {
                        {description = "Yes", data = true, hover = ""},
                        {description = "No", data = false, hover = ""},
                    },
        default = true,
    },
    {
        name = "quick_harvest",
        label = "Quick Harvest",
        hover = "Quick picking from cookpots, dryers and farms",
        options =   {
                        {description = "Yes", data = true, hover = ""},
                        {description = "No", data = false, hover = ""},
                    },
        default = true,
    },
    {
        name = "quick_cook_on_fire",
        label = "Quick Cook on Fire",
        hover = "Quick cooking foods on firepit.",
        options =   {
                        {description = "Yes", data = true, hover = ""},
                        {description = "No", data = false, hover = ""},
                    },
        default = true,
    },
}
