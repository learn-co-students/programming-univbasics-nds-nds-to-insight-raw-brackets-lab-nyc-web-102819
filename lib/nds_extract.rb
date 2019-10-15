$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  total_hash = {}
  nds.length.times{|i|
    total = 0
    nds[i][:movies].length.times { |j|
      total += nds[i][:movies][j][:worldwide_gross]
    }
    total_hash[nds[i][:name]] = total
  }
  total_hash
end
