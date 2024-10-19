require 'js'

DEFAULT_TARGET = 'https://github.com/nekketsuuu/nek-link'

current = JS.global[:window][:location][:pathname].to_s.chomp('/')
target = {"/"=>"https://github.com/nekketsuuu", "/test"=>"http://example.com", "/test2"=>"http://example.com", "/test3"=>"http://example.com", "/test4"=>"http://example.com"}.fetch(current, DEFAULT_TARGET)

puts({ current:, target: })

JS.global[:window][:location].replace(target)
