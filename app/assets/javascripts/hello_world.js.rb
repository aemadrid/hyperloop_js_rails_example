# class HelloWorldView
#   # We should have <body class="controller-<%= controller_name %>"> in layouts
#   def initialize(selector = 'body.controller-hello_world')
#     @selector = selector
#   end
#
#   def setup
#     replace <<~HTML
#       <h1>Hello World from Opal!</h1>
#       <p>
#         Link: <a href="http://example.com">Example</a>
#       </p>
#     HTML
#     on :click, 'a', &method(:link_clicked)
#     puts "done setting up ..."
#   end
#
#   def link_clicked(event)
#     event.prevent
#     puts "Hello! (You just clicked on a link: #{event.current_target.text})"
#     puts "event : #{event.methods}"
#     `console.log('event : %o', event)`
#   end
#
#
#   private
#
#   attr_reader :selector, :element
#
#   def find(sel)
#     puts "find | selector : #{sel}"
#     Element.find("#{@selector} #{sel}")
#   end
#
#   def replace(html)
#     puts "replace | replacing [#{@selector}] with [#{html}] ..."
#     Document.ready? do
#       found = Element.find(selector)
#       if found.present?
#         puts "replace | found : #{found.inspect}"
#         found.html = html
#       else
#         puts "replace | did not find anything on [#{@selector}] ..."
#       end
#       # .html = html
#     end
#   end
#
#   # Register events on document to save memory and be friends to Turbolinks
#   def on(event, selector = nil, &block)
#     puts "Adding event [#{event}] to [#{@selector}] ..."
#     Element[`document`].on(event, selector, &block)
#   end
# end
#
# HelloWorldView.new.setup


selector = '.hello-world-wrapper'

# Document.ready? do
#   Element.find(selector).html = '<h1>Hello!</h1>'
# end

# require 'components/hello_world'
# Document.ready? do
#   puts "Going to render #{HelloWorld} ..."
#   Element[selector].render { HelloWorld() }
#   puts "Rendered #{HelloWorld}!"
# end

# require 'components/app_router'
# require 'components/home'
# Document.ready? do
#   puts "Going to render #{AppRouter} ..."
#   Element[selector].render { AppRouter() }
#   puts "Rendered #{AppRouter}!"
# end

require 'components/example'
Document.ready? do
  puts "Going to render #{App} ..."
  Element[selector].render { App() }
  puts "Rendered #{App}!"
end
