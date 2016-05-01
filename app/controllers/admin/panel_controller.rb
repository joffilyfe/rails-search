class Admin::PanelController < ApplicationController
  def index
    @searchs = Search.group(:title).order(count: :desc).count
  end

  def search_detail
    @searchs = Search.where(title: params[:title])
  end
end
