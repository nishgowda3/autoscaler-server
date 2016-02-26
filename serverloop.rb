require_relative "ServerConfig"
require_relative "lib/initConfig"
require_relative "lib/LibConfig.rb"


LC= LibConfig.new()

def main()

    puts "hello"
 	p LC.populateRepos()   
    sleep(2)
     

end 






while true do

    main()

end

