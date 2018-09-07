class Post < ApplicationRecord
    belongs_to :user
    after_save :save_file_img, if: :file
    mount_uploader :cover, CoverUploader

    # def save_file_img
    #     filename = self.file.original_filename
    #     folder = "public/posts/#{id}/file"
    #
    #     FileUtils::mkdir_p
    #
    #     f = File.open File.join(folder, filename), "wb"
    #     f.write file.read()
    #     f.close
    #
    #     self.cover = nil
    #     update file_filename: filename
    #
    # end
end
