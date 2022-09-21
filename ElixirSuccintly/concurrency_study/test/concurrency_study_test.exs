defmodule ConcurrencyStudyTest do
  use ExUnit.Case
  doctest ConcurrencyStudy

  test "greets the world" do
    assert ConcurrencyStudy.hello() == :world
  end
end
