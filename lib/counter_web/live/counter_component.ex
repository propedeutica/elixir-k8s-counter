defmodule CounterComponent do
  use Phoenix.LiveComponent

  # Avoid duplicating Tailwind classes and show hot to inline a function call:
  defp btn(color) do
    "text-6xl pb-2 w-20 bg-#{color}-500 hover:bg-#{color}-600 rounded-lg"
  end

  def render(assigns) do
    ~H"""
    <div class="text-center">
      <h1 class="text-4xl font-bold text-center">Counter: <%= @val %></h1>
      <button phx-click="dec" class="text-6xl pb-2 w-20 bg-red-500 hover:bg-red-600 rounded-lg" )>
        -
      </button>
      <button phx-click="inc" class="text-6xl pb-2 w-20 bg-green-500 hover:bg-green-600 rounded-lg">
        +
      </button>
    </div>
    """
  end
end
