class PagesController < ApplicationController
  before_action :authenticate_user!, only: %w(new create edit update destroy)

  respond_to :html

  expose_decorated(:page, attributes: :page_params)
  expose_decorated(:pages) { Page.sorted }
  # expose(:policy) { Policy.new(current_user, paage) }

  def index
  end

  def new
  end

  def create
    page.user = current_user
    page.save
    respond_with page
  end

  def show
  end

  def update
    page.save
  end

  def destroy
    page.destroy
  end

  private

  def page_params
    params.require(:page).permit(:user_id,
                                 :title,
                                 :context,
                                 :index,
                                 :url)
  end
end
