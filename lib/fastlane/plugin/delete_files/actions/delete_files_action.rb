module Fastlane

  module Actions

    class DeleteFilesAction < Action

      def self.run(params)
        matching_files = Dir.glob(params[:file_pattern])
        unless matching_files.any? 
          UI.message "No files found matching pattern \"#{params[:file_pattern]}\""
          return
        end

        File.delete(*matching_files)
        UI.message "Deleted files: #{matching_files.join(", ")}"
      end

      def self.description
        "Deletes a file, folder or multiple files using shell glob pattern."
      end

      def self.authors
        ["Gary Johnson"]
      end

      def self.available_options
        [
          FastlaneCore::ConfigItem.new(key: :file_pattern,
                                       description: "Glob file pattern to search for files to delete")
        ]
      end

      def self.is_supported?(platform)
        true
      end
    end
  end
end
