
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


	def updateRepos()

		return listRepos()
	end

end
