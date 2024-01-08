defmodule A4wordWeb.Webby do
  use Phoenix.Component

  def body(assigns) do
    ~H"""
    <body class={assigns[:bodycss] || "flex flex-col bg-zinc-100 dark:bg-black"}>
      <div class="inset-0 flex justify-center sm:px-8">
        <div class="bg-white">
          <div class="mt-16 sm:mt-32 sm:px-8">
            <div class="mx-auto max-w-7xl lg:px-8">
              <div class="relative px-4 sm:px-8 lg:px-12">
                <div classs="mx-auto max-w-2xl lg:max-w-5xl">
                  <%= render_slot(@inner_block) %>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </body>
    """
  end
end
