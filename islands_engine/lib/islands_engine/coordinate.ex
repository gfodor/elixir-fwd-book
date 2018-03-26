defmodule IslandsEngine.Coordinate do
  alias __MODULE__

  @enforce_keys [:row, :col]
  @board_range 1..10

  defstruct [:row, :col]

  def new(r, c) when r in(@board_range) and c in(@board_range) do
    { :ok, %Coordinate{ row: r, col: c } }
  end

  def new(_r, _c), do: { :error, :invalid_coordinate }
end
