require 'js'

DEFAULT_TARGET = 'https://github.com/nekketsuuu/nek-link'

current = JS.global[:window][:location][:pathname].to_s.chomp('/')
target = {"/"=>"https://github.com/nekketsuuu", "/nohello"=>"https://nohello.net/"}.fetch(current, DEFAULT_TARGET)

puts({ current:, target: })

JS.global[:window][:location].replace(target)
