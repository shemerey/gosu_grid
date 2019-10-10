require 'gosu/all'

class Gosu::Grid
  attr_reader :window, :cells

  attr_accessor :x, :y, :z
  attr_accessor :default_cell, :rows, :columns

  def initialize(window)
    @window, @cells = window, []
  end

  def default_cell
    @default_cell || raise(NotImplementedError, 'You have to define background cell')
  end

  def x
    @x ||= 0
  end

  def y
    @y ||= 0
  end

  def z
    @z ||= 0
  end

  def rows
    @rows ||= default_rows
  end

  def columns
    @columns ||= default_columns
  end

  def draw
    default_cells.each do |cell|
      cell.draw
    end

    cells.each do |cell|
      cell.draw
    end
  end

  private

  def default_rows
    (window.width / default_cell.size).to_i
  end

  def default_columns
    (window.height / default_cell.size).to_i
  end

  def default_cells
    @default_cells ||= Matrix.build(rows, columns) do |row, column|
      default_cell.dup.tap do |cell|
        cell.row = row
        cell.column = column
      end
    end
  end
end

