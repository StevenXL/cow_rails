require 'rails_helper'

RSpec.describe "cats/new", type: :view do
  before(:each) do
    assign(:cat, Cat.new(
      :name => "MyString",
      :age => 1,
      :breed => "MyString"
    ))
  end

  it "renders new cat form" do
    render

    assert_select "form[action=?][method=?]", cats_path, "post" do

      assert_select "input#cat_name[name=?]", "cat[name]"

      assert_select "input#cat_age[name=?]", "cat[age]"

      assert_select "input#cat_breed[name=?]", "cat[breed]"
    end
  end
end
