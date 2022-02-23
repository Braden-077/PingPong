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

    it 'does not allow you to play negative numbers' do
      ping = PingPong.new
      expect(ping.play(-1)).to raise_error
    end
  end
end