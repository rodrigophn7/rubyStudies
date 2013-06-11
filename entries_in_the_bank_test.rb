require "test/unit"
require "./entries_in_the_bank"

class EntriesInTheBankTest < Test::Unit::TestCase 
	
	def setup
		@time = Time.local(2001,03,01, 17,51,31)
		@entries = EntriesInTheBank.new
	end

	def test_get_formatted_date
		assert_equal("[2001-03-01 17:51:31]", @entries.get_formatted_date(@time))
	end

	def test_register_is_right
		assert_equal("[2001-03-01 17:51:31] - Abertura da Porta OK", @entries.get_registered_entry(@time))
	end

end
