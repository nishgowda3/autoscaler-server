require_relative "LibGit"

class LibUpdater


	def listRepos()

		dirs= Dir[ServerConfig.get("repoLocation")+"/*"]

		repos=[]

		dirs.each {

			|dir|


			if  Dir.exists?(dir+"/.git")

				repos.push(dir)

			end

		}


		return repos



	end


	def getOutdatedRepos(repos)

		repos.each{

			|repo|


			localHash =	LibGit.getLocalHash(repo,"release")
			remoteHash = LibGit.getRemoteHash(repo,"release")

			if localHash != remoteHash
				LibGit.pullChanges(repo,"release")
			end


		}



	end

	def updateRepos()

		repos=  listRepos()
		getOutdatedRepos(repos)
	end

end
