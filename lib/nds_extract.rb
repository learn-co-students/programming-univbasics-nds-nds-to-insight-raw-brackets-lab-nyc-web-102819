$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'

def directors_totals(nds)
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  
  result = {}
  dir_db_ar_index = 0
  
  while dir_db_ar_index < directors_database.length do
    dir_name = directors_database[dir_db_ar_index][:name]
    movies = directors_database[dir_db_ar_index][:movies]
    movies_index = 0
    movies_total = 0 
    while movies_index < movies.length do
      movie_gross = movies[movies_index][:worldwide_gross]
      movies_total += movie_gross
      movies_index += 1
    end
    result[dir_name] = movies_total
    dir_db_ar_index += 1 
  end
  
  result
  
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  # ...
  # ...
  # ...
  #
  # Be sure to return the result at the end!
  
end
