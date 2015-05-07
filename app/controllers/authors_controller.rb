class AuthorsController < ApplicationController

  def index
    @authors = Author.order(:name).page(params[:page])
  end

  before_action:set_author, only:[ :show]

  def show
  end

  private

  def set_author
    @author = Author.find(params[:id])
  end

  def author_params
    params.require(:author)
  end

end
