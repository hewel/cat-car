-- CreateTable
CREATE TABLE "armor" (
    "id" SERIAL NOT NULL,
    "order_id" INTEGER,
    "rarity" INTEGER,
    "rank" TEXT,
    "armor_type" TEXT,
    "armorset_id" INTEGER,
    "armorset_bonus_id" INTEGER,
    "recipe_id" INTEGER,
    "male" BOOLEAN,
    "female" BOOLEAN,
    "slot_1" INTEGER,
    "slot_2" INTEGER,
    "slot_3" INTEGER,
    "defense_base" INTEGER,
    "defense_max" INTEGER,
    "defense_augment_max" INTEGER,
    "fire" INTEGER,
    "water" INTEGER,
    "thunder" INTEGER,
    "ice" INTEGER,
    "dragon" INTEGER,

    PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "armor_skill" (
    "armor_id" INTEGER NOT NULL,
    "skilltree_id" INTEGER NOT NULL,
    "level" INTEGER,

    PRIMARY KEY ("armor_id","skilltree_id")
);

-- CreateTable
CREATE TABLE "armor_text" (
    "id" INTEGER NOT NULL,
    "lang_id" TEXT NOT NULL,
    "name" TEXT,

    PRIMARY KEY ("id","lang_id")
);

-- CreateTable
CREATE TABLE "armorset" (
    "id" SERIAL NOT NULL,
    "rank" TEXT,
    "monster_id" INTEGER,
    "armorset_bonus_id" INTEGER,

    PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "armorset_bonus_skill" (
    "setbonus_id" INTEGER NOT NULL,
    "skilltree_id" INTEGER NOT NULL,
    "required" INTEGER,

    PRIMARY KEY ("setbonus_id","skilltree_id")
);

-- CreateTable
CREATE TABLE "armorset_bonus_text" (
    "id" INTEGER NOT NULL,
    "lang_id" TEXT NOT NULL,
    "name" TEXT,
    "description" TEXT,

    PRIMARY KEY ("id","lang_id")
);

-- CreateTable
CREATE TABLE "armorset_text" (
    "id" INTEGER NOT NULL,
    "lang_id" TEXT NOT NULL,
    "name" TEXT,

    PRIMARY KEY ("id","lang_id")
);

-- CreateTable
CREATE TABLE "charm" (
    "id" SERIAL NOT NULL,
    "order_id" INTEGER,
    "rarity" INTEGER,
    "previous_id" INTEGER,
    "recipe_id" INTEGER,

    PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "charm_skill" (
    "charm_id" INTEGER NOT NULL,
    "skilltree_id" INTEGER NOT NULL,
    "level" INTEGER,

    PRIMARY KEY ("charm_id","skilltree_id")
);

-- CreateTable
CREATE TABLE "charm_text" (
    "id" INTEGER NOT NULL,
    "lang_id" TEXT NOT NULL,
    "name" TEXT,
    "description" TEXT,

    PRIMARY KEY ("id","lang_id")
);

-- CreateTable
CREATE TABLE "decoration" (
    "id" SERIAL NOT NULL,
    "slot" INTEGER,
    "rarity" INTEGER,
    "icon_color" TEXT,
    "skilltree_id" INTEGER NOT NULL,
    "skilltree_level" INTEGER NOT NULL,
    "skilltree2_id" INTEGER,
    "skilltree2_level" INTEGER,
    "mysterious_feystone_percent" DOUBLE PRECISION,
    "glowing_feystone_percent" DOUBLE PRECISION,
    "worn_feystone_percent" DOUBLE PRECISION,
    "warped_feystone_percent" DOUBLE PRECISION,
    "ancient_feystone_percent" DOUBLE PRECISION,
    "carved_feystone_percent" DOUBLE PRECISION,
    "sealed_feystone_percent" DOUBLE PRECISION,

    PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "decoration_text" (
    "id" INTEGER NOT NULL,
    "lang_id" TEXT NOT NULL,
    "name" TEXT,

    PRIMARY KEY ("id","lang_id")
);

-- CreateTable
CREATE TABLE "item" (
    "id" SERIAL NOT NULL,
    "category" TEXT,
    "subcategory" TEXT,
    "rarity" INTEGER,
    "buy_price" INTEGER,
    "sell_price" INTEGER,
    "carry_limit" INTEGER,
    "points" INTEGER,
    "icon_name" TEXT,
    "icon_color" TEXT,

    PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "item_combination" (
    "id" SERIAL NOT NULL,
    "result_id" INTEGER,
    "first_id" INTEGER,
    "second_id" INTEGER,
    "quantity" INTEGER,

    PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "item_text" (
    "id" INTEGER NOT NULL,
    "lang_id" TEXT NOT NULL,
    "name" TEXT,
    "description" TEXT,

    PRIMARY KEY ("id","lang_id")
);

-- CreateTable
CREATE TABLE "kinsect" (
    "id" SERIAL NOT NULL,
    "rarity" INTEGER,
    "previous_kinsect_id" INTEGER,
    "recipe_id" INTEGER,
    "attack_type" TEXT,
    "dust_effect" TEXT,
    "power" INTEGER,
    "speed" INTEGER,
    "heal" INTEGER,
    "final" BOOLEAN,

    PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "kinsect_text" (
    "id" INTEGER NOT NULL,
    "lang_id" TEXT NOT NULL,
    "name" TEXT,

    PRIMARY KEY ("id","lang_id")
);

-- CreateTable
CREATE TABLE "language" (
    "id" TEXT NOT NULL,
    "name" TEXT,
    "is_complete" TEXT,

    PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "location_camp_text" (
    "id" SERIAL NOT NULL,
    "location_id" INTEGER,
    "lang_id" TEXT,
    "name" TEXT,
    "area" INTEGER,

    PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "location_item" (
    "id" SERIAL NOT NULL,
    "location_id" INTEGER,
    "area" INTEGER,
    "rank" TEXT,
    "item_id" INTEGER,
    "stack" INTEGER,
    "percentage" INTEGER,
    "nodes" INTEGER NOT NULL,

    PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "location_text" (
    "id" INTEGER NOT NULL,
    "order_id" INTEGER,
    "lang_id" TEXT NOT NULL,
    "name" TEXT,

    PRIMARY KEY ("id","lang_id")
);

-- CreateTable
CREATE TABLE "TextOnLocation" (
    "id" INTEGER NOT NULL,
    "locationId" INTEGER NOT NULL,
    "langId" TEXT NOT NULL,

    PRIMARY KEY ("id","locationId","langId")
);

-- CreateTable
CREATE TABLE "TextOnHabitat" (
    "habitatId" INTEGER NOT NULL,
    "locationId" INTEGER NOT NULL,
    "langId" TEXT NOT NULL,

    PRIMARY KEY ("habitatId","locationId","langId")
);

-- CreateTable
CREATE TABLE "monster" (
    "id" SERIAL NOT NULL,
    "order_id" INTEGER,
    "size" TEXT,
    "icon" TEXT,
    "pitfall_trap" BOOLEAN,
    "shock_trap" BOOLEAN,
    "vine_trap" BOOLEAN,
    "has_weakness" BOOLEAN,
    "has_alt_weakness" BOOLEAN,
    "weakness_fire" INTEGER,
    "weakness_water" INTEGER,
    "weakness_ice" INTEGER,
    "weakness_thunder" INTEGER,
    "weakness_dragon" INTEGER,
    "weakness_poison" INTEGER,
    "weakness_sleep" INTEGER,
    "weakness_paralysis" INTEGER,
    "weakness_blast" INTEGER,
    "weakness_stun" INTEGER,
    "alt_weakness_fire" INTEGER,
    "alt_weakness_water" INTEGER,
    "alt_weakness_ice" INTEGER,
    "alt_weakness_thunder" INTEGER,
    "alt_weakness_dragon" INTEGER,
    "alt_weakness_poison" INTEGER,
    "alt_weakness_sleep" INTEGER,
    "alt_weakness_paralysis" INTEGER,
    "alt_weakness_blast" INTEGER,
    "alt_weakness_stun" INTEGER,
    "ailment_roar" TEXT,
    "ailment_wind" TEXT,
    "ailment_tremor" TEXT,
    "ailment_defensedown" BOOLEAN,
    "ailment_fireblight" BOOLEAN,
    "ailment_waterblight" BOOLEAN,
    "ailment_thunderblight" BOOLEAN,
    "ailment_iceblight" BOOLEAN,
    "ailment_dragonblight" BOOLEAN,
    "ailment_blastblight" BOOLEAN,
    "ailment_regional" BOOLEAN,
    "ailment_poison" BOOLEAN,
    "ailment_sleep" BOOLEAN,
    "ailment_paralysis" BOOLEAN,
    "ailment_bleed" BOOLEAN,
    "ailment_stun" BOOLEAN,
    "ailment_mud" BOOLEAN,
    "ailment_effluvia" BOOLEAN,

    PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "monster_break" (
    "id" SERIAL NOT NULL,
    "monster_id" INTEGER,
    "flinch" INTEGER,
    "wound" INTEGER,
    "sever" INTEGER,
    "extract" TEXT,

    PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "monster_break_text" (
    "id" INTEGER NOT NULL,
    "lang_id" TEXT NOT NULL,
    "part_name" TEXT,

    PRIMARY KEY ("id","lang_id")
);

-- CreateTable
CREATE TABLE "monster_habitat" (
    "id" SERIAL NOT NULL,
    "monster_id" INTEGER,
    "location_id" INTEGER,
    "start_area" TEXT,
    "move_area" TEXT,
    "rest_area" TEXT,

    PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "monster_hitzone" (
    "id" SERIAL NOT NULL,
    "monster_id" INTEGER,
    "cut" INTEGER,
    "impact" INTEGER,
    "shot" INTEGER,
    "fire" INTEGER,
    "water" INTEGER,
    "ice" INTEGER,
    "thunder" INTEGER,
    "dragon" INTEGER,
    "ko" INTEGER,

    PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "monster_hitzone_text" (
    "id" INTEGER NOT NULL,
    "lang_id" TEXT NOT NULL,
    "name" TEXT,

    PRIMARY KEY ("id","lang_id")
);

-- CreateTable
CREATE TABLE "monster_reward" (
    "id" SERIAL NOT NULL,
    "monster_id" INTEGER,
    "condition_id" INTEGER,
    "rank" TEXT,
    "item_id" INTEGER,
    "stack" INTEGER,
    "percentage" INTEGER,

    PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "monster_reward_condition_text" (
    "id" INTEGER NOT NULL,
    "lang_id" TEXT NOT NULL,
    "name" TEXT,

    PRIMARY KEY ("id","lang_id")
);

-- CreateTable
CREATE TABLE "ConditionOnMosterReward" (
    "mosterRewardId" INTEGER NOT NULL,
    "conditionId" INTEGER NOT NULL,
    "langId" TEXT NOT NULL,

    PRIMARY KEY ("mosterRewardId","conditionId","langId")
);

-- CreateTable
CREATE TABLE "monster_text" (
    "id" INTEGER NOT NULL,
    "lang_id" TEXT NOT NULL,
    "name" TEXT,
    "ecology" TEXT,
    "description" TEXT,
    "alt_state_description" TEXT,

    PRIMARY KEY ("id","lang_id")
);

-- CreateTable
CREATE TABLE "quest" (
    "id" SERIAL NOT NULL,
    "order_id" INTEGER,
    "category" TEXT,
    "rank" TEXT,
    "stars" INTEGER,
    "stars_raw" INTEGER,
    "quest_type" TEXT,
    "location_id" INTEGER,
    "zenny" INTEGER,

    PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "LocationTextOnQuest" (
    "questId" INTEGER NOT NULL,
    "locationId" INTEGER NOT NULL,
    "langId" TEXT NOT NULL,

    PRIMARY KEY ("questId","locationId","langId")
);

-- CreateTable
CREATE TABLE "quest_monster" (
    "quest_id" INTEGER NOT NULL,
    "monster_id" INTEGER NOT NULL,
    "quantity" INTEGER,
    "is_objective" BOOLEAN,

    PRIMARY KEY ("quest_id","monster_id")
);

-- CreateTable
CREATE TABLE "quest_reward" (
    "id" SERIAL NOT NULL,
    "quest_id" INTEGER,
    "group" TEXT,
    "item_id" INTEGER,
    "stack" INTEGER,
    "percentage" INTEGER,

    PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "quest_text" (
    "id" INTEGER NOT NULL,
    "lang_id" TEXT NOT NULL,
    "name" TEXT,
    "objective" TEXT,
    "description" TEXT,

    PRIMARY KEY ("id","lang_id")
);

-- CreateTable
CREATE TABLE "recipe_item" (
    "recipe_id" INTEGER NOT NULL,
    "item_id" INTEGER NOT NULL,
    "quantity" INTEGER,

    PRIMARY KEY ("recipe_id","item_id")
);

-- CreateTable
CREATE TABLE "RecipeOnArmor" (
    "armorId" INTEGER NOT NULL,
    "recipeId" INTEGER NOT NULL,
    "itemId" INTEGER NOT NULL,

    PRIMARY KEY ("armorId","recipeId")
);

-- CreateTable
CREATE TABLE "RecipeOnCharm" (
    "charmId" INTEGER NOT NULL,
    "recipeId" INTEGER NOT NULL,
    "itemId" INTEGER NOT NULL,

    PRIMARY KEY ("charmId","recipeId")
);

-- CreateTable
CREATE TABLE "RecipeOnKinsect" (
    "kinsectId" INTEGER NOT NULL,
    "recipeId" INTEGER NOT NULL,
    "itemId" INTEGER NOT NULL,

    PRIMARY KEY ("kinsectId","recipeId")
);

-- CreateTable
CREATE TABLE "skill" (
    "skilltree_id" INTEGER NOT NULL,
    "lang_id" TEXT NOT NULL,
    "level" INTEGER NOT NULL,
    "description" TEXT,

    PRIMARY KEY ("skilltree_id","lang_id","level")
);

-- CreateTable
CREATE TABLE "skilltree" (
    "id" SERIAL NOT NULL,
    "max_level" INTEGER,
    "icon_color" TEXT,
    "secret" INTEGER,
    "unlocks_id" INTEGER,

    PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "skilltree_text" (
    "id" INTEGER NOT NULL,
    "lang_id" TEXT NOT NULL,
    "name" TEXT,
    "description" TEXT,

    PRIMARY KEY ("id","lang_id")
);

-- CreateTable
CREATE TABLE "tool" (
    "id" SERIAL NOT NULL,
    "order_id" INTEGER,
    "tool_type" TEXT,
    "duration" INTEGER,
    "duration_upgraded" INTEGER,
    "recharge" INTEGER,
    "slot_1" INTEGER,
    "slot_2" INTEGER,
    "slot_3" INTEGER,
    "icon_color" TEXT,

    PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "tool_text" (
    "id" INTEGER NOT NULL,
    "lang_id" TEXT NOT NULL,
    "name" TEXT,
    "name_base" TEXT,
    "description" TEXT,

    PRIMARY KEY ("id","lang_id")
);

-- CreateTable
CREATE TABLE "weapon" (
    "id" SERIAL NOT NULL,
    "order_id" INTEGER,
    "weapon_type" TEXT,
    "rarity" INTEGER,
    "category" TEXT,
    "previous_weapon_id" INTEGER,
    "create_recipe_id" INTEGER,
    "upgrade_recipe_id" INTEGER,
    "attack" INTEGER,
    "attack_true" INTEGER,
    "affinity" INTEGER,
    "defense" INTEGER,
    "slot_1" INTEGER,
    "slot_2" INTEGER,
    "slot_3" INTEGER,
    "element1" TEXT,
    "element1_attack" INTEGER,
    "element2" TEXT,
    "element2_attack" INTEGER,
    "element_hidden" BOOLEAN,
    "elderseal" TEXT,
    "sharpness" TEXT,
    "sharpness_maxed" BOOLEAN,
    "craftable" BOOLEAN,
    "final" BOOLEAN,
    "kinsect_bonus" TEXT,
    "phial" TEXT,
    "phial_power" INTEGER,
    "shelling" TEXT,
    "shelling_level" INTEGER,
    "notes" TEXT,
    "coating_close" INTEGER,
    "coating_power" INTEGER,
    "coating_paralysis" INTEGER,
    "coating_poison" INTEGER,
    "coating_sleep" INTEGER,
    "coating_blast" INTEGER,
    "ammo_id" INTEGER,
    "armorset_bonus_id" INTEGER,

    PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CreateRecipeOnWeapon" (
    "weaponId" INTEGER NOT NULL,
    "recipeId" INTEGER NOT NULL,
    "itemId" INTEGER NOT NULL,

    PRIMARY KEY ("weaponId","recipeId")
);

-- CreateTable
CREATE TABLE "UpgradeRecipeOnWeapon" (
    "weaponId" INTEGER NOT NULL,
    "recipeId" INTEGER NOT NULL,
    "itemId" INTEGER NOT NULL,

    PRIMARY KEY ("weaponId","recipeId")
);

-- CreateTable
CREATE TABLE "weapon_ammo" (
    "id" SERIAL NOT NULL,
    "deviation" TEXT,
    "special_ammo" TEXT,
    "normal1_clip" INTEGER,
    "normal1_rapid" BOOLEAN,
    "normal1_recoil" INTEGER,
    "normal1_reload" TEXT,
    "normal2_clip" INTEGER,
    "normal2_rapid" BOOLEAN,
    "normal2_recoil" INTEGER,
    "normal2_reload" TEXT,
    "normal3_clip" INTEGER,
    "normal3_rapid" BOOLEAN,
    "normal3_recoil" INTEGER,
    "normal3_reload" TEXT,
    "pierce1_clip" INTEGER,
    "pierce1_rapid" BOOLEAN,
    "pierce1_recoil" INTEGER,
    "pierce1_reload" TEXT,
    "pierce2_clip" INTEGER,
    "pierce2_rapid" BOOLEAN,
    "pierce2_recoil" INTEGER,
    "pierce2_reload" TEXT,
    "pierce3_clip" INTEGER,
    "pierce3_rapid" BOOLEAN,
    "pierce3_recoil" INTEGER,
    "pierce3_reload" TEXT,
    "spread1_clip" INTEGER,
    "spread1_rapid" BOOLEAN,
    "spread1_recoil" INTEGER,
    "spread1_reload" TEXT,
    "spread2_clip" INTEGER,
    "spread2_rapid" BOOLEAN,
    "spread2_recoil" INTEGER,
    "spread2_reload" TEXT,
    "spread3_clip" INTEGER,
    "spread3_rapid" BOOLEAN,
    "spread3_recoil" INTEGER,
    "spread3_reload" TEXT,
    "sticky1_clip" INTEGER,
    "sticky1_rapid" BOOLEAN,
    "sticky1_recoil" INTEGER,
    "sticky1_reload" TEXT,
    "sticky2_clip" INTEGER,
    "sticky2_rapid" BOOLEAN,
    "sticky2_recoil" INTEGER,
    "sticky2_reload" TEXT,
    "sticky3_clip" INTEGER,
    "sticky3_rapid" BOOLEAN,
    "sticky3_recoil" INTEGER,
    "sticky3_reload" TEXT,
    "cluster1_clip" INTEGER,
    "cluster1_rapid" BOOLEAN,
    "cluster1_recoil" INTEGER,
    "cluster1_reload" TEXT,
    "cluster2_clip" INTEGER,
    "cluster2_rapid" BOOLEAN,
    "cluster2_recoil" INTEGER,
    "cluster2_reload" TEXT,
    "cluster3_clip" INTEGER,
    "cluster3_rapid" BOOLEAN,
    "cluster3_recoil" INTEGER,
    "cluster3_reload" TEXT,
    "recover1_clip" INTEGER,
    "recover1_rapid" BOOLEAN,
    "recover1_recoil" INTEGER,
    "recover1_reload" TEXT,
    "recover2_clip" INTEGER,
    "recover2_rapid" BOOLEAN,
    "recover2_recoil" INTEGER,
    "recover2_reload" TEXT,
    "poison1_clip" INTEGER,
    "poison1_rapid" BOOLEAN,
    "poison1_recoil" INTEGER,
    "poison1_reload" TEXT,
    "poison2_clip" INTEGER,
    "poison2_rapid" BOOLEAN,
    "poison2_recoil" INTEGER,
    "poison2_reload" TEXT,
    "paralysis1_clip" INTEGER,
    "paralysis1_rapid" BOOLEAN,
    "paralysis1_recoil" INTEGER,
    "paralysis1_reload" TEXT,
    "paralysis2_clip" INTEGER,
    "paralysis2_rapid" BOOLEAN,
    "paralysis2_recoil" INTEGER,
    "paralysis2_reload" TEXT,
    "sleep1_clip" INTEGER,
    "sleep1_rapid" BOOLEAN,
    "sleep1_recoil" INTEGER,
    "sleep1_reload" TEXT,
    "sleep2_clip" INTEGER,
    "sleep2_rapid" BOOLEAN,
    "sleep2_recoil" INTEGER,
    "sleep2_reload" TEXT,
    "exhaust1_clip" INTEGER,
    "exhaust1_rapid" BOOLEAN,
    "exhaust1_recoil" INTEGER,
    "exhaust1_reload" TEXT,
    "exhaust2_clip" INTEGER,
    "exhaust2_rapid" BOOLEAN,
    "exhaust2_recoil" INTEGER,
    "exhaust2_reload" TEXT,
    "flaming_clip" INTEGER,
    "flaming_rapid" BOOLEAN,
    "flaming_recoil" INTEGER,
    "flaming_reload" TEXT,
    "water_clip" INTEGER,
    "water_rapid" BOOLEAN,
    "water_recoil" INTEGER,
    "water_reload" TEXT,
    "freeze_clip" INTEGER,
    "freeze_rapid" BOOLEAN,
    "freeze_recoil" INTEGER,
    "freeze_reload" TEXT,
    "thunder_clip" INTEGER,
    "thunder_rapid" BOOLEAN,
    "thunder_recoil" INTEGER,
    "thunder_reload" TEXT,
    "dragon_clip" INTEGER,
    "dragon_rapid" BOOLEAN,
    "dragon_recoil" INTEGER,
    "dragon_reload" TEXT,
    "slicing_clip" INTEGER,
    "slicing_rapid" BOOLEAN,
    "slicing_recoil" INTEGER,
    "slicing_reload" TEXT,
    "wyvern_clip" INTEGER,
    "wyvern_reload" TEXT,
    "demon_clip" INTEGER,
    "demon_recoil" INTEGER,
    "demon_reload" TEXT,
    "armor_clip" INTEGER,
    "armor_recoil" INTEGER,
    "armor_reload" TEXT,
    "tranq_clip" INTEGER,
    "tranq_recoil" INTEGER,
    "tranq_reload" TEXT,

    PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "weapon_melody" (
    "id" SERIAL NOT NULL,
    "base_duration" INTEGER,
    "base_extension" INTEGER,
    "m1_duration" INTEGER,
    "m1_extension" INTEGER,
    "m2_duration" INTEGER,
    "m2_extension" INTEGER,

    PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "weapon_melody_notes" (
    "id" INTEGER NOT NULL,
    "notes" TEXT NOT NULL,

    PRIMARY KEY ("id","notes")
);

-- CreateTable
CREATE TABLE "weapon_melody_text" (
    "id" INTEGER NOT NULL,
    "lang_id" TEXT NOT NULL,
    "name" TEXT,
    "effect1" TEXT,
    "effect2" TEXT,

    PRIMARY KEY ("id","lang_id")
);

-- CreateTable
CREATE TABLE "weapon_skill" (
    "weapon_id" INTEGER NOT NULL,
    "skilltree_id" INTEGER NOT NULL,
    "level" INTEGER,

    PRIMARY KEY ("weapon_id","skilltree_id")
);

-- CreateTable
CREATE TABLE "weapon_text" (
    "id" INTEGER NOT NULL,
    "lang_id" TEXT NOT NULL,
    "name" TEXT,

    PRIMARY KEY ("id","lang_id")
);

-- CreateIndex
CREATE INDEX "ix_location_item_item_id" ON "location_item"("item_id");

-- CreateIndex
CREATE UNIQUE INDEX "monster.order_id_unique" ON "monster"("order_id");

-- CreateIndex
CREATE INDEX "ix_monster_break_monster_id" ON "monster_break"("monster_id");

-- CreateIndex
CREATE UNIQUE INDEX "sqlite_autoindex_monster_habitat_1" ON "monster_habitat"("monster_id", "location_id");

-- CreateIndex
CREATE INDEX "ix_monster_habitat_location_id" ON "monster_habitat"("location_id");

-- CreateIndex
CREATE INDEX "ix_monster_habitat_monster_id" ON "monster_habitat"("monster_id");

-- CreateIndex
CREATE INDEX "ix_monster_hitzone_monster_id" ON "monster_hitzone"("monster_id");

-- CreateIndex
CREATE INDEX "ix_monster_reward_item_id" ON "monster_reward"("item_id");

-- CreateIndex
CREATE INDEX "ix_monster_reward_monster_id" ON "monster_reward"("monster_id");

-- CreateIndex
CREATE INDEX "ix_quest_reward_quest_id" ON "quest_reward"("quest_id");

-- CreateIndex
CREATE INDEX "ix_quest_reward_item_id" ON "quest_reward"("item_id");

-- AddForeignKey
ALTER TABLE "armor" ADD FOREIGN KEY ("armorset_id") REFERENCES "armorset"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "armor_skill" ADD FOREIGN KEY ("armor_id") REFERENCES "armor"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "armor_skill" ADD FOREIGN KEY ("skilltree_id") REFERENCES "skilltree"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "armor_text" ADD FOREIGN KEY ("id") REFERENCES "armor"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "armor_text" ADD FOREIGN KEY ("lang_id") REFERENCES "language"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "armorset" ADD FOREIGN KEY ("monster_id") REFERENCES "monster"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "armorset_bonus_skill" ADD FOREIGN KEY ("skilltree_id") REFERENCES "skilltree"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "armorset_bonus_text" ADD FOREIGN KEY ("lang_id") REFERENCES "language"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "armorset_text" ADD FOREIGN KEY ("id") REFERENCES "armorset"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "armorset_text" ADD FOREIGN KEY ("lang_id") REFERENCES "language"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "charm" ADD FOREIGN KEY ("previous_id") REFERENCES "charm"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "charm_skill" ADD FOREIGN KEY ("charm_id") REFERENCES "charm"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "charm_skill" ADD FOREIGN KEY ("skilltree_id") REFERENCES "skilltree"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "charm_text" ADD FOREIGN KEY ("id") REFERENCES "charm"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "charm_text" ADD FOREIGN KEY ("lang_id") REFERENCES "language"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "decoration" ADD FOREIGN KEY ("skilltree2_id") REFERENCES "skilltree"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "decoration" ADD FOREIGN KEY ("skilltree_id") REFERENCES "skilltree"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "decoration_text" ADD FOREIGN KEY ("id") REFERENCES "decoration"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "decoration_text" ADD FOREIGN KEY ("lang_id") REFERENCES "language"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "item_combination" ADD FOREIGN KEY ("first_id") REFERENCES "item"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "item_combination" ADD FOREIGN KEY ("result_id") REFERENCES "item"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "item_combination" ADD FOREIGN KEY ("second_id") REFERENCES "item"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "item_text" ADD FOREIGN KEY ("id") REFERENCES "item"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "item_text" ADD FOREIGN KEY ("lang_id") REFERENCES "language"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "kinsect" ADD FOREIGN KEY ("previous_kinsect_id") REFERENCES "kinsect"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "kinsect_text" ADD FOREIGN KEY ("id") REFERENCES "kinsect"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "kinsect_text" ADD FOREIGN KEY ("lang_id") REFERENCES "language"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "location_camp_text" ADD FOREIGN KEY ("lang_id") REFERENCES "language"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "location_camp_text" ADD FOREIGN KEY ("location_id", "lang_id") REFERENCES "location_text"("id", "lang_id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "location_item" ADD FOREIGN KEY ("item_id") REFERENCES "item"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "location_text" ADD FOREIGN KEY ("lang_id") REFERENCES "language"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "TextOnLocation" ADD FOREIGN KEY ("id") REFERENCES "location_item"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "TextOnLocation" ADD FOREIGN KEY ("locationId", "langId") REFERENCES "location_text"("id", "lang_id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "TextOnHabitat" ADD FOREIGN KEY ("habitatId") REFERENCES "monster_habitat"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "TextOnHabitat" ADD FOREIGN KEY ("locationId", "langId") REFERENCES "location_text"("id", "lang_id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "monster_break" ADD FOREIGN KEY ("monster_id") REFERENCES "monster"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "monster_break_text" ADD FOREIGN KEY ("id") REFERENCES "monster_break"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "monster_break_text" ADD FOREIGN KEY ("lang_id") REFERENCES "language"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "monster_habitat" ADD FOREIGN KEY ("monster_id") REFERENCES "monster"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "monster_hitzone" ADD FOREIGN KEY ("monster_id") REFERENCES "monster"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "monster_hitzone_text" ADD FOREIGN KEY ("id") REFERENCES "monster_hitzone"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "monster_hitzone_text" ADD FOREIGN KEY ("lang_id") REFERENCES "language"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "monster_reward" ADD FOREIGN KEY ("item_id") REFERENCES "item"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "monster_reward" ADD FOREIGN KEY ("monster_id") REFERENCES "monster"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "monster_reward_condition_text" ADD FOREIGN KEY ("lang_id") REFERENCES "language"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ConditionOnMosterReward" ADD FOREIGN KEY ("mosterRewardId") REFERENCES "monster_reward"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ConditionOnMosterReward" ADD FOREIGN KEY ("conditionId", "langId") REFERENCES "monster_reward_condition_text"("id", "lang_id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "monster_text" ADD FOREIGN KEY ("id") REFERENCES "monster"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "monster_text" ADD FOREIGN KEY ("lang_id") REFERENCES "language"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "LocationTextOnQuest" ADD FOREIGN KEY ("questId") REFERENCES "quest"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "LocationTextOnQuest" ADD FOREIGN KEY ("locationId", "langId") REFERENCES "location_text"("id", "lang_id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "quest_monster" ADD FOREIGN KEY ("monster_id") REFERENCES "monster"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "quest_monster" ADD FOREIGN KEY ("quest_id") REFERENCES "quest"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "quest_reward" ADD FOREIGN KEY ("item_id") REFERENCES "item"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "quest_reward" ADD FOREIGN KEY ("quest_id") REFERENCES "quest"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "quest_text" ADD FOREIGN KEY ("id") REFERENCES "quest"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "quest_text" ADD FOREIGN KEY ("lang_id") REFERENCES "language"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "recipe_item" ADD FOREIGN KEY ("item_id") REFERENCES "item"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "RecipeOnArmor" ADD FOREIGN KEY ("armorId") REFERENCES "armor"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "RecipeOnArmor" ADD FOREIGN KEY ("recipeId", "itemId") REFERENCES "recipe_item"("recipe_id", "item_id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "RecipeOnCharm" ADD FOREIGN KEY ("charmId") REFERENCES "charm"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "RecipeOnCharm" ADD FOREIGN KEY ("recipeId", "itemId") REFERENCES "recipe_item"("recipe_id", "item_id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "RecipeOnKinsect" ADD FOREIGN KEY ("kinsectId") REFERENCES "kinsect"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "RecipeOnKinsect" ADD FOREIGN KEY ("recipeId", "itemId") REFERENCES "recipe_item"("recipe_id", "item_id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "skill" ADD FOREIGN KEY ("lang_id") REFERENCES "language"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "skill" ADD FOREIGN KEY ("skilltree_id") REFERENCES "skilltree"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "skilltree" ADD FOREIGN KEY ("unlocks_id") REFERENCES "skilltree"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "skilltree_text" ADD FOREIGN KEY ("id") REFERENCES "skilltree"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "skilltree_text" ADD FOREIGN KEY ("lang_id") REFERENCES "language"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "tool_text" ADD FOREIGN KEY ("id") REFERENCES "tool"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "tool_text" ADD FOREIGN KEY ("lang_id") REFERENCES "language"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "weapon" ADD FOREIGN KEY ("ammo_id") REFERENCES "weapon_ammo"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "weapon" ADD FOREIGN KEY ("previous_weapon_id") REFERENCES "weapon"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "CreateRecipeOnWeapon" ADD FOREIGN KEY ("weaponId") REFERENCES "weapon"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "CreateRecipeOnWeapon" ADD FOREIGN KEY ("recipeId", "itemId") REFERENCES "recipe_item"("recipe_id", "item_id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "UpgradeRecipeOnWeapon" ADD FOREIGN KEY ("weaponId") REFERENCES "weapon"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "UpgradeRecipeOnWeapon" ADD FOREIGN KEY ("recipeId", "itemId") REFERENCES "recipe_item"("recipe_id", "item_id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "weapon_melody_notes" ADD FOREIGN KEY ("id") REFERENCES "weapon_melody"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "weapon_melody_text" ADD FOREIGN KEY ("id") REFERENCES "weapon_melody"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "weapon_melody_text" ADD FOREIGN KEY ("lang_id") REFERENCES "language"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "weapon_skill" ADD FOREIGN KEY ("skilltree_id") REFERENCES "skilltree"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "weapon_skill" ADD FOREIGN KEY ("weapon_id") REFERENCES "weapon"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "weapon_text" ADD FOREIGN KEY ("id") REFERENCES "weapon"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "weapon_text" ADD FOREIGN KEY ("lang_id") REFERENCES "language"("id") ON DELETE CASCADE ON UPDATE CASCADE;
