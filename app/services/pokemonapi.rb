class Pokemonapi

  def initialize (pokemon_number)
    @pokemon_number = pokemon_number
  end

  def get_pokemon
    response = HTTParty.get('https://api.pokemontcg.io/v1/cards?nationalPokedexNumber='+ @pokemon_number)
    response ["setCode"]["base1"]
  end
end
