require 'rails_helper'

describe Pokemonapi do

  it "returns a 200 success header when the API call is made" do
    response = Pokemonapi.get_pokemon
    expect(response["cards"]).to_not(eq(nil))
  end

end
