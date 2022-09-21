defmodule SupSampleTest do
  use ExUnit.Case
  doctest SupSample

  test "greets the world" do
    assert SupSample.hello() == :world
  end
end
