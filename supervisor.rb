require_relative "lib/LibFRPC.rb"


$jobs = ["configLoader"]

def start_job(job)
   
    job1 = fork do
        exec "ruby "+job+".rb"
    end
    
    Process.detach(job1)

end




def stop_job(job)

    		FRPC.exec("channels/"+job,"stop_server")

end

def start_all()

    $jobs.each {

        |job|
        
        start_job(job)

    }

end




def stop_all()

      $jobs.each {

        |job|
        
        stop_job(job)

    }

end 



start_all()
sleep(10)
stop_all()
