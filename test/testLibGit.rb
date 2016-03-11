require_relative "../lib/LibGit.rb"
require 'test/unit'


class TestLibGit < Test::Unit::TestCase

	def test_GetLocalHash()

		hash=LibGit.getLocalHash("/home/silva/test/autoscaler-server/test/data/syndev","release")

		assert_equal(40,hash.length)

		hash=LibGit.getLocalHash("/home/silva/test/autoscaler-server/test/data/sTTTndev","release")

		assert_not_equal(40,hash.length)


	end


	def test_GetRemoteHash()

		hash=LibGit.getRemoteHash("/home/silva/test/autoscaler-server/test/data/syndev","release")

		assert_equal(40,hash.length)

		hash=LibGit.getRemoteHash("/home/silva/test/autoscaler-server/test/data/sTTTndev","release")

		assert_not_equal(40,hash.length)


	end


end
