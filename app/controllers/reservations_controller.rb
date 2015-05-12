class ReservationsController < ApplicationController

  # How do I get all the book information from only the user's reservation list?
  def index
    @user = User.first
  end

  # Check to make sure there are enough copies to reserve
  # Maybe pass the user_id and book_id to this method
  # get book title to pass as a notice?
  # can I call index? get all reservations after a save to display all reservations
  def create
    @book = Book.find_by_id(params[:book_id])
    # check to see if there is enough copies of the book
    if @book.total_in_library > 0
      @user = User.first
      @reservation = @user.reservations.new()
      @reservation.user_id = @user.id
      @reservation.book_id = @book.id
      if @reservation.save && @book.update(total_in_library: @book.total_in_library - 1)
        redirect_to reservations_path, notice: "#{@book.title} has been reserved"
      else
        render :new
      end
    else # if not enough copies return back to the show page of the book
      redirect_to book_path(@book), notice: "Not enough copies to reserve"
    end
  end

  # Why is it trying to delete book also?
  # How to delete only the reservation and not the book?
  def destroy
    @reservation.destroy
    redirect_to reservations_path
  end

  # Show overdue books for user that's logged in
  def show
    @user = User.first
  end

  private

  def reservation_params
    params.require(:reservation).permit(:user_id, :book_id);
  end
end