# frozen_string_literal: true

require 'play_pong'

describe PlayPong do
  it 'initializes without error' do
    expect { PlayPong.new }.not_to raise_error
  end
end