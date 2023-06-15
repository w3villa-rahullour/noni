class CreateNonis < ActiveRecord::Migration[6.1]
  def change
    create_table :nonis do |t|

      t.timestamps
    end
  end
end
