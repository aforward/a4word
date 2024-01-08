defmodule A4wordWeb.HanoiLive do
  use A4wordWeb, :live_view

  alias A4wordWeb.HanoiLive.{Splash, Game}

  @impl true
  def render(assigns) do
    ~H"""
    <style>
      .won {
      position: absolute;
      left: 0;
      right: 0;
      background-color: #C6F7E2;
      border: 1px solid #3EBD93;
      padding: 60px;
      font-size: 30px;
      z-index: 1;
      margin: 50px auto 0 auto;
      width: 700px;
      opacity: 0.7;
      font-weight: 900;
      text-align: center;
      }

      .game-screen {
      margin: 30px auto;
      }

      .game-screen .game {
      border: 1px solid #63921A;
      max-width: 800px;
      margin: auto;
      padding: 0 10px 0 10px;
      background-color: #F2FDE0;
      }

      .game-screen .game .scorebug {
      margin: 10px 0 20px;
      display: flex;
      }

      .game-screen .game .scorebug .title, .game-screen .game .scorebug .counter {
      font-family: 'Dokdo', cursive;
      display: inline-block;
      margin-right: 20px;
      font-size: 20px;
      }

      .game-screen .game .scorebug .title {
      font-size: 30px;
      line-height: 30px;
      }

      .game-screen .game .scorebug .counter {
      font-size: 20px;
      line-height: 30px;
      text-transform: uppercase;
      }

      .game-screen .game .scorebug .counter .value {
      border: 1px solid #CB6E17;
      background-color: #FFFBEA;
      padding: 0 5px;
      line-height: 20px;
      text-align: center;
      width: 100px;
      display: inline-block;
      }

      .game-screen .game .scorebug .actions {
      text-align: right;
      flex: 1;
      }

      .game-screen .game h1 {
      text-align: left;
      font-family: 'Dokdo', cursive;
      font-size: 40px;
      padding: 0;
      margin: 0;
      }

      .game-screen .board {
      display: flex;
      justify-content: center;
      }

      .game-screen .board .tower {
      padding: 20px;
      }

      button.restart {
      font-family: 'Dokdo', cursive;
      font-size: 20px;
      height: 25px;
      line-height: 25px;
      background-color: #8EEDC7;
      color: #199473;
      border: 1px solid #199473;
      margin: 2px 0 0 0;
      }
      button.restart:hover {
      background-color: #199473;
      color: #8EEDC7;
      border: 1px solid #8EEDC7;
      }

      .icon-cog {
      width: 30px;
      vertical-align: middle;
      cursor: pointer;
      }

      .splash-screen {
      margin: 30px auto;
      }

      .splash-screen .game {
      border: 1px solid #63921A;
      max-width: 800px;
      margin: auto;
      padding: 20px 40px;
      background-color: #F2FDE0;
      }

      .splash-screen .game h1 {
      text-align: center;
      font-family: 'Dokdo', cursive;
      font-size: 80px;
      display: block;
      }

      .splash-screen .game .container {
      display: flex;
      margin: auto;
      justify-content: center;
      }

      .left {
      padding: 0 50px 0 0;
      margin: 30px 0 0 0;
      }
      .left button {
      display: block;
      min-width: 200px;
      font-size: 20px;
      height: 25px;
      line-height: 25px;
      font-family: 'Dokdo', cursive;
      padding: 0 0 0 0;
      }
      button.start {
      font-family: 'Dokdo', cursive;
      font-size: 40px;
      height: 45px;
      line-height: 45px;
      background-color: #B6E0FE;
      color: #2680C2;
      border: 1px solid #2680C2;
      margin-bottom: 30px;
      }
      button.start:hover {
      background-color: #2680C2;
      color: #B6E0FE;
      border: 1px solid #B6E0FE;
      }

      button.harder-on {
      background-color: #FF9B9B;
      color: #AB091E;
      border: 1px solid #AB091E;
      }
      button.harder-on:hover {
      background-color: #AB091E;
      color: #FF9B9B;
      border: 1px solid #FF9B9B;
      }
      button.easier-on {
      background-color: #8EEDC7;
      color: #147D64;
      border: 1px solid #147D64;
      }
      button:hover.easier-on {
      background-color: #147D64;
      color: #8EEDC7;
      border: 1px solid #8EEDC7;
      }

      button.easier-off, button.harder-off {
      background-color: #E1E1E1;
      color: #626262;
      border: 1px solid #626262;
      disabled: disabled;
      cursor: not-allowed;
      }

      .splash-screen .tower svg {
      width: 400px;
      }

      .game-screen .tower svg {
      width: 200px;
      }

      .tower svg .base, .tower svg .pole {
      fill: #A27C1A;
      }

      .tower svg .piece-down {
      fill: #84C5F4;
      stroke: #0A558C;
      }

      .tower svg .piece-up {
      stroke: #0A558C;
      fill: #0A558C;
      }

      .tower svg .piece-none {
      display: none;
      }
    </style>

    <%= if assigns.game.started do
      live_component(Game, assigns)
    else
      live_component(Splash, assigns)
    end %>
    """
  end

  @impl true
  def mount(_params, _session, socket) do
    {:ok, socket |> assign_game()}
  end

  @impl true
  def handle_event("start_game", _, socket) do
    socket
    |> update(:game, &Hanoi.start_game(&1))
    |> tick()
  end

  def handle_event("restart_game", _, socket) do
    socket
    |> update(:game, &Hanoi.restart_game(&1))
    |> tick()
  end

  def handle_event("config_game", _, socket) do
    {:noreply, socket |> update(:game, &Hanoi.new_game(&1))}
  end

  def handle_event("inc", _, socket) do
    {:noreply, socket |> update(:game, &Hanoi.inc(&1))}
  end

  def handle_event("dec", _, socket) do
    {:noreply, socket |> update(:game, &Hanoi.dec(&1))}
  end

  def handle_event("tower_a", _, socket) do
    {:noreply, socket |> update(:game, &Hanoi.pick(&1, :tower_a))}
  end

  def handle_event("tower_b", _, socket) do
    {:noreply, socket |> update(:game, &Hanoi.pick(&1, :tower_b))}
  end

  def handle_event("tower_c", _, socket) do
    {:noreply, socket |> update(:game, &Hanoi.pick(&1, :tower_c))}
  end

  @impl true
  def handle_info(:tick, socket) do
    socket
    |> update(:game, &Hanoi.display(&1))
    |> tick()
  end

  defp assign_game(socket) do
    socket
    |> assign(:game, Hanoi.new_game())
  end

  defp tick(socket) do
    if connected?(socket) && !socket.assigns[:game].ended() do
      Process.send_after(self(), :tick, 1000)
    end

    {:noreply, socket}
  end
end
