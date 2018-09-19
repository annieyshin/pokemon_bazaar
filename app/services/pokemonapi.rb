require 'rest-client'

class Pokemonapi

  def initialize (pokemon_number)
    @pokemon_number = pokemon_number
  end

  def self.get_pokemon
    response = RestClient.get('https://api.pokemontcg.io/v1/cards?nationalPokedexNumber=4')
    parse_response = JSON.parse(response)
    parse_response ["cards"][0]["name"]
  end

end
