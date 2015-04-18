class CreateTranslations < ActiveRecord::Migration
  def change
    create_table :translations do |t|
      t.string :core_language
      t.string :target_language

      t.timestamps null: false
    end
  end
end
