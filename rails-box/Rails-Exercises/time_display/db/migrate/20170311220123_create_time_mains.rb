class CreateTimeMains < ActiveRecord::Migration
  def change
    create_table :time_mains do |t|

      t.timestamps null: false
    end
  end
end
