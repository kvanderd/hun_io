class CreateUrls < ActiveRecord::Migration
  def change
    create_table :urls do |t|
    	t.string :short, :long
    	t.belongs_to :user
      t.timestamps
    end
  end
end
