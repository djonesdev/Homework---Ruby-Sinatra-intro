require 'sinatra'
require_relative './TodoManager.rb'

get '/todos' do 
	TodoManager.index
end

post "/todos/:new_todo" do 
	"CREATE"
	new_todo = params[:new_todo]
	TodoManager.create new_todo
end

get "/todos/:id" do 
	id = params[:id].to_i
	TodoManager.show(id)
	# "show: #(id)"
end

put "/todos/:id/:new_todo" do 
	"UPDATE"
	id = params[:id]
	new_todo = params[:new_todo]
	id = id.to_i
	i = TodoManager.update id,new_todo
	"show: hello"
end 

delete "/todos/:id" do 
	id = params[:id].to_i
	TodoManager.delete(id)
	"DELETE: #{id}"
end 