require 'js'

DEFAULT_TARGET = 'https://github.com/nekketsuuu/nek-link'

current = JS.global[:window][:location][:pathname].to_s
target = {"/"=>"https://github.com/nekketsuuu"}.fetch(current, DEFAULT_TARGET)

puts({ current:, target: })

JS.global[:window][:location].replace(target)
