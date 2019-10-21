require 'gossip'

class ApplicationController < Sinatra::Base

    get '/' do

        erb :index

    end


    get '/gossips/new/' do

    erb :new_gossip

      
    end

    post '/gossips/new/' do

        puts "Ce programme ne fait rien pour le moment, on va donc afficher un message dans le terminal"

        Gossip.new.save

      end



      post '/gossips/new/' do
        puts "Salut, je suis dans le serveur"
        puts "Ceci est le contenu du hash params : #{params}"
        puts "Trop bien ! Et ceci est ce que l'utilisateur a passé dans le champ gossip_author : #{params["gossip_author"]}"
        puts "De la bombe, et du coup ça, ça doit être ce que l'utilisateur a passé dans le champ gossip_content : #{params["gossip_content"]}"
        puts "Ça déchire sa mémé, bon allez je m'en vais du serveur, ciao les BGs !"
      end

      post '/gossips/new/' do
        # action de créer un nouveau gossip
        Gossip.new(params['gossip_author'], params['gossip_content']).save
        redirect '/'
      end
    
      get '/gossips/:id/' do
        # show un gossip
        erb :show, locals: { gossip: Gossip.find(params['id']), comments: Comment.find(params['id']) }
      end
    

    





end

