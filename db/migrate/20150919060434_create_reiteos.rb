class CreateReiteos < ActiveRecord::Migration
  def change
    create_table :reiteos do |t|
      t.string :description

      t.timestamps null: false
    end
  end
end
