class AppRouter < Hyperloop::Router
  history :browser

  route do
    DIV do
      UL do
        LI { Link('/') { 'Home' } }
        LI { Link('/about') { 'About' } }
      end
      Route('/', exact: true, mounts: Home)
      Route('/about', mounts: About)
    end
  end
end

