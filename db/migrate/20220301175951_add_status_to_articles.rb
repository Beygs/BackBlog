class AddStatusToArticles < ActiveRecord::Migration[7.0]
  def change
    change_table :articles do |t|
      t.string :status, default: "public"
    end
  end
end
