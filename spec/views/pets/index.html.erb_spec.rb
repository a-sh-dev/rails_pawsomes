require 'rails_helper'

RSpec.describe "pets/index", type: :view do
  before(:each) do
    assign(:pets, [
      Pet.create!(
        owner: nil,
        breed: nil,
        name: "Name",
        gender: 2,
        bio: "Bio",
        instagram: "Instagram"
      ),
      Pet.create!(
        owner: nil,
        breed: nil,
        name: "Name",
        gender: 2,
        bio: "Bio",
        instagram: "Instagram"
      )
    ])
  end

  it "renders a list of pets" do
    render
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: "Bio".to_s, count: 2
    assert_select "tr>td", text: "Instagram".to_s, count: 2
  end
end
