require_relative "lib/ServerConfig"
require_relative "lib/initConfig"
require_relative "lib/LibUpdater"


CU = LibUpdater.new()

def main()

	puts "CU: "
	p CU.updateRepos()
	sleep(2)

end 


while true do
	
	main()

end