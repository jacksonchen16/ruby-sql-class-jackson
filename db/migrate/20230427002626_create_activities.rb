class CreateActivities < ActiveRecord::Migration[7.0]
  def change
    create_table :activities do |t|
      t.string "notes"
      # t.string "occured_at"
      t.integer "contact_id"
      t.integer "salesperson_id"

      t.timestamps
    end
  end
end
