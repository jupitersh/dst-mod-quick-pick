name = "Quick Pick"
description = "It makes almost everything pick quickly."
author = "辣椒小皇纸"
version = "1.1.1"
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
		name = "quick_harvest",
		label = "Quick Harvest",
		hover = "Quick pick from cookpots, dryers and farms",
		options =	{
						{description = "Yes", data = true, hover = ""},
						{description = "No", data = false, hover = ""},
					},
		default = true,
	},
}
