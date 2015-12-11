module MoviesHelper
  # Checks if a number is odd:
  def oddness(count)
    count.odd? ?  "odd" :  "even"
  end
  
  
  def helper_sort(movie)
    if(params[:sort].to_s == 'title')
      return movie.title
    elsif(params[:sort].to_s == 'release')
      return movie.release_date.to_s
    end 
  end
  
  # def sorting_on_a_column(column, title = nil)
  #     title ||= column.titleize
  #     css_class = column == sort_column ? "hilite #{sort_direction}" : nil
  #     direction = column == sort_column && sort_direction == "asc" ? "desc" : "asc"
  #     link_to title, {:sort => column, :direction => direction}, {:class => css_class}
  #   end
end
