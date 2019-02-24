class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    enable_extension 'pgcrypto' unless extension_enabled?('pgcrypto')
    create_table :projects, id: :uuid, comment: 'プロジェクト' do |t|
      t.string :name, null: false, comment: 'プロジェクト名'
      t.text :description, comment: '概要'
      t.date :start_on, comment: '開始日'
      t.date :end_on, comment: '終了日'

      t.timestamps
    end
  end
end
