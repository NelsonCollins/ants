class CreateAbouts < ActiveRecord::Migration
  def change
    create_table :abouts do |t|
      t.string :about
      t.string :contact

      t.timestamps
    end
  end
end
