class CreateMessages < ActiveRecord::Migration[6.1]
  def change
    create_table :messages do |t|
      t.text :text
      t.integer :messageable_id
      t.string :messageable_type

      t.timestamps
    end
  end
end
