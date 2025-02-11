# test/models/book_test.rb
require 'test_helper'

class BookTest < ActiveSupport::TestCase
  test 'valid book' do
    book = Book.new(title: 'Valid Book', author: 'Author', isbn: '1234567890')
    assert book.valid?
  end

  test 'invalid without title' do
    book = Book.new(author: 'Author', isbn: '1234567890')
    assert_not book.valid?
  end
end