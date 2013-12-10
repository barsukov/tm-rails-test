class CreatePlatform < ActiveRecord::Migration
  def change
    create_table :platforms do |t|
      t.string :name
      t.references :campaign
      t.timestamps
    end
  end
end
