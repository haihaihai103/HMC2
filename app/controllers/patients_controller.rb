class PatientsController < ApplicationController
  before_action :patient_set, only: [:edit, :show, :update]
  before_action :authenticate_user!, except: [:index]
  before_action :search_product, only: [:excel, :chart, :search]


def index
  @patients = Patient.all.order("created_at DESC")
  @patients_count = Patient.group_by_day(:created_at).size
  @patient_today = Patient.where(created_at: Date.today.all_day).count
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
  @patients = Patient.all.order("created_at DESC")
  @results = @q.result
end

def show
end

#excelについて
def excel
  @results = @q.result
  respond_to do |format|
    format.html
    format.xlsx { |html| html.tablet
        response.headers['Content-Disposition'] = 'attachment; filename="患者リスト"'+ Time.zone.now.strftime('%Y%m%d%H%M%S') + '.xlsx'
    }
  end
end

private

def patient_params
  params.require(:patient).permit(:kana01, :name01, :gender, :age, :nationality, :postcode, :prefecture_id, :city, :town, :phone01, :phone02, :email, :belong_id, :company, :location, :phone03, :kana02, :name02, :relationship, :phone04, :number, :free).merge(user_id: current_user.id)
end

def search_product
  @q = Patient.ransack(params[:q])
end

def patient_set
  @patient = Patient.find(params[:id])
end
end