class UsersTranslations < ActiveRecord::Migration
  def change
    create_table :users_translations, id: false do |t|
      t.references :user, null: false
      t.references :translation, null: false
    end
  end
end
