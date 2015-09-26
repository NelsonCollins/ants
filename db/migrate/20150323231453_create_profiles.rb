class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :title
      t.string :lastname
      t.string :firstname
      t.string :location
      t.string :age
      t.string :sex
      t.string :occupation
      t.string :pic_uid
      t.string :pic_name
       t.string :email_add


      t.timestamps
    end
  end
end
