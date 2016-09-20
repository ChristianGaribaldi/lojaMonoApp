class AddSiglaToEstado < ActiveRecord::Migration
  def change
    add_column :estados, :sigla, :string
  end
end
