defmodule FizzBuzzTest do
  use ExUnit.Case

  describe "build/1" do
    test "when a valid file is provided, returns the converted list" do
      response = FizzBuzz.build("number.txt")

      expected_response = {:ok, [1, 2, :Fizz, 4, :Buzz, :Buzz, :FizzBuzz, :Buzz]}

      assert response == expected_response
    end

    test "when a valid file is provided, returns an error" do
      response = FizzBuzz.build("notexist.txt")

      expected_response = {:error, "Erro reading file enoent"}

      assert response == expected_response
    end
  end
end
