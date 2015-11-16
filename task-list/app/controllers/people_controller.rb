class PeopleController < ApplicationController
  def index
    @people = Person.all
    @title= "List of People"
  end
end
