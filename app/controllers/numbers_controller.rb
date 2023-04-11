class NumbersController < ApplicationController
  def winners
    @zebra = Array.new

    5.times do
      giraffe = rand(1...100)
      
      @zebra.push(giraffe)
    end

    render({ :template => "lottery_stuff/woohoo.html.erb"})
  end 

  def losers
    @unlucky_set = Array.new

    5.times do
    @unlucky = rand(1...100)

    @unlucky_set.push(@unlucky)
  end

  render({ :template => "lottery_stuff/boo.html.erb"})
end
end
