class App  < Hyperloop::Router
  # history :browser
  # history :memory
  history :hash

  route do
    DIV do
      UL do
        LI { Link('/',       id: :home_link) { 'Home' } }
        LI { Link('/about',  id: :about_link) { 'About' } }
        LI { Link('/topics', id: :topics_link) { 'Topics' } }
      end
      Route('/', exact: true, mounts: Home)
      Route('/about', mounts: About)
      Route('/topics', mounts: Topics)
    end
  end
end

class Home < Hyperloop::Router::Component
  render(:div) do
    H2() { 'Home' }
  end
end

class About < Hyperloop::Router::Component
  render(:div) do
    H2 { 'About Page' }
  end
end

class Topics < Hyperloop::Router::Component
  render(:div) do
    H2 { 'Topics Page' }
    UL() do
      LI { Link("#{match.url}/rendering") { 'Rendering with React' } }
      LI { Link("#{match.url}/components", id: :components_link) { 'Components' } }
      LI { Link("#{match.url}/props-v-state") { 'Props v. State' } }
    end
    Route("#{match.url}/:topic_id", mounts: Topic)
    Route(match.url, exact: true) do
      H3 { 'Please select a topic.' }
    end
  end
end

class Topic < Hyperloop::Router::Component
  render(:div) do
    H3 { "more on #{match.params[:topic_id]}..." }
  end
end