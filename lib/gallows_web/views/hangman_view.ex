defmodule GallowsWeb.HangmanView do
  use GallowsWeb, :view

  import GallowsWeb.Views.Helpers.GameStateHelper

  def game_over?(state) do
    state in [:won, :lost]
  end

  def new_game_button(conn) do
    button("New Game", to: Routes.hangman_path(conn, :create_game))
  end

  def display_word(letters) do
    letters |> Enum.join(" ")
  end

  def turn(left, min) when left <= min do
    "opacity: 1"
  end

  def turn(left, min) do
    "opacity: 0.1"
  end
end
