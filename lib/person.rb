class Person
	attr_reader :name, :happiness, :hygiene
	attr_accessor :bank_account

	def initialize(name, bank_account=25, happiness=8, hygiene=8)
		@name = name
		@bank_account = bank_account
		@happiness = happiness
		@hygiene = hygiene
	end

	def happiness= (int)
		if int > 10
			@happiness = 10
		elsif int < 0
			@happiness = 0
		else @happiness = int
		end
	end

	def hygiene= (int)
		if int > 10
			@hygiene = 10
		elsif int < 0
			@hygiene = 0
		else @hygiene = int
		end
	end

	def happy?
		if @happiness > 7
			true
		else false
		end
	end

	def clean?
		if @hygiene > 7
			true
		else false
		end
	end

	def take_bath

		self.hygiene += 4
		return "♪ Rub-a-dub just relaxing in the tub ♫"
	end

	def get_paid(salary)
		self.bank_account += salary
		return 'all about the benjamins'
	end

	def work_out
		self.happiness += 2
		self.hygiene -= 3
		return "♪ another one bites the dust ♫"
	end

	def call_friend(person)
		person.happiness += 3
		self.happiness += 3
		return "Hi #{person.name}! It's #{self.name}. How are you?"
	end

	def start_conversation(person, topic)
		if topic == "politics"
			person.happiness -= 2
			self.happiness -= 2
			return "blah blah partisan blah lobbyist"
		elsif topic == "weather"
			person.happiness += 1
			self.happiness += 1
			return "blah blah sun blah rain"
		else
		return "blah blah blah blah blah"
		end
	end
end
