class StaticPagesController < ApplicationController

  def home
  end

  def help
  end
  
  def about
  end

  def contact
  end

  def tournament
  end

  def rules
  end

  def gallery
    @images = Dir.glob("app/assets/images/gallery/*.{gif,jpg,png}")
  end

  def teamlist
  end
end
