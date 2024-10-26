require 'js'

DEFAULT_TARGET = 'https://github.com/nekketsuuu/nekke.to/actions/workflows/add.yml'

current = JS.global[:window][:location][:pathname].to_s.chomp('/')
target = {""=>"https://github.com/nekketsuuu/nekke.to", "/nohello"=>"https://nohello.net/", "/blog"=>"https://nekketsuuu.github.io/"}.fetch(current, DEFAULT_TARGET)

puts({ current:, target: })

JS.global[:window][:location].replace(target)
