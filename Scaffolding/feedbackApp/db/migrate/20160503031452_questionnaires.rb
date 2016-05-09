class Questionnaires < ActiveRecord::Migration
  def change
  	remove_column(:questionnaires, :host)
  	remove_column(:questionnaires, :subject)
  end
end
