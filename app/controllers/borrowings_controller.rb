# app/controllers/borrowings_controller.rb
class BorrowingsController < ApplicationController
  before_action :authenticate_user!

  def create
    @book = Book.find(params[:id])
    @borrowing = current_user.borrowings.new(book: @book)

    if @borrowing.save
      redirect_to @book, notice: 'Book borrowed successfully!'
    else
      redirect_to @book, alert: @borrowing.errors.full_messages.to_sentence
    end
  end

  def return
    @borrowing = current_user.borrowings.find(params[:id])
    @borrowing.update(returned_at: Time.current)
    redirect_to profile_path, notice: 'Book returned successfully!'
  end
end