class CreateInvites < ActiveRecord::Migration[5.2]
  def change
    create_table :invites do |t|
      t.string :name
      t.references :bar, foreign_key: true

      t.timestamps
    end
  end
end
