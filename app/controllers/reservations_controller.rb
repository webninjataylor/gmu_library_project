class ReservationsController < ApplicationController

  before_action :set_user, only:[ :index, :create, :show]

  # Get user from session
  def index
    @user = User.first
  end

  # Get user from session
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
        redirect_to book_path(@book), notice: "Problems reserving #{@book.title}"
      end
    else # if not enough copies return back to the show page of the book
      redirect_to book_path(@book), notice: "Not enough copies of #{@book.title} to reserve"
    end
  end

  # Why is it trying to delete book also?
  # How to delete only the reservation and not the book?
  # When returning a book, make sure to add it back to the collection
  def destroy
    @reservation = Reservation.find(params[:id])
    @reservation.book.update(total_in_library: @reservation.book.total_in_library + 1)
    @reservation.destroy
    redirect_to reservations_path, notice: "#{@reservation.book.title} has been returned"
  end

  # Show overdue books for user that's logged in
  # Only show on the view the reservations with due date > today's date
  # Query reservation for all due dates past today's date and pass that to the view
  def show
    @user = User.first
  end

  private

  def reservation_params
    params.require(:reservation).permit(:user_id, :book_id);
  end

  def set_user

  end

end