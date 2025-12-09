if not get_mct then return end
local mct = get_mct()
local loc_prefix = "legendary_confederations"
local legendary_confederations = mct:register_mod("legendary_confederations")
legendary_confederations:set_title(loc_prefix.."mod_title", true)
legendary_confederations:set_author("Lundah (based on WH2 mod by Frosty)")
legendary_confederations:set_description(loc_prefix.."mod_desc", true)


local mod_enable = legendary_confederations:add_new_option("mod_enable", "checkbox")
mod_enable:set_default_value(true)

legendary_confederations:add_new_section("options", loc_prefix.."options", true)

local play_enable = legendary_confederations:add_new_option("player_enable", "checkbox")
play_enable:set_default_value(true)
-- enable:set_text(loc_prefix.."p_enable_txt", true)
-- enable:set_tooltip_text(loc_prefix.."p_enable_tt", true)

local ai_enable = legendary_confederations:add_new_option("ai_enable", "checkbox")
ai_enable:set_default_value(true)


local turn_trigger = legendary_confederations:add_new_option("turn_trigger", "slider")
-- turn_trigger:set_text(loc_prefix.."d_turn_trigger_txt", true)
-- turn_trigger:set_tooltip_text(loc_prefix.."d_turn_trigger_tt", true)
turn_trigger:slider_set_min_max(1, 250)
turn_trigger:set_default_value(10)
turn_trigger:slider_set_step_size(1)

legendary_confederations:set_section_sort_function("index_sort")

local options_list = {
    "mod_enable",
    "play_enable",
    "ai_enable",
    "turn_trigger"
} --:vector<string>

local sections_list = {
    "options",
} --:vector<string>

mod_enable:add_option_set_callback(
    function(option) 
        local val = option:get_selected_setting() 
        --# assume val: boolean
        local options = options_list
        local sections = sections_list
        local legendary_confederations = option:get_mod()

        for i = 1, #sections do
            local section_obj = legendary_confederations:get_section_by_key(sections[i])
            section_obj:set_visibility (val)
        end
    end
)