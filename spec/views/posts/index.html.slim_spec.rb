require 'rails_helper'

RSpec.describe "posts/index", type: :view do
  before(:each) do
    assign(:posts, [
      Post.create!(
        :user_id => 2,
        :title => "Title",
        :detail => "MyText",
        :category => "Category",
        :image_1 => "Image 1",
        :image_2 => "Image 2",
        :image_3 => "Image 3",
        :published => false,
        :status => 3,
        :num_of_planner => 4,
        :num_of_engineer => 5,
        :num_of_designer => 6,
        :motivation => 7,
        :period => 8,
        :scale => 9,
        :main_color => "Main Color"
      ),
      Post.create!(
        :user_id => 2,
        :title => "Title",
        :detail => "MyText",
        :category => "Category",
        :image_1 => "Image 1",
        :image_2 => "Image 2",
        :image_3 => "Image 3",
        :published => false,
        :status => 3,
        :num_of_planner => 4,
        :num_of_engineer => 5,
        :num_of_designer => 6,
        :motivation => 7,
        :period => 8,
        :scale => 9,
        :main_color => "Main Color"
      )
    ])
  end

  it "renders a list of posts" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Category".to_s, :count => 2
    assert_select "tr>td", :text => "Image 1".to_s, :count => 2
    assert_select "tr>td", :text => "Image 2".to_s, :count => 2
    assert_select "tr>td", :text => "Image 3".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => 6.to_s, :count => 2
    assert_select "tr>td", :text => 7.to_s, :count => 2
    assert_select "tr>td", :text => 8.to_s, :count => 2
    assert_select "tr>td", :text => 9.to_s, :count => 2
    assert_select "tr>td", :text => "Main Color".to_s, :count => 2
  end
end
