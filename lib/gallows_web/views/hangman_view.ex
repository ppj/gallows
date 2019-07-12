defmodule GallowsWeb.HangmanView do
  use GallowsWeb, :view

  @responses %{
    won: {:success, "You won!"},
    lost: {:danger, "You lost!"},
    good_guess: {:success, "Good guess!"},
    bad_guess: {:warning, "Bad guess!"},
    already_used: {:info, "Already guessed."},
  }

  def display_word(letters) do
    letters |> Enum.join(" ")
  end

  def game_state(state) do
    @responses[state]
    |> alert()
  end

  defp alert({class, message}) do
    """
    <div class="alert, alert-#{class}">
      #{message}
    </div>
    """
    |> raw()
  end

  defp alert(nil) do
    ""
  end
end
