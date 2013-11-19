class AccidentController < ApplicationController

  def show
    accident = _get_accident params[:name]

    if accident.present?
      @days = accident.days_since
      @name = accident.name
    end
  end

  def new

  end

  private

  def _get_accident(name)
    if name.present?
      Accident.where(name: name).order('date').last
    else
      Accident.order('date').last
    end
  end

end
