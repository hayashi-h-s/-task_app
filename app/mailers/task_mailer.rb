class TaskMailer < ApplicationMailer
  default from: 'taskleaf@example.com'
  helper_method :current_user

  def creation_email(task)
    @task = task
    mail(
      subject: 'タスク作成完了メール',
      to: 'user@example.com',
      from: 'taskleaf@example.com'
    )
  end
end
