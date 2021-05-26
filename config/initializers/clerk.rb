Clerk.configure do |c|
  c.middleware_cache_store = ActiveSupport::Cache::FileStore.new(Rails.root + "tmp/clerk_sdk_cache")
end
