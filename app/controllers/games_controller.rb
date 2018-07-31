require 'open-uri'

class GamesController < ApplicationController
  def new
    @letters = Array.new(8) {('A'..'Z').to_a.sample}
  end

  def score
    answer = params[:answer].upcase
    letters = params[:letters].split


    if included?(letters, answer)
      @display = "hurray"
    else
      @display = "nope"
    end
  end

  def included?(letters, answer)
    answer.chars.all? { |letter| answer.count(letter) <= letters.count(letter) }
  end

  def english_word?
  end


end
