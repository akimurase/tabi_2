class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.integer    :plan_id
      t.integer    :num_id
      t.integer    :option_id
      t.datetime   :start_time
      t.string     :name
      t.string     :tel
      t.integer    :price

      t.timestamps
    end
  end
end
