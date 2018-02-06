require 'rails_helper'

RSpec.describe "posts/edit", type: :view do
  before(:each) do
    @post = assign(:post, Post.create!(
      :user_id => 1,
      :title => "MyString",
      :detail => "MyText",
      :category => "MyString",
      :image_1 => "MyString",
      :image_2 => "MyString",
      :image_3 => "MyString",
      :published => false,
      :status => 1,
      :num_of_planner => 1,
      :num_of_engineer => 1,
      :num_of_designer => 1,
      :motivation => 1,
      :period => 1,
      :scale => 1,
      :main_color => "MyString"
    ))
  end

  it "renders the edit post form" do
    render

    assert_select "form[action=?][method=?]", post_path(@post), "post" do

      assert_select "input[name=?]", "post[user_id]"

      assert_select "input[name=?]", "post[title]"

      assert_select "textarea[name=?]", "post[detail]"

      assert_select "input[name=?]", "post[category]"

      assert_select "input[name=?]", "post[image_1]"

      assert_select "input[name=?]", "post[image_2]"

      assert_select "input[name=?]", "post[image_3]"

      assert_select "input[name=?]", "post[published]"

      assert_select "input[name=?]", "post[status]"

      assert_select "input[name=?]", "post[num_of_planner]"

      assert_select "input[name=?]", "post[num_of_engineer]"

      assert_select "input[name=?]", "post[num_of_designer]"

      assert_select "input[name=?]", "post[motivation]"

      assert_select "input[name=?]", "post[period]"

      assert_select "input[name=?]", "post[scale]"

      assert_select "input[name=?]", "post[main_color]"
    end
  end
end
