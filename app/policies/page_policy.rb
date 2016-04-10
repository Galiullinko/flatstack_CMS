class PagePolicy < ApplicationPolicy

  def edit?
    @user.role == 'administrator'
  end

  def delete?
    @user.role == 'administrator' &&
      @record.user_id == @user_id
  end
end
