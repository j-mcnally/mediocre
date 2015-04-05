ImageUploader.class_eval do

  version :medium do
    process :resize_to_fill => [350, 350]
  end

  version :large do
    process :resize_to_fill => [640, 480]
  end


end