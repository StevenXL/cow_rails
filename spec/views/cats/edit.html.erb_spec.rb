require 'rails_helper'

RSpec.describe "cats/edit", type: :view do
  before(:each) do
    @cat = assign(:cat, Cat.create!(
      :name => "MyString",
      :age => 1,
      :breed => "MyString"
    ))
  end

  it "renders the edit cat form" do
    render

    assert_select "form[action=?][method=?]", cat_path(@cat), "post" do

      assert_select "input#cat_name[name=?]", "cat[name]"

      assert_select "input#cat_age[name=?]", "cat[age]"

      assert_select "input#cat_breed[name=?]", "cat[breed]"
    end
  end
end
