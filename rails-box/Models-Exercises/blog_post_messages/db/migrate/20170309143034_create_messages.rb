class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.references :post
      t.string :author
      t.string :message

      t.timestamps null: false
    end
  end
end
