if defined?(RSpec) && defined?(RSpec::Core::RakeTask)
  namespace :test do
    namespace 'manageiq-providers-redhat' do
      desc "Setup environment for redhat specs"
      task :setup => [:initialize, :verify_no_db_access_loading_rails_environment, :setup_db]
    end

    desc "Run all redhat specs"
    RSpec::Core::RakeTask.new('manageiq-providers-redhat' => [:initialize, "evm:compile_sti_loader"]) do |t|
      EvmTestHelper.init_rspec_task(t)
      t.pattern = FileList[ENGINE_ROOT + '/spec/models/**/*_spec.rb']
    end
  end
end
