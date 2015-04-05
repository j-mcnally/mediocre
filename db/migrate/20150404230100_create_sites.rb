class CreateSites < ActiveRecord::Migration
  def change
    create_table :sites do |t|
      t.string :title

      t.timestamps null: false
    end
  end
end
