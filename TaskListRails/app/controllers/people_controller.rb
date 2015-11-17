class PeopleController < ApplicationController
  def index
    @people = Person.all
  end

  def show
    @person = Person.find(params[:id])
  end

private

  def person_params
    params.permit(person:[:name, :age, :occupation])
  end
end
