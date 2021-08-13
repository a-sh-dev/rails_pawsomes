require 'rails_helper'

RSpec.describe "pets/new", type: :view do
  before(:each) do
    assign(:pet, Pet.new(
      owner: nil,
      breed: nil,
      name: "MyString",
      gender: 1,
      bio: "MyString",
      instagram: "MyString"
    ))
  end

  it "renders new pet form" do
    render

    assert_select "form[action=?][method=?]", pets_path, "post" do

      assert_select "input[name=?]", "pet[owner_id]"

      assert_select "input[name=?]", "pet[breed_id]"

      assert_select "input[name=?]", "pet[name]"

      assert_select "input[name=?]", "pet[gender]"

      assert_select "input[name=?]", "pet[bio]"

      assert_select "input[name=?]", "pet[instagram]"
    end
  end
end
