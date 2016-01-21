require 'rails_helper'

RSpec.feature "user can create an article" do
  scenario "user is redirected to index after creation" do
    article = Article.new(text: "test text", author: "Greg")

    visit new_article_path

    fill_in "Text", with: article.text
    fill_in "Author", with: article.author
    click_on "Create Article"

    expect(current_path).to eq articles_path
    expect(page).to have_content article.text
    expect(page).to have_content article.author
  end
end
