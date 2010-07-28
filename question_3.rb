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

puts FILE.split("\n").size
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
