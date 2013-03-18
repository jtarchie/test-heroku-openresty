module HTTPartyDSL
  class RSpecParty
    include HTTParty
    base_uri 'http://localhost:4567'
  end

  def get(*args)
    @response = RSpecParty.get(*args)
  end

  def page
    @page ||= Capybara.string(@response.body)
  end

  RSpec.configure {|c| c.include self}
end