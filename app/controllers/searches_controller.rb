class SearchesController < ApplicationController
  def new
    @search = Search.new
  end

  def create
    @search = Search.new(params[:search])
    if @search.save
      redirect_to @search
    else
      render :action => 'new'
    end
  end

  def show
    @search = Search.find(params[:id])
  end

  def update
    @search = Search.find(params[:id])
      if @search.update_attributes(params[:search])  #update the note
        redirect_to @search
      else
        render :edit                             #if not, render the form
      end
  end



end
