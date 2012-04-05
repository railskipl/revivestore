class PagesController < ApplicationController


def about
@title = "REVIVE! BookShop | About"  
end
  
def reading_app
@title = "REVIVE! BookShop | Free eReading App"   
end   


def video_reviews
@title = "REVIVE! BookShop | video Reviews"   
end


def authors
@title = "REVIVE! BookShop | Authors"   
end
  
def notices
@title = "REVIVE! BookShop | Notices"   
 end
def error
@title = "REVIVE! BookShop | Error"   
 end
def success
@title = "REVIVE! BookShop | Success"   
 end
end