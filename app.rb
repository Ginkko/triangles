require('sinatra')
require('sinatra/reloader')
require('./lib/triangles')
also_reload('lib/**/*.rb')

get ('/') do
  erb(:index)
end

get('/triangle') do

  @triangle_type = Triangle.new(params.fetch("a").to_i, params.fetch("b").to_i, params.fetch("c").to_i).triangle_type()
  erb(:triangle)

end
