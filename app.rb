require './environment'

module FormsLab
	class App < Sinatra::Base

		get '/'  do
			erb :root
		end

		get '/new' do
			erb :"pirates/new"
		end

		post '/pirates' do
			@pirate = {
				name: params[:name],
				weight: params[:weight],
				height: params[:height]
			}
			@ship1 = {
				name: params[:ship1name],
				type: params[:ship1type],
				booty: params[:ship1booty]
			}
			@ship2 = {
				name: params[:ship2name],
				type: params[:ship2type],
				booty: params[:ship2booty]
			}

			erb :"pirates/show"
		end

	end
end
