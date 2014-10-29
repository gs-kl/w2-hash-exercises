require 'spec_helper'

describe 'Hash basics' do
  let(:person) { person_data }
  let(:people) { people_data }

  describe 'accessing first leve information' do
    # Replace ___ with the code that will get this passing
    it "gets the first name" do
      name = person["first_name"]
      expect( name ).to be == "Bjorn"
    end

    it "gets the last name" do
      name = person["last_name"]
      expect( name ).to be == "Borg"
    end

    it "gets the favorite sport" do
      sport = person["favorite_sport"]
      expect( sport ).to be == "tennis"
    end
  end

  describe "working with person data" do
    before do
    end

    it "we can greet our person" do
      greeting = "Hello, nice to meet you " + person["first_name"] + " " + person["last_name"] + "."
      expect( greeting ).to be == "Hello, nice to meet you Bjorn Borg."
    end

    it "repackages address data" do
       address = "#{person["address"]["street"]}, #{person["address"]["city"]}, #{person["address"]["state"]}, #{person["address"]["zip_code"]}" 
      expect( address ).to be == "444 Borg Lane, San Francisco, CA, 94104"
    end

    it "makes a formatted string describing our person's favorite foods" do
      favorite_foods = "Bjorn's favorite foods are #{person["favorite_foods"][0]}, #{person["favorite_foods"][1]}, and #{person["favorite_foods"][2]}."
      expect( favorite_foods ).to be == "Bjorn's favorite foods are sushi, hamburgers, and mexican food."
    end
  end

  describe "adding data to the hash" do
    before do
    end
    # Don't edit the support files containing person_data.
    # Look up in Ruby docs how to add to a hash, and make the changes stick!

    it "adds nickname information" do
			person[:nick_name] = "BJ"
      expect( person[:nick_name] ).to be == 'BJ'
    end

    it "adds information about tournament wins" do
			person[:tournament_wins] = { wimbledon: ["1976", "1977", "1978", "1979", "1980"] }
      expect( person[:tournament_wins] ).to be == {
        wimbledon: ["1976", "1977", "1978", "1979", "1980"]
      }
    end

    it "formats details about years person was active" do
			person[:tournament_wins] = { wimbledon: ["1976", "1977", "1978", "1979", "1980"] }
      years_active = "Years active: #{person[:tournament_wins][:wimbledon][0]}-#{person[:tournament_wins][:wimbledon][-1]}"
      expect( years_active ).to be == "Years active: 1976-1980"
    end
  end
end
