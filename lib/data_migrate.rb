# frozen_string_literal: true

require File.join(File.dirname(__FILE__), "data_migrate", "data_migrator_five")
require File.join(File.dirname(__FILE__), "data_migrate", "data_schema_migration")
require File.join(File.dirname(__FILE__), "data_migrate", "data_schema")
require File.join(File.dirname(__FILE__), "data_migrate", "database_tasks")
require File.join(File.dirname(__FILE__), "data_migrate", "schema_dumper")
require File.join(File.dirname(__FILE__), "data_migrate", "status_service_five")
require File.join(File.dirname(__FILE__), "data_migrate", "migration_context")
require File.join(File.dirname(__FILE__), "data_migrate", "railtie")
require File.join(File.dirname(__FILE__), "data_migrate", "tasks/data_migrate_tasks")
require File.join(File.dirname(__FILE__), "data_migrate", "legacy_migrator")
require File.join(File.dirname(__FILE__), "data_migrate", "config")

if Rails::VERSION::MAJOR == 5
  require File.join(File.dirname(__FILE__), "data_migrate", "schema_migration_five")
else
  require File.join(File.dirname(__FILE__), "data_migrate", "schema_migration_six")
end

module DataMigrate
  def self.root
    File.dirname(__FILE__)
  end
end
