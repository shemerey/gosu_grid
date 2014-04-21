# Gosu::Grid

This gem just provides some methods to get game grid, fill it with cells, and
move stuff around. You can easely modify it for your needs. Feel free to
contribute in this project if you find it useful or interesting.

![](https://raw.githubusercontent.com/shemerey/gosu_grid/master/assets/gosu_grid_example.png)

## Installation

Add this line to your application's Gemfile:

    gem 'gosu_grid'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install gosu_grid

## Usage

#### How to Draw default grid

```ruby
class GridGameExample < Gosu::Window
  def initialize
    super(540, 320, false)
    @grid = Gosu::Grid.new(self)
    @grid.default_cell = DeadCell.new(self, 0, 0)
  end

  def draw
    @grid.draw && sleep(0.05)
  end
end
```

more examples [here](example)

## Contributing

1. Fork it ( https://github.com/[my-github-username]/gosu_grid/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
