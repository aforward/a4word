defmodule A4wordWeb.EmpexlogoLive do
  use A4wordWeb, :live_view

  @colours [
    "#5ED0FA",
    "#54D1DB",
    "#A368FC",
    "#F86A6A",
    "#FADB5F",
    "#65D6AD",
    "#127FBF",
    "#0E7C86",
    "#690CB0",
    "#AB091E",
    "#CB6E17",
    "#147D64"
  ]

  def mount(_params, _session, socket) do
    tick()

    socket
    |> assign(tock: 1)
    |> assign_colours()
    |> reply(:ok)
  end

  def render(assigns) do
    ~H"""
    <body class="bg-white">
      <div class="mx-auto max-w-5xl" data-tock={@tock}>
        <svg
          class="mx-auto h-screen"
          viewBox="0 0 186 180"
          version="1.1"
          xmlns="http://www.w3.org/2000/svg"
          xmlns:xlink="http://www.w3.org/1999/xlink"
        >
          <g id="Page-1" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
            <g id="empex-logo-official-white-80b0e29c">
              <polygon
                id="letter-e1"
                fill={@e1}
                points="9.7 77.7 9.7 87.1 25.4 87.1 25.4 94.6 9.7 94.6 9.7 103.7 25.4 103.7 25.4 111.4 0.1 111.4 0.1 70 25.4 70 25.4 77.7"
              >
              </polygon>
              <polygon
                id="letter-m"
                fill={@m}
                points="76.8 111.4 67.5 111.4 67.5 85.7 58.6 111.4 51.5 111.4 42.3 85.7 42.3 111.4 33 111.4 33 70 43.9 70 55 98.8 65.9 70 76.8 70"
              >
              </polygon>
              <path
                id="letter-p"
                fill={@p}
                d="M84.4,70 L101.7,70 C110.9,70 116.8,76.9 116.8,85 C116.8,93 110.9,100 101.7,100 L94,100 L94,111.5 L84.4,111.5 L84.4,70 Z M107.1,84.9 C107.1,81.1 104.5,77.7 100.5,77.7 L93.9,77.7 L93.9,92 L100.5,92 C104.5,92.1 107.1,88.8 107.1,84.9 Z"
                fill-rule="nonzero"
              >
              </path>
              <polygon
                id="letter-e2"
                fill={@e2}
                points="131.8 77.8 131.8 87.2 147.5 87.1 147.5 94.6 131.8 94.7 131.8 103.8 147.5 103.7 147.5 111.4 122.2 111.5 122 70.1 147.3 70 147.3 77.7"
              >
              </polygon>
              <polygon
                id="letter-x"
                fill={@x}
                points="174.9 70 185.5 70 173.2 90.7 185.5 111.4 174.9 111.4 167.7 98.1 160.5 111.4 150 111.4 162.3 90.7 150 70 160.5 70 167.7 83.4"
              >
              </polygon>
              <polygon
                id="top-outline"
                fill={@top_outline}
                points="64.8 59.1 17.4 59.1 13 54.7 43.8 54.7 32 26.2 60.4 38 60.4 7.2 82.1 29 93.9 0.5 105.6 29 127.4 7.2 127.4 38 155.8 26.2 144 54.6 174.7 54.6 170.3 59 122.9 59 122.9 44.6 109.6 50.1 104.1 36.8 93.8 47 83.6 36.8 78.1 50.1 64.8 44.6"
              >
              </polygon>
              <polygon
                id="bottom-outline"
                fill={@bottom_outline}
                points="93.8 179.5 82.1 151 60.4 172.8 60.4 142.1 32 153.8 43.8 125.4 13 125.4 17.4 121 64.8 121 64.8 135.4 78.1 129.9 83.6 143.2 93.8 133 104 143.2 109.5 129.9 122.8 135.4 122.8 121 170.2 121 174.6 125.4 143.9 125.4 155.7 153.8 127.3 142 127.3 172.7 105.6 151"
              >
              </polygon>
              <polygon
                id="top-diamond-1"
                fill={@top_diamond_1}
                points="60.4 54.7 60.4 42.8 40.1 34.4 48.5 54.7"
              >
              </polygon>
              <polygon
                id="top-diamond-2"
                fill={@top_diamond_2}
                points="75.7 44.4 80.2 33.4 64.7 17.9 64.7 39.9"
              >
              </polygon>
              <polygon
                id="top-diamond-3"
                fill={@top_diamond_3}
                points="93.8 40.8 102.2 32.4 93.8 12.1 85.4 32.4"
              >
              </polygon>
              <polygon
                id="top-diamond-4"
                fill={@top_diamond_4}
                points="111.9 44.4 122.9 39.9 122.9 17.9 107.4 33.4"
              >
              </polygon>
              <polygon
                id="top-diamond-5"
                fill={@top_diamond_5}
                points="127.3 54.7 139.2 54.7 147.6 34.4 127.3 42.8 127.3 54.7"
              >
              </polygon>
              <polygon
                id="bottom-diamond-1"
                fill={@bottom_diamond_1}
                points="40.1 145.7 60.4 137.3 60.4 125.4 48.5 125.4"
              >
              </polygon>
              <polygon
                id="bottom-diamond-2"
                fill={@bottom_diamond_2}
                points="64.7 162.2 80.2 146.7 75.7 135.7 64.7 140.3"
              >
              </polygon>
              <polygon
                id="bottom-diamond-3"
                fill={@bottom_diamond_3}
                points="93.8 168 102.2 147.7 93.8 139.3 85.4 147.7"
              >
              </polygon>
              <polygon
                id="bottom-diamond-4"
                fill={@bottom_diamond_4}
                points="122.9 162.2 122.9 140.2 111.9 135.6 107.4 146.6"
              >
              </polygon>
              <polygon
                id="bottom-diamond-5"
                fill={@bottom_diamond_5}
                points="147.5 145.7 139.1 125.4 127.2 125.4 127.2 137.2"
              >
              </polygon>
            </g>
          </g>
        </svg>
      </div>
    </body>
    """
  end

  def handle_info(:tick, socket) do
    tick()
    {:noreply, socket |> update(:tock, &(&1 + 1)) |> assign_colours()}
  end

  defp colour(), do: @colours |> Enum.random()

  defp tick(), do: Process.send_after(self(), :tick, 1000)

  defp assign_colours(socket) do
    socket
    |> assign(:e1, colour())
    |> assign(:m, colour())
    |> assign(:p, colour())
    |> assign(:e2, colour())
    |> assign(:x, colour())
    |> assign(:top_diamond_1, colour())
    |> assign(:top_diamond_2, colour())
    |> assign(:top_diamond_3, colour())
    |> assign(:top_diamond_4, colour())
    |> assign(:top_diamond_5, colour())
    |> assign(:bottom_diamond_1, colour())
    |> assign(:bottom_diamond_2, colour())
    |> assign(:bottom_diamond_3, colour())
    |> assign(:bottom_diamond_4, colour())
    |> assign(:bottom_diamond_5, colour())
    |> assign(:top_outline, colour())
    |> assign(:bottom_outline, colour())
  end

  defp reply(socket, ok), do: {ok, socket}
end
