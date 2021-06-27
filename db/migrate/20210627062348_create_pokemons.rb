class CreatePokemons < ActiveRecord::Migration[6.1]
  def change
    create_table :pokemons do |t|
      t.string :name
      t.string :pokedex_number
      t.string :img_name
      t.string :generation
      t.string :evolution_stage
      t.string :evolved
      t.string :family_id
      t.string :cross_generation
      t.string :type_1
      t.string :type_2
      t.string :weather_1
      t.string :weather
      t.string :stat_total
      t.string :atk
      t.string :def
      t.string :sta
      t.string :legendary
      t.string :aquierable
      t.string :spawns
      t.string :regional
      t.string :raidable
      t.string :hatchable
      t.string :shiny
      t.string :nest
      t.string :new
      t.string :not_gettable
      t.string :future_evolve
      t.string :hundred_cp_40
      t.string :hundred_cp_39

      t.timestamps
    end
  end
end
