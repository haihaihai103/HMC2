class PatientsController < ApplicationController
  before_action :patient_set, only: [:edit, :show, :update]
  before_action :authenticate_user!
  before_action :search_product, only: [:search]
  

def index
end

def new
  @patient = Patient.new
end

def create
  @patient = Patient.new(patient_params)
  if @patient.save
    redirect_to root_path
  else
    render :new
  end
end

def edit
end

def update
  if @patient.update(patient_params)
    redirect_to patient_path
  else
    render :edit
  end
end

def chart
  @patients = Patient.all.order("created_at DESC")
end

def search
  @results = @q.result.includes(:patient)
end

def show
end

private

def patient_params
  params.require(:patient).permit(:kana01, :name01, :gender, :nationality, :postcode, :prefecture_id, :city, :town, :phone01, :phone02, :email, :belong_id, :belong01_id, :belong02_id, :belong03_id, :company, :location, :phone03, :kana02, :name02, :relationship, :phone04, :phone05, :number, :free).merge(user_id: current_user.id)
end

def search_product
  @q = Patient.ransack(params[:q])
end

def patient_set
  @patient = Patient.find(params[:id])
end

end