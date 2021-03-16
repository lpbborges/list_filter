defmodule ListFilterTest do
  use ExUnit.Case

  describe "call/1" do
    test "returns the number of odds" do
      list = ["2", "1", "5", "3", "abc"]

      response = ListFilter.call(list)

      expected_response = 3

      assert response == expected_response
    end
  end
end
