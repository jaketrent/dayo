class AccidentController < ApplicationController

  def index

  end

  def show
    name = params[:name]
    accident = Accident.where(name: name).order('date').last

    if accident.present?
      @days = accident.days_since
      @name = accident.name
    end
  end

  def new

  end

end
