# PingPong

This is a fizzbuzz labeled as PingPong. The app is written in Ruby and uses the testing platform Rspec.
The app uses ```Ruby 3.0.3```

# Getting Started
To get started, run these commands into your terminal: 

    $ git clone git@github.com:Braden-077/PingPong.git
    
    $ cd PingPong
    
    $ bundle install
    
# Using PingPong
To play pingpong, run:

    $ ruby/lib/game.rb

Then, when prompted for a number enter any number you'd like!

# Understanding 'ping', 'pong', and 'ping-pong'
This code divides every number (up to the given number) by 3 and 5. If the number is ONLY divisible by 3, you get ```'ping'```(ex. 3, 6, 9, 12). 

However, if the number is divisible ONLY by 5, you get ```'pong'``` (ex. 5, 10, 15). 

If the number is divisible by BOTH 3 and 5, you get ```'ping-pong'```(ex. 15, 30, 45).

# Running tests
This app uses the testing platform ```Rspec```. To run these tests, run the command:

    $ bundle exec rspec
    
There are currently 30 tests, all of which are passing. Thanks for checking out this fizzbuzz project! The links of things I used as references to build the loops are in the ping_pong.rb file.
