require 'pp'

FILE = <<EOF
Alex $198000 98
Barry $159000 92
Carlton $138000 87
Donald $112000 67
Everett $150000 78
Frank $135000 71
Gerhardt $143000 82
Hank $171000 93
Isaac $111000 69
EOF

players = FILE.split("\n").collect do |player|
  name, cash, performance_score = player.split(' ')
  cash = cash.gsub('$', '').to_i
  performance_score = performance_score.to_i
  [name, cash, performance_score]
end.sort() {|a,b|
  a[2] <=> b[2]
}.reverse

players.each do |player|
  pp player
end

def total(array)
  result = 0
  array.each {|item| result += item[2]}
  result
end

def cost(array)
  result = 0
  array.each {|item| result += item[1]}
  result
end

high_performers = players.combination(5).to_a.sort do |a, b|
  ta, tb = total(a), total(b)
  ta <=> tb
end.reverse.reject {|i| cost(i) > 700000}

high_performers.each do |h|
  puts "#{h.inspect}, total = #{total(h)}, cost = #{cost(h)}"
end