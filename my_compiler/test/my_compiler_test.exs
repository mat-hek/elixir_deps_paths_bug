defmodule MyCompilerTest do
  use ExUnit.Case
  doctest MyCompiler

  test "greets the world" do
    assert MyCompiler.hello() == :world
  end
end
