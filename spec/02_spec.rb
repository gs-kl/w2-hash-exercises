require 'spec_helper'

describe "More fun with hashes" do
  let(:people) { people_data }
  let(:___) { nil }

  before do
  end

  it "gets joes first name" do
    first_name = people["joe"][:first_name]
    expect( first_name ).to be == "Joe"
  end

  it "gets the last names of all the people and returns them as a comma separated string" do
    names = "#{people["joe"][:last_name]}, #{people["sue"][:last_name]}"
    expect( names ).to be == "Jenkins, Summers"
  end

  it "gets the first genre of each person, and returns a comma separated string" do
    top_genres = "#{people["joe"][:preferences][:favorite_genres][0]}, #{people["sue"][:preferences][:favorite_genres][0]}"
    expect( top_genres ).to be == "jazz, funk"
  end

  it "calculates and returns the last name of the person sitting next to joe" do
    # Use code! Hint: find who joe is sitting next to, then use that to find their data
		neighbor = "#{people["joe"][:sitting_next_to]}"
    neighbors_last_name = "#{people[neighbor][:last_name]}"
    expect( neighbors_last_name ).to be == "Summers"
  end

  it "gets the date of the first correspondence with joe" do
    joes_first_correspondence = "#{people["joe"][:correspondence][0][:date]}"
    expect( joes_first_correspondence ).to be == "11/4/2014"
  end
end
