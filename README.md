# ordway-sdk

Ordway - the Ruby gem for the Ordway

No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

This SDK is automatically generated by the [Swagger Codegen](https://github.com/swagger-api/swagger-codegen) project:

- API version: 1.0.0
- Package version: 1
- Build package: io.swagger.codegen.languages.RubyClientCodegen

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build ordway-sdk.gemspec
```

Then either install the gem locally:

```shell
gem install ./ordway-sdk-1.gem
```
(for development, run `gem install --dev ./ordway-sdk-1.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'ordway-sdk', '~> 1'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/YOUR_GIT_USERNAME/YOUR_GIT_REPO, then add the following in the Gemfile:

    gem 'ordway-sdk', :git => 'https://github.com/YOUR_GIT_USERNAME/YOUR_GIT_REPO.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:
```ruby
# Load the gem
require 'ordway-sdk'

# Setup authorization
Ordway.configure do |config|
  # Configure API key authorization: X-API-KEY
  config.api_key['X-API-KEY'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-API-KEY'] = 'Bearer'

  # Configure API key authorization: X-User-Company
  config.api_key['X-User-Company'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-User-Company'] = 'Bearer'

  # Configure API key authorization: X-User-Email
  config.api_key['X-User-Email'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-User-Email'] = 'Bearer'

  # Configure API key authorization: X-User-Token
  config.api_key['X-User-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['X-User-Token'] = 'Bearer'
end

api_instance = Ordway::BillingRunsApi.new

id = 'id_example' # String | The unique id of the product.


begin
  #Delete Billing Runs
  result = api_instance.delete_billing_runs(id)
  p result
rescue Ordway::ApiError => e
  puts "Exception when calling BillingRunsApi->delete_billing_runs: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *https://api.ordwaylabs.com/api/v1*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*Ordway::CustomersApi* | [**get_customers**](docs/CustomersApi.md#get_customers) | **GET** /customers/{id} | Get Customer
*Ordway::CustomersApi* | [**post_customers**](docs/CustomersApi.md#post_customers) | **POST** /customers | Create Customer

## Documentation for Models
 - [Ordway::Customers](docs/Customers.md)

## Documentation for Authorization


### X-API-KEY

- **Type**: API key
- **API key parameter name**: X-API-KEY
- **Location**: HTTP header

### X-User-Company

- **Type**: API key
- **API key parameter name**: X-User-Company
- **Location**: HTTP header

### X-User-Email

- **Type**: API key
- **API key parameter name**: X-User-Email
- **Location**: HTTP header

### X-User-Token

- **Type**: API key
- **API key parameter name**: X-User-Token
- **Location**: HTTP header

