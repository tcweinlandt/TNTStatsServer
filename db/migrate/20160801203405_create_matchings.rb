class CreateMatchings < ActiveRecord::Migration
  def change
    create_table :matchings do |t|
      t.references :match, index: true
      t.references :player, index: true

      t.timestamps
    end
  end
end
