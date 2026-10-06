# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

## [0.1.0] - YYYY-MM-DD

### Added

- Initial release of `azure_rest` Ruby gem.
- **Tier 1 (Generated OpenAPI Layer):** Low-level API client and model classes for all major Azure Resource Manager namespaces: Compute, Network, Storage, Resources, SQL, MySQL, MariaDB, PostgreSQL, KeyVault, ContainerService, Authorization, Insights, HDInsight, Commerce.
- **Tier 2 (Ergonomic Client):** `AzureRest::Client` with profile-driven API versioning, automatic authentication and token lifecycle management (`ClientCredentialToken`, `PasswordToken`), Azure Stack metadata discovery, `Enumerable` auto-pagination (`Http::Paginator`), long-running operation polling (`Http::LroPoller`), and unified error hierarchy (`AzureApiError` and subclasses).
- Five built-in profiles: `AzureLatest`, `AzureUSGovLatest`, `AzureStack20200901`, `AzureStack20180301`, `AzureStack20170309`.
- Weekly automated SDK regeneration via GitHub Actions (`openapi-generate` workflow).

[Unreleased]: https://github.com/ManageIQ/azure_rest-sdk-ruby/compare/v0.1.0...HEAD
[0.1.0]: https://github.com/ManageIQ/azure_rest-sdk-ruby/releases/tag/v0.1.0
