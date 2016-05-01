class Admin::PanelController < ApplicationController
  def index
    @searchs = Search.group(:title).order(count: :desc).count
  end
end
