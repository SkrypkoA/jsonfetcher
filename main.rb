require 'rubygems'
require 'jsonfetcher'
params = Hash[*ARGV]
user_id = params['user_id:']
log_file_path = params['output:']
client = Jsonfetcher::Client.new
posts = client.posts(user_id)

$stdout.reopen(log_file_path) if log_file_path

puts '#' * 18
posts.each do |post|
  puts "#{post.user_id} : #{post.title}"
  puts post.body
  puts '#' * 18
end