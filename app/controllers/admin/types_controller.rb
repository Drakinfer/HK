class Admin::TypesController < ApplicationController
  def index
    @types = Type.joins(:generation).order('generations.name')
    @attr = Type.attributes_sorted
  end

  def show
    @type = Type.find(params[:id])
    @attr = Type.attributes_sorted
  end

  def new
    @type = Type.new
    @attr = Type.attributes_sorted
    @generations = Generation.by_rank
  end

  def create
    type_params = type_params()
    @type = Type.new(type_params)

    begin
      @type.save
      redirect_to admin_type_url(@type.id), notice: 'Nouveau type enregistré'
      rescue => e
      flash[:warn] = e.message
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @type = Type.find(params[:id])
    @attr = Type.attributes_sorted
    @generations = Generation.by_rank
  end

  def update
    @type = Type.find(params[:id])
    type_params = type_params()
    @type.update(type_params)

    begin
      @type.save
      redirect_to admin_type_url(@type.id), notice: 'Changement enregistré'
    rescue => e
      flash[:warn] = e.message
      render :edit, status: :unprocessable_entity
    end
  end

  def toggle_type_active
    @type = Type.find(params[:id])
    @type.toggle_active!

    redirect_to admin_type_path(params[:id]), notice: 'Le statut a été modifié.'
  end

  private

  def type_params
    params.require(:type).permit(
      :name, :generation_id, :bug, :dark, :dragon, :electric, :fairy, :fighting, :fire, :flying, :ghost, :grass, :ground, :ice, :normal, :poison, :psychic, :rock, :steel, :water
    )
  end
end
