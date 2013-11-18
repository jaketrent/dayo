class Accident < ActiveRecord::Base

  def days_since
    days = (Date.today - date).to_i
    days = 0 if days < 0
    days
  end

end
