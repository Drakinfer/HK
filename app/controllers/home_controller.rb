class HomeController < ApplicationController
  layout 'application'
  def index
    @announces = Index.get_announces
    @indexes = Index.get_indexes
  end
end
