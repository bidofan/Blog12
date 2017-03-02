require 'rails_helper'
RSpec.describe Article, :type => :model do
  it 'is valid with valid attributes' do
    article = Article.new(title: 'some title', text: 'some text')
    expect(article).to be_valid
    expect(article.text).to eq('some text')
  end
  it 'Not valid without Title' do
    article = Article.new(title: '', text: 'one')
    article.valid?
    article.errors[:title]
  end
  it 'Not valid without Text' do
    article = Article.new(title: 'New', text: '')
    article.valid?
    article.errors[:text]
  end
  it 'Has many comments' do
    comment = Comment.new
    article = described_class.new
    article.comments << comment
    expect(comment.article).to be article
  end

end
