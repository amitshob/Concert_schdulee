    #
    # #ingredients output loop
    # <% if @bands.ingredients.any?() %>
    #   <% @bands.ingredients.each() do |ingredients| %>
    #     <li><%= ingredients.name() %></li>
    #   <% end %>
    # <% end %>
    #
    # #instructions output loop
    # <% if @bands.instructions.any?() %>
    #   <% @bands.instructions.each() do |instruction| %>
    #     <li><%= instruction.name() %></li>
    #   <% end %>
    # <% end %>

    #
    # <% if @selected_bands.any?() %>
    #   <% @selected_bands.each() do |band| %>
    #   <li><a href="/bands/<%= band.id %>"><%= tag.name() %></a></li>
    #   <% end %>
    # <% end %>
    <ul>
    <% if @bands.any?() %>
      <% @bands.each() do |band| %>
      <li><a href="/bands/<%= band.id %>"><%= band.name() %></a></li>
      <% end %>
    <% end %>
    </ul>
<<<<<<< HEAD

    <li><a href="/venues/<%= venue.id %>"><%= venue.name() %></a></li>
    <% end %>
=======
>>>>>>> c3a7b01c02574eb9badd1707a3e611f610b5dd17
