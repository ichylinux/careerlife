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

      redirect_to :action => 'show', :id => @career.id, :notice => t('messages.created', :name => Career.model_name.human)

    rescue ActiveRecord::RecordInvalid => e
      render :new
    end
  end

  def new_career_detail
    @career_detail = CareerDetail.new
    render :partial => 'career_detail_fields', :locals => {:career_detail => @career_detail, :index => params[:index]}
  end

  def edit
    @career = Career.find(params[:id])
  end

  def update
    @career = Career.find(params[:id])
    @career.attributes = career_params

    begin
      @career.transaction do
        @career.save!
      end

      redirect_to :action => 'show', :id => @career.id, :notice => t('messages.updated', :name => Career.model_name.human)

    rescue ActiveRecord::RecordInvalid => e
      render :edit
    end
  end

  def destroy
    @career = Career.find(params[:id])

    @career.transaction do
      @career.destroy_logically!
    end

    redirect_to :action => 'index', :notice => t('messages.deleted', :name => Career.model_name.human)
  end

  private

  def career_params
    params.require(:career).permit!
  end

end
