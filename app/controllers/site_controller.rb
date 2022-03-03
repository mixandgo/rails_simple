class SiteController < ApplicationController
  def index
    @name = Person.name
  end
end
