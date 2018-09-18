class Pokemonapi

  def initialize (pokemon_number)
    @pokemon_number = pokemon_number
  end

  def self.get_pokemon
    response = HTTParty.get('https://api.pokemontcg.io/v1/cards?nationalPokedexNumber=4')
  end

end
