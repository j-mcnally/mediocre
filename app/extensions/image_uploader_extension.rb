ImageUploader.class_eval do

  version :small do
    process :resize_to_fill => [305, 175]
  end

  version :medium do
    process :resize_to_fill => [400, 265]
  end

  version :large do
    process :resize_to_fill => [660, 420]
  end

  version :banner do
    process :resize_to_fill => [960, 620]
  end

end