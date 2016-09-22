describe Fastlane::Actions::DeleteFilesAction do
  describe '#run' do
    it 'prints a message' do
      expect(Fastlane::UI).to receive(:message).with("The delete_files plugin is working!")

      Fastlane::Actions::DeleteFilesAction.run(nil)
    end
  end
end
