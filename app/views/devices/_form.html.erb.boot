 <%= form_for (device, as: devices, url: registration_path(devices) :html => {:class => "form-horizontal center"} do |f| %>
      <div class="form-group">
        <%= f.label :staffId, "staff ID:", class: "col-md-4 control-label" %>
        <div class="col-md-1">
          <%= f.number_field :staffId, class: "form-control" %>
        </div>
      </div>
      <div class="form-group">
        <%= f.label :OS, "OS:", class: "col-md-4 control-label" %>
        <div class="col-md-3">
          <%= f.text_field :OS, class: "form-control" %>
        </div>
      </div>
      <div class="form-group">
        <%= f.label :CPU, "CPU:", class: "col-md-4 control-label" %>
        <div class="col-md-3">
          <%= f.text_field :CPU, class: "form-control" %>
        </div>
      </div>
      <div class="form-group">
        <%= f.label :RAM, "RAM:", class: "col-md-4 control-label" %>
        <div class="col-md-3">
          <%= f.number_field :RAM, class: "form-control" %>
        </div>
      </div>
      <div class="form-group">
        <%= f.label :Model, "Model:", class: "col-md-4 control-label" %>
        <div class="col-md-3">
          <%= f.text_field :Model, class: "form-control" %>
        </div>
      </div>
      

      <%= f.submit :Submit, class: :btn, class: :btn-success %>  
 <% end %>