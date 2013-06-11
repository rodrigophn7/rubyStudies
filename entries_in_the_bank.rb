class EntriesInTheBank
	def get_formatted_date(time)
		"[" << time.strftime("%Y-%m-%d %H:%M:%S") << "]"
	end

	def get_registered_entry(time)
		get_formatted_date(time) + " - Abertura da Porta OK"
	end

end
