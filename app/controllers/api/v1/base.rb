module API::V1
  class Base < API::ApplicationAPI
    version "v1", :using => :path

    namespace :spam do
      post 'find_spam' do
        Rails.logger.info"spam's name------------#{params[:spam][:name]}"
        m = SnapshotMadeleine.new("bayesdata")
        @spam = m.system.classify "#{params[:spam][:name]}"
        Rails.logger.info"Is it a spam or not?------------#{@spam}"
        if @spam == "Spam"
          { status: true, message: @spam}
        else
          { status: false, message: @spam}
        end
      end
    end
  end
end
