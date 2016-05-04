class PageDecorator < ApplicationDecorator
  delegate :title, :body, :position, :index

  def author
    object.user.full_name
  end

  def author_role
    object.user.role
  end
end
