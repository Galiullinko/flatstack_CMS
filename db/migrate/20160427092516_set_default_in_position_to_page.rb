class SetDefaultInPositionToPage < ActiveRecord::Migration
  def change
    change_column :pages, :position, :string, :default => "top"
  end
end
