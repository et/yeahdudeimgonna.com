require 'spec_helper'

describe 'slugs' do
  it 'routes /:slug to the published itineraries controller' do
    expect(get("/slug")).
      to route_to(controller: 'published_itineraries', action: 'show', slug: 'slug')
  end

  describe 'static pages' do
    %w|home about|.each do |page|
      it "should route /#{page} to the high voltage controller" do
        expect(get("/#{page}")).
          to_not route_to(controller: 'high_voltage', action: 'show', id: 'home')
      end
    end
  end
end