class QuizzesController < ApplicationController
  def index
    render 'index.html.erb'
  end

  def new
    render 'new.html.erb'
  end

  def create
    result = Quiz.new(
      answer1: params[:answer1],
      answer2: params[:answer2],
      answer3: params[:answer3]
    )
    result.save
    redirect_to "/results"
  end

  def result
    result = Quiz.last

    count = {
      red: 0,
      orange: 0,
      yellow: 0,
      green: 0,
      blue: 0,
      purple: 0,
    }

    if result.answer1 == "Confident"
      count[:red] += 1
    elsif result.answer1 == "Trusting"
      count[:blue] += 1
    else result.answer1 == "Structured"
      count[:green] += 1
    end

    if result.answer2 == "Spontaneous"
      count[:red] += 1
    elsif result.answer2 == "Dreamer"
      count[:yellow] += 1
    else result.answer2 == "Analytical"
      count[:green] += 1
    end

    if result.answer3 == "Stubborn"
      count[:green] += 1
    elsif result.answer3 == "Dictatorial"
      count[:purple] += 1
    else result.answer3 == "Rebellious"
      count[:orange] += 1
    end

    if result.answer4 == "Persistent"
      count[:orange] += 1
    elsif result.answer4 == "Demanding"
      count[:purple] += 1
    else result.answer4 == "Passionate"
      count[:red] += 1
    end

    if result.answer5 == "Nurturing"
      count[:orange] += 1
    elsif result.answer5 == "Cautious"
      count[:yellow] += 1
    else result.answer5 == "Harmonious"
      count[:blue] += 1
    end

    if result.answer6 == "Energetic"
      count[:orange] += 1
    elsif result.answer6 == "Over-Generous"
      count[:red] += 1
    else result.answer6 == "Spunky"
      count[:purple] += 1
    end

    if result.answer7 == "Forceful"
      count[:red] += 1
    elsif result.answer7 == "Disciplined"
      count[:green] += 1
    else result.answer7 == "Charismatic"
      count[:purple] += 1
    end

    if result.answer8 == "Believable"
      count[:yellow] += 1
    elsif result.answer8 == "Dutiful"
      count[:blue] += 1
    else result.answer8 == "Idealist"
      count[:green] += 1
    end

    if result.answer9 == "Daring"
      count[:yellow] += 1
    elsif result.answer9 == "Compassionate"
      count[:orange] += 1
    else result.answer9 == "Logical"
      count[:blue] += 1
    end

    p count[:red]
    p count[:orange]
    p count[:yellow]
    p count[:green]
    p count[:blue]
    p count[:purple]

# REMEMBER: change #color to Color.find_by(hex: '#8b0000').hex to use the Color table!
    if count.max_by { |k, v| v }[0] == :red
      @color_name = 'RED'
      @color = '#8b0000'
    elsif count.max_by { |k, v| v }[0] == :orange
      @color_name = 'ORANGE'
      @color = '#ffa500'
    elsif count.max_by { |k, v| v }[0] == :yellow
      @color_name = 'YELLOW'
      @color = '#ffd700'
    elsif count.max_by { |k, v| v }[0] == :green
      @color_name = 'GREEN'
      @color = '#008000'
    elsif count.max_by { |k, v| v }[0] == :blue
      @color_name = 'BLUE'
      @color = '#0099cc'
    elsif count.max_by { |k, v| v }[0] == :purple
      @color_name = 'PURPLE'
      @color = '#800080'
    end

    render 'show.html.erb'
  end
end
