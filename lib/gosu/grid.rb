require 'gosu/all'

class Gosu::Grid
  attr_reader :window, :cell_size, :cells

  def initialize(window, cell_size = 16, row_count = nil, column_count = nil)
    @window, @cell_size, @row_count, @column_count = window, cell_size, row_count, column_count
    build
  end

  def row_count
    @row_count ||= (window.width / cell_size).to_i
  end

  def column_count
    @column_count ||= (window.height / cell_size).to_i
  end

  def draw
    cells.each do |cell|
      cell.draw
    end
  end

  def build
    @cells ||= Matrix.build(row_count, column_count) do |row, col|
      Gosu::Grid::Cell.new(window, cell_size, row, col)
    end
  end
end

