class AppointmentsController < ApplicationController
  before_action :find_appointment, only: [:show, :edit, :update, :destroy]
  before_action :find_person, only: [:new, :create, :edit, :destroy]

  def index
    @appointments = Appointment.all
  end

  def show
  end

  def new
    @appointment = @person.appointments.new
  end

  def create
    @appointment = @person.appointments.new(appointment_params)
    if @appointment.save
      redirect_to person_path(params[:person_id])
    else
      render :new
    end

  end

  def edit

  end

  def update
    if @appointment.update_attributes(appointment_params)
      redirect_to person_path(params[:person_id]) 

    else
      render :edit
    end
  end

  def destroy
    @appointment.destroy
    redirect_to person_path(params[:person_id]) 
  end

  def create_a_recurring_appointment
    @appointment = Appointment.find(params[:id]).dup
    @appointment.update_attributes(time: Time.now + 6.months)

    if @appointment.save
      redirect_to person_path(params[:person_id])
    else
      render :new
    end
  end

  private

  def appointment_params
    params.require(:appointment).permit(:time, :dentist, :description, :person_id, :cost, :is_checkup)
  end

  def find_appointment
    @appointment = Appointment.find(params[:id]) 
  end

  def find_person
    @person = Person.find(params[:person_id])
    
  end

end
