class Movie < ApplicationRecord
  # These values are provided by TMDb for creating valid URLs to images
  IMAGE_CONFIG = {
    base_url: 'http://image.tmdb.org/t/p/',
    poster_sizes: ["w92", "w154", "w185", "w342", "w500", "w780", "original"],
    backdrop_sizes: ["w300", "w780", "w1280", "original"]
  }

  def poster(size = "w780")
    if poster_path
      IMAGE_CONFIG[:base_url] + size + poster_path
    else
      'http://placehold.it/780x1170/?text="Poster not available"'
    end
  end

  def backdrop(size = "w1280")
    if backdrop_path
      IMAGE_CONFIG[:base_url] + size + backdrop_path
    else
      'http://placehold.it/1280x720/?text=Backdrop not available'
    end
  end
end
