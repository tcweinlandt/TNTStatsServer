class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.string :match_name
      t.string :winner_name
      t.string :winner_id
      t.string :winner_picks
      t.string :loser_name
      t.string :loser_id
      t.string :loser_picks

      t.timestamps
    end
  end
end
