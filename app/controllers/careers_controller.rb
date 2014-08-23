class CareersController < ApplicationController

  def index
    @careers = Career.not_deleted
  end

  def show
    @career = Career.find(params[:id])
  end

  def new
    @career = Career.new
  end

  def create
    @career = Career.new(career_params)

    begin
      @career.transaction do
        @career.save!
      end

      redirect_to :action => 'show', :id => @career.id

    rescue ActiveRecord::RecordInvalid => e
      render :new
    end
  end

  def edit
    @career = Career.find(params[:id])
  end

  def update
    @career = Career.find(params[:id])
    @career.attributes = params[:career_params]

    begin
      @career.transaction do
        @career.save!
      end

      redirect_to :action => 'show', :id => @career.id

    rescue ActiveRecord::RecordInvalid => e
      render :edit
    end
  end

  def destroy
    @career = Career.find(params[:id])

    @career.transaction do
      @career.destroy_logically!
    end

    redirect_to :action => 'index'
  end

  private

  def career_params
    params.require(:career).permit!
  end

end
