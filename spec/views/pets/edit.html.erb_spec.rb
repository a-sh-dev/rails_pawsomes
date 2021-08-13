require 'rails_helper'

RSpec.describe "pets/edit", type: :view do
  before(:each) do
    @pet = assign(:pet, Pet.create!(
      owner: nil,
      breed: nil,
      name: "MyString",
      gender: 1,
      bio: "MyString",
      instagram: "MyString"
    ))
  end

  it "renders the edit pet form" do
    render

    assert_select "form[action=?][method=?]", pet_path(@pet), "post" do

      assert_select "input[name=?]", "pet[owner_id]"

      assert_select "input[name=?]", "pet[breed_id]"

      assert_select "input[name=?]", "pet[name]"

      assert_select "input[name=?]", "pet[gender]"

      assert_select "input[name=?]", "pet[bio]"

      assert_select "input[name=?]", "pet[instagram]"
    end
  end
end
