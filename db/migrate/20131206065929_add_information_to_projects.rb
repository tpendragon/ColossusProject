class AddInformationToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :information, :text
  end
end
