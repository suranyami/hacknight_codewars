require 'mathn'

class Prime
  def self.find(n)
    p = Prime.new
    result = p.succ
    (n-1).times do
      result = p.succ
    end
    result
  end
end

puts "Found: #{Prime.find(100)}"