class Admin::GenerationsController < ApplicationController
  def index
    @generations = Generation.by_rank
  end

  def new
    @generation = Generation.new
  end

  def create
    generation_params = generation_params()
    @generation = Generation.new(generation_params)

    begin
      @generation.save
      redirect_to admin_generations_url, notice: 'Nouveau type enregistré'
    rescue => e
      flash[:warn] = e.message
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @generation = Generation.find(params[:id])
  end

  def update
    @generation = Generation.find(params[:id])
    generation_params = generation_params()
    @generation.update(generation_params)

    begin
      @generation.save
      redirect_to admin_generations_url, notice: 'Changement enregistré'
    rescue => e
      flash[:warn] = e.message
      render :edit, status: :unprocessable_entity
    end
  end


  private
  def generation_params
    params.require(:generation).permit(
      :name, :rank
    )
  end
end
