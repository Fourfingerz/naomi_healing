module Casein
	class DashboardController < Casein::CaseinController

		def index
			@visits = Visit.currentday.sorted
			@clients = Client.all
		end
	end
end