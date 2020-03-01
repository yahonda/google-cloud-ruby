module BundlerHack
  def __materialize__
    if name == 'grpc' || name == 'google-protobuf'
      Bundler.settings.temporary(force_ruby_platform: true) do
        super
      end
    else
      super
    end
  end
end
Bundler::LazySpecification.prepend(BundlerHack)

source "https://rubygems.org"

gem "rake", "~> 12.3"
# Pin minitest to 5.11.x to avoid warnings emitted by 5.12.
# See https://github.com/googleapis/google-cloud-ruby/issues/4110
gem "minitest", "~> 5.11.3"
gem "minitest-autotest", "~> 1.0"
gem "minitest-focus", "~> 1.1"
gem "minitest-rg", "~> 5.2"
gem "autotest-suffix", "~> 1.1"
gem "redcarpet", "~> 3.0"
gem "rubocop", "~> 0.64.0"
gem "simplecov", "~> 0.16"
gem "codecov", "~> 0.1", require: false
gem "yard", "~> 0.9"
gem "yard-doctest", "~> 0.1.13"
gem "gems", "~> 0.8"
gem "actionpack", "~> 5.0"
gem "railties", "~> 5.0"
gem "rack", ">= 0.1"

gem "google-cloud-core", path: "google-cloud-core"
gem "google-cloud-env", path: "google-cloud-env"
gem "google-cloud-errors", path: "google-cloud-errors"
gem "google-cloud-asset", path: "google-cloud-asset"
gem "google-cloud-automl", path: "google-cloud-automl"
gem "google-cloud-bigquery", path: "google-cloud-bigquery"
gem "google-cloud-bigquery-data_transfer", path: "google-cloud-bigquery-data_transfer"
gem "google-cloud-bigtable", path: "google-cloud-bigtable"
gem "google-cloud-billing", path: "google-cloud-billing"
gem "google-cloud-billing-v1", path: "google-cloud-billing-v1"
gem "google-cloud-container", path: "google-cloud-container"
gem "google-cloud-container_analysis", path: "google-cloud-container_analysis"
gem "google-cloud-dataproc", path: "google-cloud-dataproc"
gem "google-cloud-datastore", path: "google-cloud-datastore"
gem "google-cloud-debugger", path: "google-cloud-debugger"
gem "google-cloud-dialogflow", path: "google-cloud-dialogflow"
gem "google-cloud-dlp", path: "google-cloud-dlp"
gem "google-cloud-dns", path: "google-cloud-dns"
gem "google-cloud-error_reporting", path: "google-cloud-error_reporting"
gem "google-cloud-firestore", path: "google-cloud-firestore"
gem "google-cloud-irm", path: "google-cloud-irm"
gem "google-cloud-kms", path: "google-cloud-kms"
gem "google-cloud-language", path: "google-cloud-language"
gem "google-cloud-logging", path: "google-cloud-logging"
gem "google-cloud-monitoring", path: "google-cloud-monitoring"
gem "google-cloud-os_login", path: "google-cloud-os_login"
gem "google-cloud-phishing_protection", path: "google-cloud-phishing_protection"
gem "google-cloud-pubsub", path: "google-cloud-pubsub"
gem "google-cloud-recaptcha_enterprise", path: "google-cloud-recaptcha_enterprise"
gem "google-cloud-recommender", path: "google-cloud-recommender"
gem "google-cloud-recommender-v1", path: "google-cloud-recommender-v1"
gem "google-cloud-redis", path: "google-cloud-redis"
gem "google-cloud-resource_manager", path: "google-cloud-resource_manager"
gem "google-cloud-scheduler", path: "google-cloud-scheduler"
gem "google-cloud-secret_manager", path: "google-cloud-secret_manager"
gem "google-cloud-secret_manager-v1beta1", path: "google-cloud-secret_manager-v1beta1"
gem "google-cloud-security_center", path: "google-cloud-security_center"
gem "google-cloud-spanner", path: "google-cloud-spanner"
gem "google-cloud-speech", path: "google-cloud-speech"
gem "google-cloud-storage", path: "google-cloud-storage"
gem "google-cloud-talent", path: "google-cloud-talent"
gem "google-cloud-tasks", path: "google-cloud-tasks"
gem "google-cloud-text_to_speech", path: "google-cloud-text_to_speech"
gem "google-cloud-trace", path: "google-cloud-trace"
gem "google-cloud-translate", path: "google-cloud-translate"
gem "google-cloud-video_intelligence", path: "google-cloud-video_intelligence"
gem "google-cloud-vision", path: "google-cloud-vision"
gem "google-cloud-webrisk", path: "google-cloud-webrisk"
gem "google-cloud", path: "google-cloud"
gem "gcloud", path: "gcloud"
gem "stackdriver-core", path: "stackdriver-core"
gem "stackdriver", path: "stackdriver"
gem "grafeas", path: "grafeas"
gem "grafeas-client", path: "grafeas-client"
