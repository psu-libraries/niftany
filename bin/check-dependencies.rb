require 'net/http'
require 'json'
require 'pp'

result = Hash.new

lines = File.readlines(File.expand_path("../niftany.gemspec", __dir__))
lines = lines.each { |l| l.strip! }
lines = lines.select { |l| l.start_with?("spec.add_dependency") }

lines.each do |l|
  dependency = l.split[1].tr("'", '').tr(",", '')

  uri = URI("https://rubygems.org/api/v1/gems/#{dependency}.json")
  response = Net::HTTP.get_response(uri)

  if response.code == '200'
    data = JSON.parse(response.body)
    version = data['version']
    
    result[dependency] = version
  else
    puts "Request for #{dependency} failed with status #{response.code}"
  end
end

result.each do |key, value|
  puts "spec.add_dependency '#{key}', '~> #{value}'" 
end
