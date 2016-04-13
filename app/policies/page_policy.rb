class PagePolicy < ApplicationPolicy

  def edit?
    @user.nil? ? false : @user.role == 'administrator'
  end

  def destroy?
    @user.nil? ? false : @user.role == 'administrator' &&
        @record.user_id == @user_id
  end
end
