# load 'vendor/sample.rb'

def del_all
  Task.destroy_all
  Member.destroy_all
  Project.destroy_all
end

def sample
  project = Project.create(name: 'プロジェクト①');
  member1 = Member.create(name: 'メンバー①')

  task1 = Task.new(name: 'タスク-A', members: [member1])
  task2 = Task.new(name: 'タスク-B', members: [member1, Member.new(name: 'メンバー②')])

  project.tasks = [task1, task2]

  project.save
  project.reload

  pp project
  pp project.tasks
  pp project.tasks.last.members
  nil
end
