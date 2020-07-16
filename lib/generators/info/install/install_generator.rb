module Info
  class InstallGenerator < Rails::Generators::Base
    source_root File.expand_path('templates', __dir__)

    def copy_initializer
      # template 'exception_notification.rb.erb', 'config/initializers/exception_notification.rb'
    end
  end
end
