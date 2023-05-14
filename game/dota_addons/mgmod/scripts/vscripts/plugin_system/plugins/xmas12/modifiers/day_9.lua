day_9 = class({})

local courier_ability_list = {
    "courier_take_stash_items",
    "courier_go_to_secretshop",
    "courier_return_stash_items",
    "courier_transfer_items",
    "courier_take_stash_and_transfer_items",
}
local possible_abilities = {
    "abaddon_aphotic_shield",
"abaddon_borrowed_time",
"abaddon_death_coil",
"abaddon_frostmourne",
"abyssal_underlord_atrophy_aura",
"abyssal_underlord_dark_portal" ,
"abyssal_underlord_firestorm",
"abyssal_underlord_pit_of_malice",
"alchemist_acid_spray",
"alchemist_berserk_potion",
"alchemist_chemical_rage",
"ancient_apparition_chilling_touch",
"ancient_apparition_cold_feet",
"ancient_apparition_ice_vortex",
"antimage_blink",
"antimage_mana_break",
"antimage_mana_void",
"arc_warden_flux",
"arc_warden_magnetic_field",
"arc_warden_spark_wraith",
"axe_battle_hunger",
"axe_berserkers_call",
"axe_counter_helix",
"axe_culling_blade",
"bane_brain_sap",
"bane_enfeeble",
"bane_fiends_grip",
"batrider_firefly",
"batrider_flamebreak",
"batrider_flaming_lasso",
"batrider_sticky_napalm",
"beastmaster_inner_beast",
"beastmaster_primal_roar",
"beastmaster_wild_axes",
"bloodseeker_blood_bath",
"bloodseeker_blood_mist",
"bloodseeker_bloodrage",
"bloodseeker_rupture",
"bloodseeker_thirst",
"bounty_hunter_jinada",
"bounty_hunter_shuriken_toss",
"bounty_hunter_wind_walk",
"brewmaster_cinder_brew",
"brewmaster_drunken_brawler",
"brewmaster_thunder_clap",
"bristleback_bristleback",
"bristleback_quill_spray",
"bristleback_viscous_nasal_goo",
"bristleback_warpath",
"broodmother_insatiable_hunger",
"centaur_double_edge",
"centaur_hoof_stomp",
"centaur_mount",
"centaur_stampede",
"chaos_knight_chaos_bolt",
"chaos_knight_chaos_strike",
"chaos_knight_reality_rift",
"chen_divine_favor",
"chen_hand_of_god",
"chen_penitence",
"clinkz_searing_arrows",
"clinkz_strafe",
"clinkz_wind_walk",
"crystal_maiden_brilliance_aura",
"crystal_maiden_crystal_nova",
"crystal_maiden_frostbite",
"dark_seer_ion_shell",
"dark_seer_normal_punch",
"dark_seer_surge",
"dark_seer_vacuum",
"dark_seer_wall_of_replica",
"dark_willow_bedlam",
"dark_willow_bramble_maze",
"dark_willow_cursed_crown",
"dark_willow_shadow_realm",
"dark_willow_terrorize",
"dazzle_bad_juju",
"dazzle_good_juju",
"dazzle_poison_touch",
"dazzle_shadow_wave",
"dazzle_shallow_grave",
"death_prophet_carrion_swarm",
"death_prophet_exorcism",
"death_prophet_silence",
"death_prophet_spirit_siphon",
"disruptor_glimpse",
"disruptor_kinetic_field",
"disruptor_static_storm",
"disruptor_thunder_strike",
"doom_bringer_doom",
"doom_bringer_infernal_blade",
"doom_bringer_scorched_earth",
"dragon_knight_breathe_fire",
"dragon_knight_dragon_blood",
"dragon_knight_dragon_tail",
"dragon_knight_elder_dragon_form",
"dragon_knight_fireball",
"drow_ranger_frost_arrows",
"drow_ranger_multishot",
"drow_ranger_wave_of_silence",
"earth_spirit_petrify",
"earthshaker_aftershock",
"earthshaker_echo_slam",
"earthshaker_enchant_totem",
"earthshaker_fissure",
"elder_titan_earth_splitter",
"elder_titan_natural_order",
"ember_spirit_flame_guard",
"ember_spirit_searing_chains",
"ember_spirit_sleight_of_fist",
"enchantress_impetus",
"enchantress_little_friends",
"enchantress_natures_attendants",
"enchantress_untouchable",
"enigma_black_hole",
"enigma_demonic_conversion",
"enigma_malefice",
"enigma_midnight_pulse",
"faceless_void_chronosphere",
"faceless_void_time_dilation" ,
"faceless_void_time_lock",
"faceless_void_time_walk",
"furion_curse_of_the_forest",
"furion_force_of_nature",
"furion_sprout",
"furion_teleportation",
"furion_wrath_of_nature",
"gyrocopter_call_down",
"gyrocopter_flak_cannon",
"gyrocopter_homing_missile",
"gyrocopter_rocket_barrage",
"hoodwink_acorn_shot",
"hoodwink_bushwhack",
"hoodwink_decoy",
"hoodwink_hunters_boomerang",
"hoodwink_scurry",
"huskar_berserkers_blood",
"huskar_inner_fire",
"huskar_life_break",
"invoker_alacrity_ad",
"invoker_chaos_meteor_ad",
"invoker_cold_snap_ad",
"invoker_deafening_blast_ad",
"invoker_deafening_blast",
"invoker_emp_ad",
"invoker_forge_spirit_ad",
"invoker_ghost_walk_ad",
"invoker_ice_wall_ad",
"invoker_sun_strike_ad",
"invoker_tornado_ad",
"jakiro_dual_breath",
"jakiro_ice_path",
"jakiro_liquid_fire",
"jakiro_liquid_ice",
"jakiro_macropyre",
"juggernaut_blade_dance",
"juggernaut_blade_fury",
"juggernaut_healing_ward",
"juggernaut_omni_slash",
"keeper_of_the_light_blinding_light",
"keeper_of_the_light_chakra_magic",
"keeper_of_the_light_radiant_bind",
"keeper_of_the_light_recall",
"keeper_of_the_light_will_o_wisp",
"kunkka_ghostship",
"kunkka_tidal_wave",
"kunkka_tidebringer",
"kunkka_torrent",
"legion_commander_duel",
"legion_commander_moment_of_courage",
"legion_commander_overwhelming_odds",
"legion_commander_press_the_attack",
"leshrac_diabolic_edict",
"leshrac_greater_lightning_storm",
"leshrac_lightning_storm",
"leshrac_pulse_nova",
"leshrac_split_earth",
"lich_chain_frost",
"lich_frost_nova",
"lich_frost_shield",
"lich_sinister_gaze",
"life_stealer_ghoul_frenzy",
"life_stealer_open_wounds",
"life_stealer_rage",
"lina_dragon_slave",
"lina_fiery_soul",
"lina_flame_cloak",
"lina_laguna_blade",
"lina_light_strike_array",
"lion_finger_of_death",
"lion_impale",
"lion_mana_drain",
"lion_voodoo",
"lone_druid_savage_roar",
"luna_lucent_beam",
"luna_lunar_blessing",
"luna_moon_glaive",
"lycan_feral_impulse",
"lycan_howl",
"lycan_shapeshift",
"lycan_summon_wolves",
"magnataur_empower",
"magnataur_horn_toss",
"magnataur_reverse_polarity",
"magnataur_shockwave",
"magnataur_skewer",
"marci_companion_run",
"marci_grapple",
"marci_guardian",
"marci_unleash",
"mars_arena_of_blood",
"mars_bulwark",
"mars_gods_rebuke",
"mars_spear",
"medusa_mana_shield",
"medusa_mystic_snake",
"medusa_split_shot",
"medusa_stone_gaze",
"meepo_earthbind",
"meepo_petrify",
"meepo_ransack",
"mirana_arrow",
"mirana_invis",
"mirana_leap",
"mirana_starfall",
"monkey_king_boundless_strike",
"monkey_king_jingu_mastery",
"monkey_king_tree_dance",
"morphling_waveform",
"naga_siren_ensnare",
"naga_siren_reel_in",
"naga_siren_rip_tide",
"necrolyte_death_pulse",
"necrolyte_heartstopper_aura",
"necrolyte_reapers_scythe",
"necrolyte_sadist",
"nevermore_dark_lord",
"nevermore_necromastery",
"nevermore_shadowraze1",
"nevermore_shadowraze2",
"nevermore_shadowraze3",
"night_stalker_crippling_fear",
"night_stalker_darkness",
"night_stalker_hunter_in_the_night",
"night_stalker_void",
"nyx_assassin_impale",
"nyx_assassin_mana_burn",
"nyx_assassin_spiked_carapace",
"nyx_assassin_vendetta",
"obsidian_destroyer_arcane_orb",
"obsidian_destroyer_astral_imprisonment",
"obsidian_destroyer_equilibrium",
"obsidian_destroyer_sanity_eclipse",
"ogre_magi_bloodlust",
"ogre_magi_fireblast",
"ogre_magi_ignite",
"ogre_magi_unrefined_fireblast",
"omniknight_degen_aura",
"omniknight_guardian_angel",
"omniknight_hammer_of_purity",
"omniknight_martyr",
"omniknight_purification",
"oracle_false_promise",
"oracle_fates_edict",
"oracle_fortunes_end",
"oracle_purifying_flames",
"oracle_rain_of_destiny",
"pangolier_lucky_shot",
"pangolier_shield_crash",
"pangolier_swashbuckle",
"phantom_assassin_blur",
"phantom_assassin_coup_de_grace",
"phantom_assassin_fan_of_knives",
"phantom_assassin_phantom_strike",
"phantom_assassin_stifling_dagger",
"primal_beast_pulverize",
"primal_beast_rock_throw",
"primal_beast_trample",
"primal_beast_uproar",
"puck_dream_coil",
"puck_illusory_orb",
"puck_phase_shift",
"puck_waning_rift",
"pudge_dismember",
"pudge_flesh_heap",
"pudge_meat_hook",
"pudge_rot",
"pugna_decrepify",
"pugna_life_drain",
"pugna_nether_blast",
"pugna_nether_ward",
"queenofpain_blink",
"queenofpain_scream_of_pain",
"queenofpain_shadow_strike",
"queenofpain_sonic_wave",
"rattletrap_battery_assault",
"rattletrap_hookshot",
"rattletrap_jetpack",
"rattletrap_power_cogs",
"rattletrap_rocket_flare",
"razor_eye_of_the_storm",
"razor_plasma_field",
"razor_static_link",
"razor_unstable_current",
"riki_backstab",
"riki_blink_strike",
"riki_poison_dart",
"riki_smoke_screen",
"riki_tricks_of_the_trade",
"rubick_arcane_supremacy",
"rubick_fade_bolt",
"sandking_burrowstrike",
"sandking_caustic_finale",
"sandking_epicenter",
"sandking_sand_storm",
"shadow_demon_demonic_cleanse",
"shadow_demon_demonic_purge",
"shadow_demon_disruption",
"shadow_demon_disseminate",
"shadow_shaman_ether_shock",
"shadow_shaman_mass_serpent_ward",
"shadow_shaman_shackles",
"shadow_shaman_voodoo",
"shredder_flamethrower",
"shredder_reactive_armor",
"shredder_timber_chain",
"shredder_whirling_death",
"silencer_curse_of_the_silent",
"silencer_glaives_of_wisdom",
"silencer_global_silence",
"silencer_last_word",
"skeleton_king_hellfire_blast",
"skeleton_king_mortal_strike",
"skeleton_king_reincarnation",
"skeleton_king_vampiric_aura",
"skywrath_mage_ancient_seal",
"skywrath_mage_arcane_bolt",
"skywrath_mage_concussive_shot",
"skywrath_mage_mystic_flare",
"slardar_amplify_damage",
"slardar_bash",
"slardar_slithereen_crush",
"slardar_sprint",
"slark_dark_pact",
"slark_essence_shift",
"slark_pounce",
"slark_shadow_dance",
"snapfire_firesnap_cookie",
"snapfire_lil_shredder",
"snapfire_mortimer_kisses",
"snapfire_scatterblast",
"sniper_assassinate",
"sniper_concussive_grenade",
"sniper_headshot",
"sniper_shrapnel",
"sniper_take_aim",
"spectre_desolate",
"spectre_dispersion",
"spectre_spectral_dagger",
"spirit_breaker_bulldoze",
"spirit_breaker_charge_of_darkness",
"spirit_breaker_greater_bash",
"spirit_breaker_nether_strike",
"spirit_breaker_planar_pocket",
"storm_spirit_ball_lightning",
"storm_spirit_electric_vortex",
"storm_spirit_overload",
"storm_spirit_static_remnant",
"sven_gods_strength",
"sven_great_cleave",
"sven_storm_bolt",
"sven_warcry",
"techies_land_mines",
"techies_minefield_sign",
"techies_reactive_tazer",
"techies_sticky_bomb",
"techies_suicide",
"templar_assassin_meld",
"templar_assassin_psi_blades",
"templar_assassin_refraction",
"terrorblade_metamorphosis",
"terrorblade_reflection",
"terrorblade_sunder",
"terrorblade_terror_wave",
"tidehunter_anchor_smash",
"tidehunter_gush",
"tidehunter_kraken_shell",
"tidehunter_ravage",
"tinker_defense_matrix",
"tinker_heat_seeking_missile",
"tinker_laser",
"tinker_warp_grenade",
"tiny_avalanche",
"tiny_grow",
"tiny_toss",
"treant_leech_seed",
"treant_living_armor",
"treant_natures_grasp",
"treant_overgrowth",
"troll_warlord_battle_trance",
"troll_warlord_fervor",
"tusk_ice_shards",
"tusk_tag_team",
"tusk_walrus_kick",
"tusk_walrus_punch",
"undying_decay",
"undying_flesh_golem",
"undying_soul_rip",
"undying_tombstone",
"ursa_earthshock",
"ursa_enrage",
"ursa_fury_swipes",
"ursa_overpower",
"vengefulspirit_command_aura",
"vengefulspirit_magic_missile",
"vengefulspirit_nether_swap",
"vengefulspirit_wave_of_terror",
"venomancer_latent_poison",
"venomancer_poison_nova",
"venomancer_poison_sting",
"venomancer_venomous_gale",
"viper_corrosive_skin",
"viper_nethertoxin",
"viper_poison_attack",
"viper_viper_strike",
"visage_grave_chill",
"visage_gravekeepers_cloak",
"visage_silent_as_the_grave",
"void_spirit_aether_remnant",
"void_spirit_astral_step",
"void_spirit_dissimilate",
"void_spirit_resonant_pulse",
"warlock_fatal_bonds",
"warlock_rain_of_chaos",
"warlock_shadow_word",
"warlock_upheaval",
"weaver_geminate_attack",
"weaver_shukuchi",
"weaver_the_swarm",
"windrunner_focusfire",
"windrunner_gale_force",
"windrunner_powershot",
"windrunner_shackleshot",
"windrunner_windrun",
"winter_wyvern_arctic_burn",
"winter_wyvern_cold_embrace",
"winter_wyvern_splinter_blast",
"winter_wyvern_winters_curse",
"wisp_relocate",
"witch_doctor_death_ward",
"witch_doctor_maledict",
"witch_doctor_paralyzing_cask",
"witch_doctor_voodoo_restoration",
"zuus_arc_lightning",
"zuus_heavenly_jump",
"zuus_lightning_bolt",
"zuus_static_field",
"zuus_thundergods_wrath"
}
--function day_9:GetTexture() return "kumamoto" end
function day_9:IsPermanent() return true end
function day_9:RemoveOnDeath() return false end
function day_9:IsHidden() return true end
function day_9:IsDebuff() return false end
function day_9:IsPurgable() return false end
function day_9:IsPurgeException() return false end
function day_9:GetAttributes()
	return  MODIFIER_ATTRIBUTE_PERMANENT + MODIFIER_ATTRIBUTE_IGNORE_INVULNERABLE
end

function day_9:DeclareFunctions()
	local funcs = {
        MODIFIER_PROPERTY_EXTRA_HEALTH_BONUS,
        MODIFIER_PROPERTY_EXTRA_MANA_BONUS,
        MODIFIER_PROPERTY_MANA_REGEN_CONSTANT,
        MODIFIER_PROPERTY_ATTACK_RANGE_BASE_OVERRIDE,
        MODIFIER_PROPERTY_BASEATTACK_BONUSDAMAGE,
	}
	return funcs
end

function day_9:GetModifierConstantManaRegen()
    return 2.5
end

function day_9:GetModifierExtraHealthBonus()
    return 1000
end
function day_9:GetModifierExtraManaBonus()
    return 500
end

function seed(sSeed)
    local c = ""
    for i = 1, #sSeed do
        c = c .. string.byte(string.sub(sSeed,i,i))
    end
    math.randomseed(tonumber(c))
end

function table.contains(table, element)
    for _, value in pairs(table) do
        if value == element then
            return true
            end
        end
    return false
end
function day_9:OnCreated(kv)
    if not IsServer() then return end
    local hParent = self:GetParent()
    local added_abilities = {}
    local model = hParent:GetModelName()
    seed(model)
    for i=1,4 do
        local j = math.floor(math.random(1,#possible_abilities))
        if j == 0 then j = #possible_abilities end
        while(table.contains(added_abilities,possible_abilities[j])) do
            j = math.floor(math.random(1,#possible_abilities))
            if j == 0 then j = #possible_abilities end
        end
        added_abilities[i] = possible_abilities[j]
        print(added_abilities[i])
    end
    for i = 1,#added_abilities do
		local a = hParent:AddAbility(added_abilities[i])
		a:SetLevel(a:GetMaxLevel())
        if i < #courier_ability_list then
            local b = hParent:FindAbilityByName(courier_ability_list[i])
            hParent:SwapAbilities(added_abilities[i],courier_ability_list[i],true,true)
            b:SetHidden(true)
        end
    end
    hParent:SetAttackCapability(DOTA_UNIT_CAP_MELEE_ATTACK)
    self:StartIntervalThink(20)
end
function day_9:OnIntervalThink()
    if not IsServer() then return end
    local hParent = self:GetParent()
    hParent:SetAttackCapability(DOTA_UNIT_CAP_MELEE_ATTACK)
end

function day_9:GetModifierAttackRangeOverride()
    return 150
end

function day_9:GetModifierBaseAttack_BonusDamage()
    return 68
end