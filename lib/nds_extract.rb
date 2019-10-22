$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  result = {}
director_index = 0
while director_index < nds.length do
#going through the list of directors and listing key/value pair
name = nds[director_index][:name]
grand_total = 0
movie_index = 0
movies = nds[director_index][:movies]
while movie_index < movies.length do
    grand_total += movies[movie_index][:worldwide_gross]
  movie_index += 1
end
    result[name] = grand_total
  director_index += 1
end
result
end
  


 # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  
  #  result = {
   #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  # ...
  # ...
  # ...
  # Be sure to return the result at the end!
