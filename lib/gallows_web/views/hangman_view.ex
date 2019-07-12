defmodule GallowsWeb.HangmanView do
  use GallowsWeb, :view

  def display_word(letters) do
    letters |> Enum.join(" ")
  end
end
