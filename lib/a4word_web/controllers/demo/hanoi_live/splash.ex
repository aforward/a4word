defmodule A4wordWeb.HanoiLive.Splash do
  use A4wordWeb, :live_component
  alias A4wordWeb.HanoiLive.Game

  def render(assigns) do
    ~H"""
    <div class="splash-screen">
      <div class="game">
        <h1>Towers of Hanoi</h1>
        <div class="container">
          <div class="left">
            <button phx-click="start_game" class="start">START</button>
            <button
              phx-click="dec"
              class={"easier-#{if assigns.game.num_pieces > 1, do: "on", else: "off"}"}
            >
              Easier
            </button>
            <button
              phx-click="inc"
              class={"harder-#{if assigns.game.num_pieces < Hanoi.max_pieces(), do: "on", else: "off"}"}
            >
              Harder
            </button>
          </div>
          <div class="right">
            <div class="tower">
              <Game.tower tower={assigns.game.display_a} />
            </div>
          </div>
        </div>
      </div>
    </div>
    """
  end
end
