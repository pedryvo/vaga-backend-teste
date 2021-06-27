# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

xlsx = Roo::Spreadsheet.open(Rails.root.to_s + '/pokemon.xlsx')

pokemons = xlsx.sheet(0).each_row_streaming.to_a
pokemons.shift

pokemons.each do |pokemon|
  id = pokemon[0].value.to_i
  name = pokemon[1].value
  pokedex_number = pokemon[2].value
  img_name = pokemon[3].value
  generation = pokemon[4].value.to_i
  evolution_stage = pokemon[5].value
  evolved = pokemon[6].value
  family_id = pokemon[7].value
  cross_generation = pokemon[8].value
  type_1 = pokemon[9].value
  type_2 = pokemon[10].value
  weather_1 = pokemon[11].value
  weather = pokemon[12].value
  stat_total = pokemon[13].value
  atk = pokemon[14].value
  defe = pokemon[15].value
  sta = pokemon[16].value
  legendary = pokemon[17].value
  aquierable = pokemon[18].value
  spawns = pokemon[19].value
  regional = pokemon[20].value
  raidable = pokemon[21].value
  hatchable = pokemon[22].value
  shiny = pokemon[23].value
  nest = pokemon[24].value
  newe = pokemon[25].value
  not_gettable = pokemon[26].value
  future_evolve = pokemon[27].value
  hundred_cp_40 = pokemon[28].value
  hundred_cp_39 = pokemon[29].value

  Pokemon.create!(
    name: name,
    pokedex_number: pokedex_number,
    img_name: img_name,
    generation: generation,
    evolution_stage: evolution_stage,
    evolved: evolved,
    family_id: family_id,
    cross_generation: cross_generation,
    type_1: type_1,
    type_2: type_2,
    weather_1: weather_1,
    weather: weather,
    stat_total: stat_total,
    atk: atk,
    def: defe,
    sta: sta,
    legendary: legendary,
    aquierable: aquierable,
    spawns: spawns,
    regional: regional,
    raidable: raidable,
    hatchable: hatchable,
    shiny: shiny,
    nest: nest,
    new: newe,
    not_gettable: not_gettable,
    future_evolve: future_evolve,
    hundred_cp_40: hundred_cp_40,
    hundred_cp_39: hundred_cp_39
  )
end