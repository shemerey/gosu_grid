require 'gosu/all'

class Gosu::Grid::Cell
  attr_reader :window, :size, :row, :col

  def initialize(window, size, row, col)
    @window, @size, @row, @col = window, size, row, col
  end

  def image_path
    @image_path = 'assets/black_cell.png'
  end

  def object
    @object ||= Gosu::Image.new(window, image_path, false)
  end

  def x
    size * row
  end

  def y
    size * col
  end

  def z
    0
  end

  def draw
    object.draw(x, y, z)
  end
end

