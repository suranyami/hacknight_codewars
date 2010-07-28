contents = ''
File.open('2600.txt') {|file|
  contents = file.read
}

sentences = contents.split(/[\.\?\!]\"*/)
puts "#{sentences.size}"

s = sentences.select {|sentence| sentence.match(/Prince Vasili/) && sentence.match(/Anna Pavlovna/) }
puts "#{s.size}"

puts "#{s.last.strip}"
