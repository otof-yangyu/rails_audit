class CreateAudits < ActiveRecord::Migration[5.1]
  def change
    
    create_table :audits do |t|
      t.references :auditable, polymorphic: true
      t.references :operator, polymorphic: true
      t.string :action
      t.string :audited_changes, limit: 4096
      t.string :related_changes, limit: 4096
      t.string :unconfirmed_changes, limit: 4096
      t.string :note, limit: 1024
      t.string :remote_ip
      t.string :controller_name
      t.string :action_name
      t.string :extra, limit: 4096
      t.datetime :created_at, index: true, null: false
    end
    
  end
end
