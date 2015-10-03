module ControllerActionHUD
  module Widget
    class << self

      def css
        <<-EOF
        <style type="text/css">
          div#controller_action_hud {
            position: fixed;
            bottom: 0;
            right: 0;
            background-color: black;
            color: white;
            z-index: 999;
            padding: 4px 6px;
            font: normal bold 12px/12px Arial, sans-serif;
            cursor: pointer;
          }
        </style>
        EOF
      end

      def html(controller_name, action_name)
        <<-EOF
        <div id="controller_action_hud" onclick="this.parentNode.removeChild(this);">
          #{controller_name}##{action_name}
        </div>
        EOF
      end

    end

    module Helper
      def controller_action_hud_widget
        html = Widget.css + Widget.html(params[:controller], params[:action])
        html.respond_to?(:html_safe) ? html.html_safe : html
      end
    end

  end

end

ActionView::Base.send :include, ControllerActionHUD::Widget::Helper
