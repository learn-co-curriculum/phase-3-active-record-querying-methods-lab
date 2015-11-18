require_relative 'spec_helper'

describe Show do

  let(:rick_and_morty) { Show.create(:name => "Rick and Morty", :day => "Thursday", :network => "Adult Swim", :rating => 10) }
  let(:law_and_order) {Show.create(:name => "Law & Order", :day => "Monday", :network => "NBC", :rating => "7")}
  let(:the_cleveland_show) {Show.create(:name => "The Cleveland Show", :day => "Monday", :network => "Fox", :rating => "2")}
  let(:fear_the_walking_dead) {Show.create(:name => "Fear the Walking Dead", :day => "Sunday", :network => "AMC", :rating => "3")}
  let(:law_and_order) {Show.create(:name => "Law & Order", :day => "Monday", :network => "NBC", :rating => "7")}

  it "has data attributes" do
    #TODO: You'll need to create a new migration to add
    #the necessary columns to the shows table
    expect(community.name).to eq("Rick and Morty")
    expect(community.day).to eq("Thursday")
    expect(community.network).to eq("Adult Swim")
    expect(community.rating).to eq(10)
  end

  describe "#most_popular" do 

  end

end