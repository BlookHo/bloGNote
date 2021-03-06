require 'rails_helper'

RSpec.describe "comments/edit", type: :view do
  before(:each) do
    @comment = assign(:comment, Comment.create!(
      :author_id => 1,
      :article_id => 1,
      :body => "MyText"
    ))
  end

  it "renders the edit comment form" do
    render

    assert_select "form[action=?][method=?]", comment_path(@comment), "post" do

      assert_select "input#comment_author_id[name=?]", "comment[author_id]"

      assert_select "input#comment_article_id[name=?]", "comment[article_id]"

      assert_select "textarea#comment_body[name=?]", "comment[body]"
    end
  end
end
