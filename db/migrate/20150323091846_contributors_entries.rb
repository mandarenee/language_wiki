class ContributorsEntries < ActiveRecord::Migration
  def change
    create_table :contributors_translations, id: false do |t|
      t.references :contributor, null: false
      t.references :translation, null: false
    end
  end
end
