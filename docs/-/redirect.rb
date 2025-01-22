require 'js'

DEFAULT_TARGET = 'https://github.com/nekketsuuu/nekke.to/actions/workflows/add.yml'

current = JS.global[:window][:location][:pathname].to_poro.chomp('/')
mapping = {""=>"https://github.com/nekketsuuu/nekke.to", "/actions"=>"https://docs.github.com/en/actions/writing-workflows/workflow-syntax-for-github-actions", "/actions/event"=>"https://docs.github.com/en/actions/writing-workflows/choosing-when-your-workflow-runs/events-that-trigger-workflows", "/blog"=>"https://nekketsuuu.github.io/", "/blog/repo"=>"https://github.com/nekketsuuu/nekketsuuu.github.io", "/compose"=>"https://docs.docker.com/reference/compose-file/", "/cops"=>"https://docs.rubocop.org/rubocop/cops.html", "/dockerfile"=>"https://docs.docker.com/reference/dockerfile/", "/entra"=>"https://entra.microsoft.com/", "/gandi"=>"https://d32ze2gidvkk54.cloudfront.net/Amazon_Route_53_Domain_Registration_Pricing_20140731.pdf?v=ERCTU", "/iam"=>"https://docs.aws.amazon.com/service-authorization/latest/reference/reference_policies_actions-resources-contextkeys.html", "/nemuru"=>"https://scrapbox.io/vtuber/%E5%AF%A7%E5%A4%A2%E3%81%AD%E3%82%80%E3%82%8B", "/nohello"=>"https://nohello.net/", "/r"=>"https://github.com/notifications?query=reason%3Aparticipating", "/rdoc"=>"https://docs.ruby-lang.org/en/", "/values"=>"https://scrapbox.io/nekketsuuu/%E3%82%AF%E3%83%83%E3%82%AF%E3%83%91%E3%83%83%E3%83%89%E3%81%AEValues", "/yure"=>"http://www.kmoni.bosai.go.jp/"}
target = mapping[current] || DEFAULT_TARGET

puts({ current: current, target: target })

JS.global[:window][:location].replace(target)
