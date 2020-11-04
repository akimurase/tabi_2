class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string  :plan
      t.integer :number
      t.string  :option
      t.date    :plan_day
      t.string  :name
      t.integer :tel

      t.timestamps
    end
  end
end
