class GossipsController < ApplicationController

  def new
    @gossip = Gossip.new
  end

  def create
    @gossip = Gossip.new(title: params[:title],
                        content: params[:content],
                          user_id: 1)
    puts "#{@gossip.title}, #{@gossip.content}"

    if @gossip.save
      redirect_to '/home/n'
      puts "The gossip has been saved"
    else
      render 'new'
    end


  end

end
