defmodule A4wordWeb.Spotlight do
  use Phoenix.Component
  import A4wordWeb.Helper

  def body(assigns) do
    ~H"""
    <body class="flex h-full flex-col bg-zinc-50 dark:bg-black">
      <div>
        <div class="fixed inset-0 flex justify-center sm:px-8">
          <div class="flex w-full max-w-7xl lg:px-8">
            <div class="w-full bg-white ring-1 ring-zinc-100 dark:bg-zinc-900 dark:ring-zinc-300/20">
            </div>
          </div>
        </div>
        <div class="relative">
          <.main>
            <%= render_slot(@inner_block) %>
          </.main>
          <.footer />
        </div>
      </div>
    </body>
    """
  end

  def main(assigns) do
    ~H"""
    <main>
      <div class="sm:px-8 mt-16 sm:mt-10">
        <div class="mx-auto max-w-7xl lg:px-8">
          <div class="relative px-4 sm:px-8 lg:px-12">
            <div class="mx-auto max-w-2xl lg:max-w-5xl">
              <%= render_slot(@inner_block) %>
            </div>
          </div>
        </div>
      </div>
    </main>
    """
  end

  def summary(assigns) do
    ~H"""
    <article class="md:grid md:grid-cols-4 md:items-baseline">
      <div class="md:col-span-3 group relative flex flex-col items-start">
        <h2 class="text-base font-semibold tracking-tight text-zinc-800 dark:text-zinc-100">
          <span class="relative z-10"><%= assigns.title %></span>
        </h2>
        <time
          class="md:hidden relative z-10 order-first mb-3 flex items-center text-sm text-zinc-400 dark:text-zinc-500 pl-3.5"
          datetime={assigns.datetime}
        >
          <span class="absolute inset-y-0 left-0 flex items-center" aria-hidden="true">
            <span class="h-4 w-0.5 rounded-full bg-zinc-200 dark:bg-zinc-500"></span>
          </span>
          <%= to_friendly(assigns.datetime) %>
        </time>
        <div class="summary">
          <%= Phoenix.HTML.raw(assigns.body) %>
        </div>
        <a
          href={"/articles/#{assigns.slug}"}
          class="relative z-10 mt-4 flex items-center text-sm font-medium text-blue-500 underline"
        >
          <span>Read article <span class="font-bold"><%= assigns.title %></span></span>
          <svg viewBox="0 0 16 16" fill="none" aria-hidden="true" class="h-6 w-6 stroke-current">
            <path
              d="M6.75 5.75 9.25 8l-2.5 2.25"
              stroke-width="1.5"
              stroke-linecap="round"
              stroke-linejoin="round"
            >
            </path>
          </svg>
        </a>
      </div>
      <time
        class="mt-1 hidden md:block relative z-10 order-first mb-3 flex items-center text-sm text-zinc-400 dark:text-zinc-500"
        datetime={assigns.datetime}
      >
        <%= to_friendly(assigns.datetime) %>
      </time>
    </article>
    """
  end

  def snippet(assigns) do
    ~H"""
    <div class="snippet mb-10">
      <h2 class="text-lg font-semibold tracking-tight text-zinc-800 dark:text-zinc-100">
        <span class="relative z-10"><%= assigns.title %></span>
      </h2>
      <div class="summary">
        <%= Phoenix.HTML.raw(assigns.body) %>
      </div>
    </div>
    """
  end

  def header(assigns) do
    ~H"""
    <header>
      <h1 class="text-4xl font-bold tracking-tight text-zinc-800 dark:text-zinc-100 sm:text-5xl">
        <img
          alt="This is a picture of me, Andrew Forward"
          src="/images/me.jpg"
          decoding="async"
          class="rounded-full bg-zinc-100 object-cover dark:bg-zinc-800 h-12 w-12 inline align-middle"
          style="color: transparent;"
        />
        <span class="align-middle">
          <%= case assigns.mode do %>
            <% "home" -> %>
              Deliver Early; <span class="text-blue-500">Often.</span>
            <% "snippets" -> %>
              Technical <span class="text-blue-500">Tidbits</span>
            <% "demos" -> %>
              Technical <span class="text-blue-500">Demos</span>
            <% "talks" -> %>
              Yo Gabba Gabba
              <a href="https://en.wikipedia.org/wiki/Yo_Gabba_Gabba!" class="text-sm text-zinc-300">
                ref
              </a>
            <% "books" -> %>
              Books Over Blogs
            <% "publications" -> %>
              Academic writing on software
          <% end %>
        </span>
      </h1>
      <p class="mt-6 text-2xl text-zinc-600 dark:text-zinc-400">
        <%= case assigns.mode do %>
          <% "home" -> %>
            Test-driven development, infrastructure as code, manage, design, development, automate and continuous everything.
            I don't often blog, but when I do, I reach for Markdown.
          <% "snippets" -> %>
            A collection of code snippets of sometimes rarely used, or perhaps difficult to remember tasks, commands and code snippets.
          <% "demos" -> %>
            A collection of demos that have been built to support a talk, to learn a concept, or maybe just for fun.
          <% "talks" -> %>
            Conference talks about technology and software engineering.
          <% "books" -> %>
            Higher barrier to entry helps make for more effective
            learnings. Read a thousand books in a life-time, with only 10 pages per day.
            A collection of books to read, have been read, and might re-read.
          <% "publications" -> %>
            Software modeling, documentation, and empirical studies peer reviewed list of published conference papers, articles and theses.
            <a
              class="underline text-sky-600"
              target="__blank"
              href="https://scholar.google.com.my/citations?user=0PWZ8YMAAAAJ"
            >
              Google Scholar
            </a>
        <% end %>
      </p>
    </header>
    """
  end

  def footer(assigns) do
    ~H"""
    <footer class="mt-10">
      <div class="sm:px-8">
        <div class="mx-auto max-w-7xl lg:px-8">
          <div class="border-t border-zinc-100 pt-10 pb-16 dark:border-zinc-700/40">
            <div class="relative px-4 sm:px-8 lg:px-12">
              <div class="mx-auto">
                <div class="grid justify-items-center grid-cols-1">
                  <div class="flex gap-2 text-sm font-medium text-zinc-800 dark:text-zinc-200">
                    <svg
                      width="32px"
                      height="32px"
                      viewBox="0 0 64 64"
                      version="1.1"
                      xmlns="http://www.w3.org/2000/svg"
                      xmlns:xlink="http://www.w3.org/1999/xlink"
                    >
                      <g
                        id="logo_outline"
                        stroke="none"
                        stroke-width="1"
                        fill="none"
                        fill-rule="evenodd"
                      >
                        <path
                          d="M32,4.0551624 C47.463973,4.0551624 60,16.7593213 60,32.4306955 C60,44.643665 52.3864308,55.0545405 41.7068606,59.0547622 L31.8541667,32.4306955 L22.0380355,58.9577656 C11.4925306,54.8882531 4,44.5461967 4,32.4306955 C4,16.7593213 16.536027,4.0551624 32,4.0551624 Z"
                          id="Combined-Shape"
                          stroke="#781244"
                          stroke-width="8"
                        >
                        </path>
                        <rect
                          id="Rectangle"
                          fill="#781244"
                          x="27.1508908"
                          y="50.0994823"
                          width="10"
                          height="5.41164514"
                        >
                        </rect>
                        <circle
                          id="Oval"
                          stroke="#F2B726"
                          stroke-width="5"
                          fill="#FFFFFF"
                          cx="50.060985"
                          cy="14.4183656"
                          r="11"
                        >
                        </circle>
                      </g>
                    </svg>
                    <a
                      href="/"
                      class="underline text-pink-900 hover:text-pink-500"
                      style="line-height: 32px"
                    >
                      a4word.com
                    </a>
                  </div>
                  <div class="mx-auto">
                    <%= for {title, href} <- [
                        {"About", "/resume"},
                        {"Talks", "/talks"},
                        {"Publications", "/publications"},
                        {"Books", "/books"},
                        {"Demos", "/demos"},
                        {"Blog", "/blog"}
                      ] do %>
                      <a
                        class="px-2 text-gray-500 hover:text-gray-800 hover:underline"
                        style="line-height: 32px"
                        href={href}
                      >
                        <%= title %>
                      </a>
                    <% end %>
                  </div>
                  <p class="text-sm pt-4 text-zinc-400 dark:text-zinc-500">
                    © <%= Date.utc_today().year %> Andrew Forward. All rights reserved.
                  </p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </footer>
    """
  end
end
