require_relative "../lib/LibFIPC.rb"

require 'test/unit'



class TestLibConfig < Test::Unit::TestCase

	self.test_order = :defined

	def test_send()

		p "sending.."
		ret = FIPC.send("channels/1","hello_1")
		assert_equal(true,ret)
		ret = FIPC.send("channels/1","hello_2")
		assert_equal(true,ret)
		ret = FIPC.send("channels/1","hello_3")
		assert_equal(true,ret)	


	end

	def test_receive()

		p "receiving..."
		ret=FIPC.receive("channels/1")
		p ret
		assert_equal("hello_1",ret)
		ret=FIPC.receive("channels/1")
		p ret
		assert_equal("hello_2",ret)
		ret=FIPC.receive("channels/1")
		p ret
		assert_equal("hello_3",ret)
		#assert arr.length>0

	end


	def test_reset()

		ret = FIPC.send("channels/x","hello_1")
		ret = FIPC.reset("channels/x")
		assert_equal(true,ret)			

	end





end
