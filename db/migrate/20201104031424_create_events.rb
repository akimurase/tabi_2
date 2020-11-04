class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string    :plan
      t.integer   :number
      t.string    :option
      t.datetime  :start_time
      t.string    :name
      t.string    :tel

      t.timestamps
    end
  end
end
