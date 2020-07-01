module RouterExtensions
  module Subdomain
    def subdomain(name)
      return yield unless name

      constraints subdomain: name do
        yield
      end
    end
  end
end
