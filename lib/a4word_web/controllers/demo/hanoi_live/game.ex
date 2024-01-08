defmodule A4wordWeb.HanoiLive.Game do
  use A4wordWeb, :live_component

  def render(assigns) do
    ~H"""
    <div class="game-screen">
      <%= if assigns.game.ended do %>
        <div class="won">
          You win!<br />
          It took you <%= assigns.game.num_moves %> moves and <%= assigns.game.duration %> seoncds.
        </div>
      <% end %>
      <div class="game" data-started={assigns.game.started}>
        <div class="scorebug">
          <div class="title">Towers of Hanoi</div>
          <div class="counter">moves: <span class="value"><%= assigns.game.num_moves %></span></div>
          <div class="counter">time: <span class="value"><%= assigns.game.duration %></span></div>
          <div class="actions">
            <button phx-click="restart_game" class="restart">Restart</button>
            <span phx-click="config_game">
              <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" class="icon-cog">
                <path
                  class="primary"
                  d="M6.8 3.45c.87-.52 1.82-.92 2.83-1.17a2.5 2.5 0 0 0 4.74 0c1.01.25 1.96.65 2.82 1.17a2.5 2.5 0 0 0 3.36 3.36c.52.86.92 1.8 1.17 2.82a2.5 2.5 0 0 0 0 4.74c-.25 1.01-.65 1.96-1.17 2.82a2.5 2.5 0 0 0-3.36 3.36c-.86.52-1.8.92-2.82 1.17a2.5 2.5 0 0 0-4.74 0c-1.01-.25-1.96-.65-2.82-1.17a2.5 2.5 0 0 0-3.36-3.36 9.94 9.94 0 0 1-1.17-2.82 2.5 2.5 0 0 0 0-4.74c.25-1.01.65-1.96 1.17-2.82a2.5 2.5 0 0 0 3.36-3.36zM12 16a4 4 0 1 0 0-8 4 4 0 0 0 0 8z"
                /><circle cx="12" cy="12" r="2" class="secondary" />
              </svg>
            </span>
          </div>
        </div>
        <div class="board">
          <div class="tower" phx-click="tower_a">
            <.tower tower={assigns.game.display_a} />
          </div>
          <div class="tower" phx-click="tower_b">
            <.tower tower={assigns.game.display_b} />
          </div>
          <div class="tower" phx-click="tower_c">
            <.tower tower={assigns.game.display_c} />
          </div>
        </div>
      </div>
    </div>
    """
  end

  def tower(assigns) do
    ~H"""
    <svg
      viewBox="0 0 550 500"
      version="1.1"
      xmlns="http://www.w3.org/2000/svg"
      xmlns:xlink="http://www.w3.org/1999/xlink"
    >
      <g class="hanoi" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
        <rect class="base" x="0" y="450" width="550" height="50" rx="8"></rect>
        <rect class="pole" x="250" y="0" width="50" height="450" rx="4"></rect>
        <%= for {{n, position}, i} <- @tower |> Enum.reverse() |> Enum.with_index() do %>
          <% width = 500 - (n - 1) * 50 %>
          <% x_offset = (500 - width) / 2 + 25 %>
          <% y_offset = 400 - i * 50 %>
          <rect
            class={"piece-#{position} piece-#{n}"}
            x={x_offset}
            y={y_offset}
            width={width}
            height="50"
            rx="20"
          >
          </rect>
        <% end %>
      </g>
    </svg>
    """
  end
end
