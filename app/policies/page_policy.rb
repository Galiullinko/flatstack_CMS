class PagePolicy < ApplicationPolicy

  def edit?
    @user.nil? ? false : (@user.role == 'administrator' || @user == @record.user)
  end

  def destroy?
    @user.nil? ? false : (@user.role == 'administrator' || @user == @record.user)
  end
end
