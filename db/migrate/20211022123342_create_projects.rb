class CreateProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :projects do |t|
      t.string :username
      t.string :password
      t.string :email

      t.timestamps
    end
  end
end
