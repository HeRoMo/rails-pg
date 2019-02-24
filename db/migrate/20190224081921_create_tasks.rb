class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks, id: :uuid, command: 'タスク' do |t|
      t.references :project, type: :uuid, foreign_key: true
      t.string :name, null: false, command: 'タスク名'
      t.text :description, comment: '概要'
      t.integer :status, default: 0, comment: 'ステータス'
      t.date :start_on, comment: '開始日'
      t.date :end_on, comment: '終了日'

      t.timestamps
    end
  end
end
