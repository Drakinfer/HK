class Admin::IndicesController < ApplicationController
  def index
    @indexes = Index.all()
  end

  def show
    @index = Index.find(params[:id])
  end

  def new
    @index = Index.new
  end

  def create
    # Assurez-vous d'avoir une méthode privée qui sécurise et filtre les paramètres attendus
    index_params = index_params()

    # Créez l'objet @indices avec les paramètres filtrés
    @index = Index.new(index_params)

    # Essayez de sauvegarder l'objet @indices dans la base de données
    if @index.save

      # Si la sauvegarde réussit, redirigez vers l'objet @indices (cela utilisera la route show de l'indices)
      redirect_to admin_index_url(@index.id), notice: 'Nouveau paragraphe enregistré'
    else
      # Si la sauvegarde échoue à cause de validations, réaffichez le formulaire 'new' avec les erreurs
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @index = Index.find(params[:id])
  end

  def update
    @index = Index.find(params[:id])
    index_params = index_params()
    @index.update(index_params)

    if @index.save
      # Si la sauvegarde réussit, redirigez vers l'objet @indices (cela utilisera la route show de l'indices)
      redirect_to admin_index_url(@index.id), notice: 'Changement enregistré'
    else
      # Si la sauvegarde échoue à cause de validations, réaffichez le formulaire 'new' avec les erreurs
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @index = Index.find(params[:id])

    if @index.destroy
      redirect_to admin_indices_path
    else
      flash[:warn] = "La suppression a échoué"
      redirect_to :back
    end
  end

  private

  # Utilisez cette méthode pour filtrer les paramètres de l'indices
  def index_params
    # Remplacez :indices par vos paramètres réels attendus pour un objet Index
    params.require(:index).permit(:title, :paraph, :important, :rank)
  end
end
