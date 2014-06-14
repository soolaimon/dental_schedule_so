class PeopleController < ApplicationController
  before_action :find_person, only: [:show, :edit, :update, :destroy]

  def index
    @people = Person.all
  end

  def show
  end

  def new
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def find_person
    @person = Person.find(params[:id]) 
  end

end
