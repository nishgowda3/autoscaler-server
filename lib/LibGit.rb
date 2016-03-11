require 'open3'

class LibGit



	def self.pullChanges(dir,branch)


				cmd = "git --git-dir="+dir+"/.git --work-tree="+dir+" pull origin "+branch

				out, err, st = Open3.capture3(cmd) 

				cmd = "git --git-dir="+dir+"/.git --work-tree="+dir+" checkout "+branch
				out, err, st = Open3.capture3(cmd)  

	end


	def self.getLocalHash(dir,branch)

		cmd = "git --git-dir="+dir+"/.git --work-tree="+dir+" rev-parse "+branch
		out, err, st = Open3.capture3(cmd)     # BAD

		if err == ""

			return out.strip

		end

		return "NO-DATA"

	end


	def self.getRemoteHash(dir,branch)

		cmd = "git --git-dir="+dir+"/.git --work-tree="+dir+" ls-remote"
		out, err, st = Open3.capture3(cmd)     # BAD
		
		ret = out
		lines = ret.split("\n")

		res=""

		#p lines

		lines.each{

			|line|

			if line.include? "refs/heads/release"

				parts=line.split("\t")

				return parts[0]
			end
		}


		return "NO-DATA"

	end


end


