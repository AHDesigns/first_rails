class ShowsController < ApplicationController
  def index
    @tiles = [
      {
        'title' => 'Avengers Age of Ultron',
        'url' => '/assets/Avengers-Age-of-Ultron-KA-1.jpg'
      }
    ]
  end
end
