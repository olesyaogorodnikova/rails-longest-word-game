class GamesController < ApplicationController
  def new
  @letters = ('A'..'Z').to_a.sample(10)

end

  def score
    @letters = ('A'..'Z').to_a.sample(10)
    array = params[:answer].split
    array.each_with_index do |word, index|
    @letters.include?(word[index])
    end
  end
end
