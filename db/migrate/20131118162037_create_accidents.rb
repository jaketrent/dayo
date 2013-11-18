class CreateAccidents < ActiveRecord::Migration
  def change
    create_table :accidents do |t|
      t.string :type
      t.date :date

      t.timestamps
    end
  end
end
