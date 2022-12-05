class PagesController < ApplicationController
  def home
  end

  def about
    @categories = ["Dons", "Services", "Covoiturage", "Professionels", "Offres d'emplois"]

    if params[:categorie]
      @categories = @categories.select { |categorie| categorie.start_with?(params[:categorie]) }
    end
    raise
  end

  def contact
  end
end
