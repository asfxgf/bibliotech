class CreateAppartenances < ActiveRecord::Migration[5.2]
  def change
    create_table :appartenances do |t|

      t.timestamps
    end
  end
end
