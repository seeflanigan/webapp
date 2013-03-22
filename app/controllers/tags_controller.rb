class TagsController < ApplicationController
  binding.pry
  def index
    @tags = Tag.all
  end

  def show
    @tag = Tag.find(params[:id])
  end

  def destroy
    @tag = Tag.find(params[:id])
    @tag.destroy
    flash[:notice] = "Category '#{@tag.name}' destroyed!"
    redirect_to tags_path
  end
end

