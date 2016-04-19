class CreateQuestionnaires < ActiveRecord::Migration
  def change
    create_table :questionnaires do |t|
      t.references :host, index: true, foreign_key: true
      t.references :subject, index: true, foreign_key: true
      t.boolean :finished

      t.timestamps null: false
    end
  end
end
