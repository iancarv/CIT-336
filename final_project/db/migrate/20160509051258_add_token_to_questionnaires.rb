class AddTokenToQuestionnaires < ActiveRecord::Migration
  def change
    add_column :questionnaires, :accept_token, :string
    add_column :questionnaires, :accepted, :boolean, default: false
  end
end
