require 'js'

DEFAULT_TARGET = 'https://github.com/nekketsuuu/nekke.to/actions/workflows/add.yml'

current = JS.global[:window][:location][:pathname].to_s.chomp('/')
target = {""=>"https://github.com/nekketsuuu/nekke.to", "/nohello"=>"https://nohello.net/", "/blog"=>"https://nekketsuuu.github.io/", "/blog/repo"=>"https://github.com/nekketsuuu/nekketsuuu.github.io", "/iam"=>"https://docs.aws.amazon.com/service-authorization/latest/reference/reference_policies_actions-resources-contextkeys.html", "/gandi"=>"https://d32ze2gidvkk54.cloudfront.net/Amazon_Route_53_Domain_Registration_Pricing_20140731.pdf?v=ERCTU", "/values"=>"https://scrapbox.io/nekketsuuu/%E3%82%AF%E3%83%83%E3%82%AF%E3%83%91%E3%83%83%E3%83%89%E3%81%AEValues"}.fetch(current, DEFAULT_TARGET)

puts({ current:, target: })

JS.global[:window][:location].replace(target)
