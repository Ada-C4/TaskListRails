class PeopleController < ApplicationController
  def index
    @people = Person.all
  end

  def show
    id = params[:id]
    @person = Person.find(id)
  end

  def list
    id = params[:id]
    @person = Person.find(id)
  end

  def new

  end

  def create

  end
end
