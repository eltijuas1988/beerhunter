require 'rails_helper'

RSpec.describe "reviews/edit", type: :view do
  before(:each) do
    @review = assign(:review, Review.create!(
      :rating => 1,
      :review => "MyText",
      :brewery => nil
    ))
  end

  it "renders the edit review form" do
    render

    assert_select "form[action=?][method=?]", review_path(@review), "post" do

      assert_select "input#review_rating[name=?]", "review[rating]"

      assert_select "textarea#review_review[name=?]", "review[review]"

      assert_select "input#review_brewery_id[name=?]", "review[brewery_id]"
    end
  end
end
