require 'rails_helper'

RSpec.describe "pets/show", type: :view do
  before(:each) do
    @pet = assign(:pet, Pet.create!(
      owner: nil,
      breed: nil,
      name: "Name",
      gender: 2,
      bio: "Bio",
      instagram: "Instagram"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Bio/)
    expect(rendered).to match(/Instagram/)
  end
end
