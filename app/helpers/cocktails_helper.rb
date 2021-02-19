module CocktailsHelper
  def cocktail_image_tag(cocktail)
    if cocktail.photo.attached?
      cl_image_tag(cocktail.photo.key)
    else
      # cl_image_path('cocktail_placeholder')
      image_tag('Cocacola.jpg')
    end
  end


end
