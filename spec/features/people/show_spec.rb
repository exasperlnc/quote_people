require 'rails_helper'

RSpec.describe Person do
  before(:each) do
    @person = Person.create(name: "Logan", deceased: false, birthday: 19960401)
  end
  it "displays the persons name" do
    visit "/people/#{@person.id}"
  end

  xit "displays the persons DOB" do
    
  end

  xit "displays if the person is deceased" do
    
  end
end