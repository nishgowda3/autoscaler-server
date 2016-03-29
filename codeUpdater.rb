require_relative "lib/ServerConfig"
require_relative "lib/initConfig"
require_relative "lib/LibUpdater"
require_relative "lib/LibFRPC.rb"

CU = LibUpdater.new()

def main()

	puts "CU: "
	p CU.updateRepos()
	sleep(2)

end 


def stop_server()

    abort("codeupdater terminated by supervisor.")

end

while true do
	
	main()

end
