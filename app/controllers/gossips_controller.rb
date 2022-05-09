class GossipsController < ApplicationController

  def index
    @gossips = Gossip.all
    puts "ok"
  end

  def show
    @gossip = Gossip.find(params[:id])
  end

  def create
    @gossip = Gossip.new(title: params[:title], content: params[:content], user_id: current_user.id) # avec xxx qui sont les données obtenues à partir du formulaire

    if @gossip.save # essaie de sauvegarder en base @gossip
      # si ça marche, il redirige vers la page d'index du site
      puts "Tu as réussi"
      redirect_to gossips_path
    else
      # sinon, il render la view new (qui est celle sur laquelle on est déjà)
      puts "ca ne fontionne pas"
      render new_gossip_path
    end
  end
  

end
