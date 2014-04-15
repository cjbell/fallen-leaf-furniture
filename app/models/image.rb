class Image < ActiveRecord::Base

  has_attached_file :source, styles: {
    square: '250x250#',
    full: "700x700"
  }

  validates_attachment_content_type :source, :content_type => /\Aimage\/.*\Z/

end
