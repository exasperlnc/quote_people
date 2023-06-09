require 'rails_helper'

RSpec.describe Person do
  it "displays the persons name" do
    person = Person.create(name: "Logan", deceased: false, birthday: 20051010)
    visit "/people/#{person.id}"

    expect(page).to have_content(person.name)
  end

  it "displays the persons DOB" do
    person = Person.create(name: "Logan", deceased: false, birthday: 20051010)
    visit "/people/#{person.id}"

    expect(page).to have_content("2005-10-10")
  end

  it "displays if the person is deceased" do
    person = Person.create(name: "Logan", deceased: false, birthday: 20051010)
    visit "/people/#{person.id}"
    
    expect(page).to have_content(person.deceased)
  end
end