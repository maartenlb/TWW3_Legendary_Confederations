-- All major factions
local race_factions = {
    -- Warhammer 1 Factions
    ["wh_main_sc_emp_empire"] = {"wh_main_emp_empire", "wh_main_emp_middenland", "wh2_dlc13_emp_golden_order", "wh2_dlc13_emp_the_huntmarshals_expedition","wh3_main_emp_cult_of_sigmar", "wh_main_emp_wissenland"},
    ["wh_main_sc_dwf_dwarfs"] = {"wh_main_dwf_dwarfs", "wh_main_dwf_karak_kadrin", "wh_main_dwf_karak_izor", "wh2_dlc17_dwf_thorek_ironbrow", "wh3_main_dwf_the_ancestral_throng", "wh3_dlc25_dwf_malakai"},
    ["wh_main_sc_grn_greenskins"] = {"wh_main_grn_greenskins", "wh_main_grn_crooked_moon", "wh_main_grn_orcs_of_the_bloody_hand", "wh2_dlc15_grn_bonerattlaz", "wh2_dlc15_grn_broken_axe", "wh3_dlc26_grn_gorbad_ironclaw"},
    ["wh_main_sc_vmp_vampire_counts"] = {"wh_main_vmp_schwartzhafen", "wh_main_vmp_vampire_counts", "wh2_dlc11_vmp_the_barrow_legion", "wh_main_vmp_mousillon", "wh3_main_vmp_caravan_of_blue_roses"},
    ["wh_main_sc_chs_chaos"] = {"wh_main_chs_chaos", "wh3_dlc20_chs_kholek", "wh3_dlc20_chs_sigvald", "wh3_main_chs_shadow_legion", "wh3_dlc20_chs_festus", "wh3_dlc20_chs_azazel", "wh3_dlc20_chs_valkia", "wh3_dlc20_chs_vilitch"},
    ["wh_dlc03_sc_bst_beastmen"] = {"wh_dlc03_bst_beastmen", "wh2_dlc17_bst_malagor", "wh_dlc05_bst_morghur_herd","wh2_dlc17_bst_taurox"},
    ["wh_dlc05_sc_wef_wood_elves"] = {"wh_dlc05_wef_wood_elves", "wh_dlc05_wef_argwylon", "wh2_dlc16_wef_drycha", "wh2_dlc16_wef_sisters_of_twilight"},
    ["wh_main_sc_brt_bretonnia"] = {"wh_main_brt_bretonnia", "wh_main_brt_bordeleaux", "wh_main_brt_carcassonne", "wh2_dlc14_brt_chevaliers_de_lyonesse"},
    ["wh_main_sc_nor_norsca"] = {"wh_dlc08_nor_norsca", "wh_dlc08_nor_wintertooth", "wh3_dlc27_nor_sayl"},
    -- Warhammer 2 Factions
    ["wh2_main_sc_hef_high_elves"] = {"wh2_main_hef_eataine", "wh2_main_hef_order_of_loremasters", "wh2_main_hef_avelorn", "wh2_main_hef_nagarythe", "wh2_main_hef_yvresse", "wh2_dlc15_hef_imrik", "wh3_dlc27_hef_aislinn_confederation_owner",  "wh3_dlc27_hef_aislinn"},
    ["wh2_main_sc_def_dark_elves"] = {"wh2_main_def_naggarond", "wh2_main_def_cult_of_pleasure", "wh2_main_def_har_ganeth", "wh2_dlc11_def_the_blessed_dread", "wh2_main_def_hag_graef", "wh2_twa03_def_rakarth"},
    ["wh2_main_sc_lzd_lizardmen"] = {"wh2_main_lzd_hexoatl", "wh2_main_lzd_last_defenders", "wh2_dlc12_lzd_cult_of_sotek", "wh2_main_lzd_tlaqua", "wh2_main_lzd_itza", "wh2_dlc13_lzd_spirits_of_the_jungle", "wh2_dlc17_lzd_oxyotl"},
    ["wh2_main_sc_skv_skaven"] = {"wh2_main_skv_clan_skryre", "wh2_main_skv_clan_mors", "wh2_main_skv_clan_pestilens", "wh2_dlc09_skv_clan_rictus", "wh2_main_skv_clan_eshin","wh2_main_skv_clan_moulder"},
    ["wh2_dlc09_sc_tmb_tomb_kings"] = {"wh2_dlc09_tmb_khemri", "wh2_dlc09_tmb_lybaras", "wh2_dlc09_tmb_exiles_of_nehek", "wh2_dlc09_tmb_followers_of_nagash"},
    ["wh2_dlc11_sc_cst_vampire_coast"] = {"wh2_dlc11_cst_vampire_coast", "wh2_dlc11_cst_noctilus", "wh2_dlc11_cst_pirates_of_sartosa", "wh2_dlc11_cst_the_drowned"},
    -- Warhammer 3 Factions
    ["wh3_main_sc_ksl_kislev"] = {"wh3_main_ksl_the_ice_court", "wh3_main_ksl_the_great_orthodoxy", "wh3_main_ksl_ursun_revivalists", "wh3_dlc24_ksl_daughters_of_the_forest"},
    ["wh3_main_sc_cth_cathay"] = {"wh3_dlc24_cth_the_celestial_court", "wh3_main_cth_the_northern_provinces", "wh3_main_cth_the_western_provinces"},
    ["wh3_main_sc_kho_khorne"] = {"wh3_main_kho_exiles_of_khorne", "wh3_dlc26_kho_arbaal", "wh3_dlc26_kho_skulltaker"},
    ["wh3_main_sc_tze_tzeentch"] = {"wh3_main_tze_oracles_of_tzeentch" ,"wh3_dlc24_tze_the_deceivers"},
    ["wh3_main_sc_nur_nurgle"] = {"wh3_main_nur_poxmakers_of_nurgle", "wh3_dlc25_nur_tamurkhan", "wh3_dlc25_nur_epidemius"},
    ["wh3_main_sc_sla_slaanesh"] = {"wh3_main_sla_seducers_of_slaanesh", "wh3_dlc27_sla_masque_of_slaanesh", "wh3_dlc27_sla_the_tormentors"},
    ["wh3_main_sc_dae_daemons"] = {"wh3_main_dae_daemon_prince"},
    ["wh3_main_sc_ogr_ogre_kingdoms"] = {"wh3_main_ogr_goldtooth", "wh3_main_ogr_disciples_of_the_maw", "wh3_dlc26_ogr_golgfag"},
    ["wh3_dlc23_sc_chd_chaos_dwarfs"] = {"wh3_dlc23_chd_astragoth", "wh3_dlc23_chd_legion_of_azgorh", "wh3_dlc23_chd_zhatan"}
} 

-- Leaders of every race
local race_leaders = {
    -- Warhammer 1 Factions
    ["wh_main_sc_emp_empire"] = "wh_main_emp_empire",
    ["wh_main_sc_dwf_dwarfs"] = "wh_main_dwf_dwarfs",
    ["wh_main_sc_grn_greenskins"] = "wh3_dlc26_grn_gorbad_ironclaw",
    ["wh_main_sc_vmp_vampire_counts"] = "wh_main_vmp_schwartzhafen",
    ["wh_main_sc_chs_chaos"] = "wh_main_chs_chaos",
    ["wh_dlc03_sc_bst_beastmen"] = "wh_dlc05_bst_morghur_herd",
    ["wh_dlc05_sc_wef_wood_elves"] = "wh_dlc05_wef_wood_elves",
    ["wh_main_sc_brt_bretonnia"] = "wh_main_brt_bretonnia",
    ["wh_main_sc_nor_norsca"] = "wh_dlc08_nor_norsca",
    -- Warhammer 2 Factions
    ["wh2_main_sc_hef_high_elves"] = "wh2_main_hef_eataine",
    ["wh2_main_sc_def_dark_elves"] = "wh2_main_def_naggarond",
    ["wh2_main_sc_lzd_lizardmen"] = "wh2_main_lzd_hexoatl",
    ["wh2_main_sc_skv_skaven"] = "wh2_main_skv_clan_skryre",
    ["wh2_dlc09_sc_tmb_tomb_kings"] = "wh2_dlc09_tmb_khemri",
    ["wh2_dlc11_sc_cst_vampire_coast"] = "wh2_dlc11_cst_vampire_coast",
    -- Warhammer 3 Factions
    ["wh3_main_sc_ksl_kislev"] = "wh3_main_ksl_the_ice_court", 
    ["wh3_main_sc_cth_cathay"] = "wh3_dlc24_cth_the_celestial_court",
    ["wh3_main_sc_kho_khorne"] ="wh3_dlc26_kho_skulltaker",
    ["wh3_main_sc_tze_tzeentch"] = "wh3_main_tze_oracles_of_tzeentch",
    ["wh3_main_sc_nur_nurgle"] = "wh3_dlc25_nur_tamurkhan",
    ["wh3_main_sc_sla_slaanesh"] = "wh3_main_sla_seducers_of_slaanesh",
    ["wh3_main_sc_dae_daemons"] = "wh3_main_dae_daemon_prince",
    ["wh3_main_sc_ogr_ogre_kingdoms"] = "wh3_main_ogr_goldtooth",
    ["wh3_dlc23_sc_chd_chaos_dwarfs"] = "wh3_dlc23_chd_astragoth",
}

-- -- Confederation penalty bundles
-- local confed_penalty_bundles = {                                       
-- "wh2_main_bundle_confederation_skv",
-- "wh2_main_bundle_confederation_lzd",
-- "wh2_main_bundle_confederation_hef",
-- "wh2_main_bundle_confederation_def",
-- "wh_main_bundle_confederation_grn",
-- "wh_main_bundle_confederation_vmp",
-- "wh_main_bundle_confederation_dwf",
-- "wh_main_bundle_confederation_emp",
-- "wh_main_bundle_confederation_brt",
-- "wh_main_bundle_confederation_wef",
-- "wh2_main_bundle_confederation_tmb"
-- }

-- Enabled Mod
ModEnabled = true

-- Enable Player
PlayerEnabled =true

-- Enable AI
AIEnabled = true

--Turn Timer
ConfederationTurnCheck = 10

-- Minor Faction Participation
MinorEnable = false

-- Aislinn special logic to enable dragonship
AISLINN_KEY = "wh3_dlc27_hef_aislinn"

local function to_bool(val)
    if val == true then return true end
    if val == false then return false end
    if val == "true" then return true end
    if val == "false" then return false end
    return false -- default
end

local function update_mct_settings()
    local mct = get_mct()
    local legendary_confederations_mod = mct:get_mod_by_key("legendary_confederations")
    if not legendary_confederations_mod then return end

    ModEnabled = to_bool(legendary_confederations_mod:get_option_by_key("mod_enable"):get_finalized_setting())
    PlayerEnabled = to_bool(legendary_confederations_mod:get_option_by_key("player_enable"):get_finalized_setting())
    AIEnabled = to_bool(legendary_confederations_mod:get_option_by_key("ai_enable"):get_finalized_setting())
    ConfederationTurnCheck = tonumber(legendary_confederations_mod:get_option_by_key("turn_trigger"):get_finalized_setting())
end


-- Track confederation progress per race
local confed_progress = {}
-- Track round-robin index per race
local confed_turn_index = {}

-- Utility: check if faction is human-controlled
local function is_human(faction_key)
    local faction = cm:get_faction(faction_key)
    return faction and faction:is_human()
end

local function force_confederation(leader_key, target_key)
    local target = cm:get_faction(target_key)
    local leader = cm:get_faction(leader_key)
    if target and not target:is_dead() and not leader:is_dead() then
        -- Confederate
        cm:force_confederation(leader_key, target_key)
        cm:treasury_mod(leader_key, 4000)

        --Aislinn DRagonship effect
        if target_key == "wh3_dlc27_hef_aislinn" then
            DRAGONSHIP_BUNDLE = "wh3_dlc27_confederated_aislinn"
            out("LUNDAH Triggered AISLINN")
            cm:apply_effect_bundle(DRAGONSHIP_BUNDLE, leader_key, 0)
            out("LUNDAH: Applied " .. DRAGONSHIP_BUNDLE .. " to " .. leader_key .. " after confederating " .. AISLINN_KEY)
        end
    end
end

-- Get all human players of a race
local function get_human_players(race)
    local humans = {}
    for _, faction_key in ipairs(race_factions[race]) do
        if is_human(faction_key) then
            table.insert(humans, faction_key)
        end
    end
    return humans
end



-- Main function: called on a certain turn
local function confederate_major_factions(player_enabled, ai_enabled)
    for race, factions in pairs(race_factions) do
        local leader = race_leaders[race]
        if not leader then
            out("LUNDAH BUG: No leader defined for race: " .. tostring(race))
        else
            local humans = get_human_players(race)
            if #humans > 0 then
                if player_enabled then
                    -- Player turn: absorb (non-player) factions, but distribute round-robin among humans
                    local human_index = confed_turn_index[race] or 1

                    for _, target in ipairs(factions) do
                        local current_player = humans[human_index]
                        local target_faction = cm:get_faction(target)
                        if target ~= current_player and not target_faction:is_human() then
                            force_confederation(current_player, target)
                        end

                        -- Advance to next human in round robin
                        human_index = human_index + 1
                        if human_index > #humans then
                            human_index = 1
                        end
                    end

                    -- Update index for next turn
                    confed_turn_index[race] = human_index
                end
            else
                if ai_enabled then
                    -- AI leader: confederate all remaining factions
                    for _, target in ipairs(factions) do
                        if target ~= leader then
                            force_confederation(leader, target)
                        end
                    end
                end
            end
        end
    end
end

-- Minor factions stuff

-- Build a fast lookup set of all major faction keys
local function build_major_lookup(majors_table)
    local lookup = {}
    for subculture, list in pairs(majors_table) do
        for _, fac_key in ipairs(list) do
            lookup[fac_key] = true
        end
    end
    return lookup
end

-- Build minor faction dictionary shaped like race_factions:
-- { subculture_key = { "faction_key_a", "faction_key_b", ... }, ... }
-- local function build_alive_minor_faction_dict(majors_table)
--     local minor_by_subculture = {}

--     -- Ensure every subculture key from majors_table exists in result (even if empty)
--     for subculture, _ in pairs(majors_table) do
--         minor_by_subculture[subculture] = {}
--     end

--     local major_lookup = build_major_lookup(majors_table)
--     local all_factions = cm:model():world():faction_list()

--     for i = 0, all_factions:num_items() - 1 do
--         local fac = all_factions:item_at(i)
--         if fac and not fac:is_null_interface() then
--             local fac_key = fac:name()
--             -- skip dead and major factions
--             if not fac:is_dead() and not major_lookup[fac_key] then
--                 local subculture = fac:subculture()
--                 -- Only include factions whose subculture is present in your majors table
--                 if subculture and minor_by_subculture[subculture] then
--                     table.insert(minor_by_subculture[subculture], fac_key)
--                 end
--             end
--         end
--     end

--     return minor_by_subculture
-- end


core:add_listener(
    "Lundah_Legendary_Confederations_MCTInitialized",
    "MctInitialized",
    true,
    function(context)
        local mct = context:mct()
        update_mct_settings()
        out("LUNDAH MCT UPDATED")
    end,
    true
)

core:add_listener(
    "Lundah_Legendary_Confederations_MCTFinalized",
    "MctFinalized",
    true,
    function(context)
        local mct = context:mct()
        update_mct_settings()
        out("LUNDAH MCT UPDATED")
    end,
    true
)




-- Hook into campaign turn start
cm:add_first_tick_callback(
    function()
        core:add_listener(
            "ConfederationTurnCheck",
            "FactionTurnStart",
            function(context)
                return context:faction():is_human()
            end,
            function(context)
                local turn = cm:turn_number()
                if ModEnabled then
                if turn >= ConfederationTurnCheck and turn <= (ConfederationTurnCheck + 2) then
                    out("LUNDAH TRIGGERED CONFEDERATIONS")
                    confederate_major_factions(PlayerEnabled, AIEnabled)
                end
                -- if MinorEnable then
                --     minor_table = build_alive_minor_faction_dict(race_factions)
                --     out(tostring(minor_table))
                -- end
            end
            end,
            true
        )
    end)