require 'pry'

class App
	attr_reader :name, :score

	def initialize(name, creator, system, score)
		@name = name
		@creator = creator
		@system = system
		@score = score
	end

	def setScore
		if @score == 10
			@score = "awesome"
		elsif @score == (7..9)
			@score = "very Cool"
		elsif @score == (5..6)
			@score = "good"
		else
			@score = "poor"
		end
	end

	def compare(app)
		if @score == app.score
			puts "#{@name} is just as good as #{app.name}."
		elsif @score > app.score
			puts "#{@name} is better than #{app.name}."
		else
			puts "#{@name} is worse than #{app.name}."
		end
	end

	def evaluation
		setScore
		puts "#{@creator} has developed #{@name} for #{@system} and has made an #{@score} application."
	end

	binding.pry
end