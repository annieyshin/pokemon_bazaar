require 'rest-client'

class Pokemonapi

  def initialize (pokemon_number)
    @pokemon_number = pokemon_number
  end

  def self.get_pokemon_name
    response = RestClient.get('https://api.pokemontcg.io/v1/cards?nationalPokedexNumber=4')
    parse_response = JSON.parse(response)
    pokemon_name = parse_response ["cards"][0]["name"]
  end

  def self.get_pokemon_number
    response = RestClient.get('https://api.pokemontcg.io/v1/cards?nationalPokedexNumber=4')
    parse_response = JSON.parse(response)
    parse_response ["cards"][0]["nationalPokedexNumber"]
  end

  def self.get_pokemon_image
    response = RestClient.get('https://api.pokemontcg.io/v1/cards?nationalPokedexNumber=4')
    parse_response = JSON.parse(response)
    parse_response ["cards"][0]["imageUrl"]
  end

  def set_pokemon
    response = RestClient.get('https://api.pokemontcg.io/v1/cards?nationalPokedexNumber=' + @pokemon_number)
    parse_response = JSON.parse(response)
    parse_response ["cards"][0]["imageUrl"]
  end


end
