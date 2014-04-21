require 'gosu/all'

class Gosu::Grid::Cell
  attr_reader :window
  attr_accessor :row, :column

  def initialize(window, row, column)
    @window, @row, @column = window, row, column
    yield if block_given?
  end

  def object
    raise NotImplementedError, 'You have to define object to draw'
  end

  def right!(step = 1)
    self.row += step
  end

  def left!(step = 1)
    self.row -= step
  end

  def up!(step = 1)
    self.column -= step
  end

  def down!(step = 1)
    self.column += step
  end

  def x
    size * row
  end

  def y
    size * column
  end

  def z
    0
  end

  def draw
    object.draw(x, y, z)
  end

  def size
    object.width
  end
end

