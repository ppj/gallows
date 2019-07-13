defmodule GallowsWeb.Views.Helpers.GameStateHelper do
  import Phoenix.HTML, only: [raw: 1]

  @responses %{
    won: {:success, "You won!"},
    lost: {:danger, "You lost!"},
    good_guess: {:success, "Good guess!"},
    bad_guess: {:warning, "Bad guess!"},
    already_used: {:info, "Already guessed."},
  }

  def game_state(state) do
    @responses[state]
    |> alert()
  end

  defp alert(nil) do
    ""
  end

  defp alert({class, message}) do
    """
    <div class="alert, alert-#{class}">
      #{message}
    </div>
    """
    |> raw()
  end
end
