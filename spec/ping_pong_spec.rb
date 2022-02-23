# frozen_string_literal: true

require 'ping_pong'

describe PingPong do
  it 'initializes without error' do
    expect { PingPong.new }.not_to raise_error
  end

  describe '#play' do
    it 'returns ping when number is divisible by 3' do
      ping = PingPong.new
      expect(ping.play(3)).to eq [1, 2, 'ping']
    end

    it 'returns pong when number is divisible by 5' do
      ping = PingPong.new
      expect(ping.play(5)).to eq [1, 2, 'ping', 4, 'pong']
    end

    it 'returns ping-pong when number is divisible by both 3 and 5' do
      ping = PingPong.new
      expect(ping.play(15)).to eq [1, 2, 'ping', 4, 'pong', 'ping', 7, 8, 'ping', 'pong', 11, 'ping', 13, 14, 'ping-pong']
    end

    it 'allows you to play 1' do
      ping = PingPong.new
      expect(ping.play(1)).to eq [1]
    end

    it 'allows you to play 2' do
      ping = PingPong.new
      expect(ping.play(2)).to eq [1, 2]
    end

    it 'allows you to play 3' do
      ping = PingPong.new
      expect(ping.play(3)).to eq [1, 2, 'ping']
    end

    it 'allows you to play 4' do
      ping = PingPong.new
      expect(ping.play(4)).to eq [1, 2, 'ping', 4]
    end

    it 'allows you to play 5' do
      ping = PingPong.new
      expect(ping.play(5)).to eq [1, 2, 'ping', 4 ,'pong']
    end

    it 'allows you to play 6' do
      ping = PingPong.new
      expect(ping.play(6)).to eq [1, 2, 'ping', 4, 'pong', 'ping']  
    end

    it 'allows you to play 7' do
      ping = PingPong.new
      expect(ping.play(7)).to eq [1, 2, 'ping', 4, 'pong', 'ping', 7]
    end

    it 'allows you to play 8' do
      ping = PingPong.new
      expect(ping.play(8)).to eq [1, 2, 'ping', 4, 'pong', 'ping', 7, 8]
    end

    it 'allows you to play 9' do
      ping = PingPong.new
      expect(ping.play(9)).to eq [1, 2, 'ping', 4, 'pong', 'ping', 7, 8, 'ping']
    end

    it 'allows you to play 10' do
      ping = PingPong.new
      expect(ping.play(10)).to eq [1, 2, 'ping', 4, 'pong', 'ping', 7, 8, 'ping', 'pong']
    end

    it 'allows you to play 11' do
      ping = PingPong.new
      expect(ping.play(11)).to eq [1, 2, 'ping', 4, 'pong', 'ping', 7, 8, 'ping', 'pong', 11]
    end

    it 'allows you to play 12' do
      ping = PingPong.new
      expect(ping.play(12)).to eq [1, 2, 'ping', 4, 'pong', 'ping', 7, 8, 'ping', 'pong', 11, 'ping']
    end

    it 'allows you to play 13' do
      ping = PingPong.new
      expect(ping.play(13)).to eq [1, 2, 'ping', 4, 'pong', 'ping', 7, 8 ,'ping', 'pong', 11, 'ping', 13]
    end

    it 'allows you to play 14' do
      ping = PingPong.new
      expect(ping.play(14)).to eq [1, 2, 'ping', 4, 'pong', 'ping', 7, 8, 'ping', 'pong', 11, 'ping', 13, 14]
    end

    it 'allows you to play 15' do
      ping = PingPong.new
      expect(ping.play(15)).to eq [1, 2, 'ping', 4, 'pong', 'ping', 7, 8, 'ping', 'pong', 11, 'ping', 13, 14, 'ping-pong']
    end

    it 'allows you to play 16' do
      ping = PingPong.new
      expect(ping.play(16)).to eq [1, 2, 'ping', 4, 'pong', 'ping', 7, 8, 'ping', 'pong', 11, 'ping', 13, 14, 'ping-pong', 16]
    end
    
    it 'allows you to play 17' do
      ping = PingPong.new
      expect(ping.play(17)).to eq [1, 2, 'ping', 4, 'pong', 'ping', 7, 8, 'ping', 'pong', 11, 'ping', 13, 14, 'ping-pong', 16, 17]
    end

    it 'allows you to play 18' do
      ping = PingPong.new
      expect(ping.play(18)).to eq [1, 2, 'ping', 4, 'pong', 'ping', 7, 8, 'ping', 'pong', 11, 'ping', 13, 14, 'ping-pong', 16, 17, 'ping']
    end

    it 'allows you to play 19' do
    ping = PingPong.new
    expect(ping.play(19)).to eq  [1, 2, 'ping', 4, 'pong', 'ping', 7, 8, 'ping', 'pong', 11, 'ping', 13, 14, 'ping-pong', 16, 17, 'ping', 19]
    end

    it 'allows you to play 20' do
      ping = PingPong.new
      expect(ping.play(20)).to eq [1, 2, 'ping', 4, 'pong', 'ping', 7, 8, 'ping', 'pong', 11, 'ping', 13, 14, 'ping-pong', 16, 17, 'ping', 19, 'pong']
    end

    it 'allows you to play 30' do
      ping = PingPong.new
      expect(ping.play(30)).to eq [1, 2, 'ping', 4, 'pong', 'ping', 7, 8, 'ping', 'pong', 11, 'ping', 13, 14, 'ping-pong', 16, 17, 'ping', 19, 'pong', 'ping', 22, 23, 'ping', 'pong', 26, 'ping', 28, 29, 'ping-pong']      
    end

    it 'does not allow you to play 0' do
      ping = PingPong.new
      expect(ping.play(0)).to eq []
    end

    context 'negative numbers' do
      it 'gives you an empty response if you give it a negative number' do
        ping = PingPong.new
        expect(ping.play(-1)).to eq []
      end

      it 'still gives you that error with other numbers' do
        ping = PingPong.new 
        expect(ping.play(-4)).to eq []
      end

      it 'does not allow you to play negative numbers' do
        ping = PingPong.new
        expect(ping.play(-20)).to eq []
      end

      it 'still doesn\'t allow for negative numbers' do
        ping = PingPong.new
        expect(ping.play(-300)).to eq [] 
      end
    end
  end
end