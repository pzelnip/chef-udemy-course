package 'apache2' do
  action :install
end

file '/var/www/html/index.html' do
  content '<h1>Hello World, this was created by Chef</h1>'
end

service 'apache2' do
  action ['enable', 'start']
end
