require "minitest/autorun"

describe "Docker" do

  describe "docker run" do

    describe "command is echo hello" do

      it "outputs hello" do
        assert_equal('hello', `docker run ubuntu echo hello`.strip!)
      end

    end

  end
end
