class CreatePlatform < ActiveRecord::Migration
  def change
    create_table :platforms do |t|
      t.string :name
      t.timestamps
    end
  end
end
