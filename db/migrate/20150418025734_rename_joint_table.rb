class RenameJointTable < ActiveRecord::Migration
  def change
    rename_table :users_translations, :translations_users
  end
end
