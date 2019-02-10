class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    enable_extension "hstore"
    create_table :users do |t|
      t.string :name
      t.hstore :profile

      t.timestamps
    end
  end
end
