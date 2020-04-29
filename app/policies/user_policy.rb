class UserPolicy < ApplicationPolicy
  def initialize(current_user, user)
    @current_user = current_user
    @user = user
  end

  def index?
    true
  end

  def show?
    true
  end

  def create?
    true
  end

  def edit?
    manage?
  end

  def new?
    true
  end

  def update?
    manage?
  end

  def manage?
    @user.role?('Admin') || @user.role?('Manager')
  end

  def destroy?
    manage?
  end
end
