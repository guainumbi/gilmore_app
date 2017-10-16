class ReferencesController < ApplicationController
  def index
  end

  def new
  end

  def create
    Reference.create(name: params[:name])
    redirect_to references_path
  end

end
