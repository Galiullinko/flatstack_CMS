class AddUrlToPages < ActiveRecord::Migration
  def change
    add_column :pages, :url, :string, default: ""
  end
end
