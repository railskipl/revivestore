
class AudioRevive < ActiveRecord::Base

has_attached_file :mp3, 
  :styles => { },
  :convert_options => {}






end
