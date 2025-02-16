module MoviesHelper

  def total_gross(movie)
    if movie.flop?
      "Flop!"
    else
      number_to_currency(movie.total_gross, precision: 0)
    end
  end

  def year_of(movie)
    movie.released_on.year
  end

  def nav_link_to(filter, path)
    if current_page?(path)
      link_to(filter, path, class: "active")
    else
      link_to(filter, path)
    end
  end

end
