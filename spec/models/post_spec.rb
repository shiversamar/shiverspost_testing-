require 'rails_helper'

RSpec.describe Post, type: :model do
  it 'is a thing' do
    expect{Post.new}.to_not raise_error
  end

  it 'has name has title and body' do
    post = Post.new
    post.title = 'Test Title'
    post.body = 'Test Body'
    expect(post.save).to eq true
    p2 = Post.find_by_title 'Test Title'
    expect(p2.title).to eq 'Test Title'
    expect(p2.body).to eq 'Test Body'
  end

  it 'is not valid with a title longer than 100 symbols' do
    post = Post.new(title: 'a' * 101)
    expect(post).not_to be_valid
  end


  it 'is valid with proper data' do
    post = Post.new(title: 'a' * 50)
    expect(post).to be_valid
  end


end#Rspec
