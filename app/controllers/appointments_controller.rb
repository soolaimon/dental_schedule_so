class AppointmentsController < ApplicationController
  before_action :find_appointment, only: [:show, :edit, :update, :destroy]

  def index
    @appointments = Appointment.all
  end

  def show
  end

  def new
    @appointment = Appointment.new
  end

  def create
    @appointment = Appointment.new(appointment_params)
    if @appointment.save
      redirect_to people_path
    else
      render :new
    end

  end

  def edit
  end

  def update
    if @appointment.update_attributes(appointment_params)
      redirect_to people_path
    else
      render :edit
    end
  end

  def destroy
    @appointment.destroy
    redirect_to people_path
  end

  private

  def appointment_params
    params.require(:appointment).permit(:name)
    
  end

  def find_appointment
    @appointment = Appointment.find(params[:id]) 
  end
end
