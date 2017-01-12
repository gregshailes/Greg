class Image < ActiveRecord::Base

  def uploaded_file(incoming_file)
    self.filename = incoming_file.original_filename
    self.filetype = incoming_file.content_type
    self.filedata = incoming_file.read
  end

end