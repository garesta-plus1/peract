require 'rails_helper'

RSpec.describe "posts/show", type: :view do
  before(:each) do
    @post = assign(:post, Post.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Category/)
    expect(rendered).to match(/Image 1/)
    expect(rendered).to match(/Image 2/)
    expect(rendered).to match(/Image 3/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/5/)
    expect(rendered).to match(/6/)
    expect(rendered).to match(/7/)
    expect(rendered).to match(/8/)
    expect(rendered).to match(/9/)
    expect(rendered).to match(/Main Color/)
  end
end
