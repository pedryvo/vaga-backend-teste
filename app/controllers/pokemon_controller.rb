class PokemonController < ApplicationController
  def index
    @pokemons = Pokemon.all
    render json: @pokemons, status: :ok
  end

  def show
    @pokemon = Pokemon.find(params[:id])

    render json: @pokemon, status: :ok
  end

  def search
    params.permit!
    args = params.except('controller', 'action').to_h.to_a
    args.map! { |el| {el[0].to_sym => el[1]} }

    if args.size > 1
      hash = {}
      args.each { |el| hash.merge! el }
      @pokemons = Pokemon.where(**hash).to_a

      render json: @pokemons, status: :ok
    else
      @pokemons = Pokemon.where(args.first.keys[0] => args.first.values[0]).to_a
      render json: @pokemons, status: :ok
    end
  end
end
