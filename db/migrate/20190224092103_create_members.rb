class CreateMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :members, id: :uuid, comment: 'メンバー' do |t|
      t.string :name, null: false
      t.text :description

      t.timestamps
    end

    create_table :members_tasks, id: false, comment: 'タスクとメンバーの関連テーブル' do |t|
      t.references :member, type: :uuid, foreign_key: true
      t.references :task, type: :uuid, foreign_key: true

      t.timestamps
    end
  end
end
