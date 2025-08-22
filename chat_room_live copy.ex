defmodule SlaxWeb.ChatRoomLiveTest do
  use SlaxWeb, :live_view

  def render(assigns) do
    ~H"""
    <div>Welcome to the chat!</div>

    <%!-- normal ways of rendering elixir logic in heex --%>
    <div>{2 + 2}</div>
    <div>{2 + 2}</div>

    <%!-- without rendering --%>
    <div><% 2 + 2 %></div>

    <%!-- loops --%>
    <%!-- <ul>
      <%= for number <- 1..10 do %>
        <li>{number}</li>
      <% end %>
    </ul> --%>

    <ul>
      <li :for={number <- 1..10}>{number}</li>
    </ul>

    <%!-- conditionals --%>
    <div id="person">
      <%= if 15 > 10 do %>
        <p>15 is greater than 10</p>
      <% else %>
        <p>15 is not greater than 10</p>
      <% end %>
    </div>
    """
  end
end
