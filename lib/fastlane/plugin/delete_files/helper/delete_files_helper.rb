module Fastlane
  module Helper
    class DeleteFilesHelper
      # class methods that you define here become available in your action
      # as `Helper::DeleteFilesHelper.your_method`
      #
      def self.show_message
        UI.message("Hello from the delete_files plugin helper!")
      end
    end
  end
end
