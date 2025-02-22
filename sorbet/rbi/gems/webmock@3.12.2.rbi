# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `webmock` gem.
# Please instead update this file by running `bin/tapioca gem webmock`.

module Net::WebMockHTTPResponse
  def read_body(dest = T.unsafe(nil), &block); end
end

class Net::WebMockNetBufferedIO < ::Net::BufferedIO
  def initialize(io, *args, **kwargs); end

  def rbuf_fill; end
end

class PatchedStringIO < ::StringIO
  def orig_read_nonblock(*_arg0); end
  def read_nonblock(size, *args, **kwargs); end
end

class StubSocket
  def initialize(*args); end

  def close; end
  def closed?; end
  def continue_timeout; end
  def continue_timeout=(_arg0); end
  def io; end
  def read_timeout; end
  def read_timeout=(_arg0); end
  def readuntil(*args); end
  def write_timeout; end
  def write_timeout=(_arg0); end
end

class StubSocket::StubIO
  def setsockopt(*args); end
end

module WebMock
  include ::WebMock::API
  extend ::WebMock::API

  def after_request(*args, &block); end
  def allow_net_connect!(*args, &block); end
  def disable_net_connect!(*args, &block); end
  def net_connect_allowed?(*args, &block); end
  def registered_request?(*args, &block); end
  def reset_callbacks(*args, &block); end
  def reset_webmock(*args, &block); end

  class << self
    def after_request(options = T.unsafe(nil), &block); end
    def allow_net_connect!(options = T.unsafe(nil)); end
    def disable!(options = T.unsafe(nil)); end
    def disable_net_connect!(options = T.unsafe(nil)); end
    def disallow_net_connect!(options = T.unsafe(nil)); end
    def enable!(options = T.unsafe(nil)); end
    def enable_net_connect!(options = T.unsafe(nil)); end
    def globally_stub_request(order = T.unsafe(nil), &block); end
    def hide_body_diff!; end
    def hide_stubbing_instructions!; end
    def included(clazz); end
    def net_connect_allowed?(uri = T.unsafe(nil)); end
    def net_connect_explicit_allowed?(allowed, uri = T.unsafe(nil)); end
    def print_executed_requests; end
    def registered_request?(request_signature); end
    def request(method, uri); end
    def reset!; end
    def reset_callbacks; end
    def reset_webmock; end
    def show_body_diff!; end
    def show_body_diff?; end
    def show_stubbing_instructions!; end
    def show_stubbing_instructions?; end
    def version; end
  end
end

module WebMock::API
  extend ::WebMock::API

  def a_request(method, uri); end
  def assert_not_requested(*args, &block); end
  def assert_requested(*args, &block); end
  def hash_excluding(*args); end
  def hash_including(*args); end
  def refute_requested(*args, &block); end
  def remove_request_stub(stub); end
  def reset_executed_requests!; end
  def stub_http_request(method, uri); end
  def stub_request(method, uri); end

  private

  def anythingize_lonely_keys(*args); end
  def assert_request_not_requested(request, options = T.unsafe(nil)); end
  def assert_request_requested(request, options = T.unsafe(nil)); end
  def convert_uri_method_and_options_to_request_and_options(method, uri, options, &block); end

  class << self
    def request(method, uri); end
  end
end

class WebMock::AssertionFailure
  class << self
    def error_class; end
    def error_class=(_arg0); end
    def failure(message); end
  end
end

class WebMock::BodyPattern
  include ::WebMock::RSpecMatcherDetector

  def initialize(pattern); end

  def matches?(body, content_type = T.unsafe(nil)); end
  def pattern; end
  def to_s; end

  private

  def assert_non_multipart_body(content_type); end
  def body_as_hash(body, content_type); end
  def body_format(content_type); end
  def empty_string?(string); end
  def matching_body_hashes?(query_parameters, pattern, content_type); end
  def normalize_hash(hash); end
  def url_encoded_body?(content_type); end
end

WebMock::BodyPattern::BODY_FORMATS = T.let(T.unsafe(nil), Hash)

class WebMock::CallbackRegistry
  class << self
    def add_callback(options, block); end
    def any_callbacks?; end
    def callbacks; end
    def invoke_callbacks(options, request_signature, response); end
    def reset; end
  end
end

class WebMock::Config
  include ::Singleton
  extend ::Singleton::SingletonClassMethods

  def initialize; end

  def allow; end
  def allow=(_arg0); end
  def allow_localhost; end
  def allow_localhost=(_arg0); end
  def allow_net_connect; end
  def allow_net_connect=(_arg0); end
  def net_http_connect_on_start; end
  def net_http_connect_on_start=(_arg0); end
  def query_values_notation; end
  def query_values_notation=(_arg0); end
  def show_body_diff; end
  def show_body_diff=(_arg0); end
  def show_stubbing_instructions; end
  def show_stubbing_instructions=(_arg0); end
end

class WebMock::Deprecation
  class << self
    def warning(message); end
  end
end

class WebMock::DynamicResponse < ::WebMock::Response
  def initialize(responder); end

  def evaluate(request_signature); end
  def responder; end
  def responder=(_arg0); end
end

class WebMock::HashValidator
  def initialize(hash); end

  def validate_keys(*valid_keys); end
end

class WebMock::HeadersPattern
  def initialize(pattern); end

  def matches?(headers); end
  def pp_to_s; end
  def to_s; end

  private

  def empty_headers?(headers); end
end

class WebMock::HttpLibAdapter
  class << self
    def adapter_for(lib); end
  end
end

class WebMock::HttpLibAdapterRegistry
  include ::Singleton
  extend ::Singleton::SingletonClassMethods

  def initialize; end

  def each_adapter(&block); end
  def http_lib_adapters; end
  def http_lib_adapters=(_arg0); end
  def register(lib, adapter); end
end

module WebMock::HttpLibAdapters; end

class WebMock::HttpLibAdapters::NetHttpAdapter < ::WebMock::HttpLibAdapter
  class << self
    def disable!; end
    def enable!; end
  end
end

WebMock::HttpLibAdapters::NetHttpAdapter::OriginalNetBufferedIO = Net::BufferedIO
WebMock::HttpLibAdapters::NetHttpAdapter::OriginalNetHTTP = Net::HTTP
module WebMock::Matchers; end

class WebMock::Matchers::AnyArgMatcher
  def initialize(ignore); end

  def ==(other); end
end

class WebMock::Matchers::HashArgumentMatcher
  def initialize(expected); end

  def ==(_actual, &block); end

  class << self
    def from_rspec_matcher(matcher); end
  end
end

class WebMock::Matchers::HashExcludingMatcher < ::WebMock::Matchers::HashArgumentMatcher
  def ==(actual); end
  def inspect; end
end

class WebMock::Matchers::HashIncludingMatcher < ::WebMock::Matchers::HashArgumentMatcher
  def ==(actual); end
  def inspect; end
end

class WebMock::MethodPattern
  def initialize(pattern); end

  def matches?(method); end
  def to_s; end
end

class WebMock::NetConnectNotAllowedError < ::Exception
  def initialize(request_signature); end
end

module WebMock::NetHTTPUtility
  class << self
    def check_right_http_connection; end
    def get_uri(net_http, path); end
    def puts_warning_for_right_http_if_needed; end
    def request_signature_from_request(net_http, request, body = T.unsafe(nil)); end
    def validate_headers(headers); end
  end
end

module WebMock::RSpecMatcherDetector
  def rSpecHashExcludingMatcher?(matcher); end
  def rSpecHashIncludingMatcher?(matcher); end
end

class WebMock::RackResponse < ::WebMock::Response
  def initialize(app); end

  def body_from_rack_response(response); end
  def build_rack_env(request); end
  def evaluate(request); end
  def session; end
  def session_options; end
end

class WebMock::RequestBodyDiff
  def initialize(request_signature, request_stub); end

  def body_diff; end

  private

  def parseable_json?(body_pattern); end
  def request_signature; end
  def request_signature_body_hash; end
  def request_signature_diffable?; end
  def request_signature_parseable_json?; end
  def request_stub; end
  def request_stub_body; end
  def request_stub_body_hash; end
  def request_stub_diffable?; end
  def request_stub_parseable_json?; end
end

class WebMock::RequestExecutionVerifier
  def initialize(request_pattern = T.unsafe(nil), expected_times_executed = T.unsafe(nil), at_least_times_executed = T.unsafe(nil), at_most_times_executed = T.unsafe(nil)); end

  def at_least_times_executed; end
  def at_least_times_executed=(_arg0); end
  def at_most_times_executed; end
  def at_most_times_executed=(_arg0); end
  def description; end
  def does_not_match?; end
  def expected_times_executed; end
  def expected_times_executed=(_arg0); end
  def failure_message; end
  def failure_message_when_negated; end
  def matches?; end
  def request_pattern; end
  def request_pattern=(_arg0); end
  def times_executed; end
  def times_executed=(_arg0); end

  private

  def failure_message_phrase(is_negated = T.unsafe(nil)); end
  def quantity_phrase(is_negated = T.unsafe(nil)); end
  def times(times); end

  class << self
    def executed_requests_message; end
  end
end

class WebMock::RequestPattern
  def initialize(method, uri, options = T.unsafe(nil)); end

  def body_pattern; end
  def headers_pattern; end
  def matches?(request_signature); end
  def method_pattern; end
  def to_s; end
  def uri_pattern; end
  def with(options = T.unsafe(nil), &block); end

  private

  def assign_options(options); end
  def create_uri_pattern(uri); end
  def set_basic_auth_as_headers!(options); end
  def validate_basic_auth!(basic_auth); end
end

class WebMock::RequestRegistry
  include ::Singleton
  extend ::Singleton::SingletonClassMethods

  def initialize; end

  def requested_signatures; end
  def requested_signatures=(_arg0); end
  def reset!; end
  def times_executed(request_pattern); end
  def to_s; end
end

class WebMock::RequestSignature
  def initialize(method, uri, options = T.unsafe(nil)); end

  def ==(other); end
  def body; end
  def body=(_arg0); end
  def eql?(other); end
  def hash; end
  def headers; end
  def headers=(headers); end
  def json_headers?; end
  def method; end
  def method=(_arg0); end
  def to_s; end
  def uri; end
  def uri=(_arg0); end
  def url_encoded?; end

  private

  def assign_options(options); end
end

class WebMock::RequestSignatureSnippet
  def initialize(request_signature); end

  def request_signature; end
  def request_stub; end
  def request_stubs; end
  def stubbing_instructions; end

  private

  def add_body_diff(stub, text); end
  def pretty_print_to_string(string_to_print); end
  def request_params; end
  def signature_stub_body_diff(stub); end
end

class WebMock::RequestStub
  def initialize(method, uri); end

  def and_raise(*exceptions); end
  def and_return(*response_hashes, &block); end
  def and_timeout; end
  def has_responses?; end
  def matches?(request_signature); end
  def request_pattern; end
  def request_pattern=(_arg0); end
  def response; end
  def then; end
  def times(number); end
  def to_rack(app, options = T.unsafe(nil)); end
  def to_raise(*exceptions); end
  def to_return(*response_hashes, &block); end
  def to_s; end
  def to_timeout; end
  def with(params = T.unsafe(nil), &block); end

  class << self
    def from_request_signature(signature); end
  end
end

class WebMock::Response
  def initialize(options = T.unsafe(nil)); end

  def ==(other); end
  def body; end
  def body=(body); end
  def evaluate(request_signature); end
  def exception; end
  def exception=(exception); end
  def headers; end
  def headers=(headers); end
  def options=(options); end
  def raise_error_if_any; end
  def should_timeout; end
  def status; end
  def status=(status); end

  private

  def assert_valid_body!; end
  def read_raw_response(raw_response); end
  def stringify_body!; end
end

class WebMock::Response::InvalidBody < ::StandardError; end

class WebMock::ResponseFactory
  class << self
    def response_for(options); end
  end
end

class WebMock::ResponsesSequence
  def initialize(responses); end

  def end?; end
  def next_response; end
  def times_to_repeat; end
  def times_to_repeat=(_arg0); end

  private

  def increase_position; end
end

class WebMock::StubRegistry
  include ::Singleton
  extend ::Singleton::SingletonClassMethods

  def initialize; end

  def global_stubs; end
  def register_global_stub(order = T.unsafe(nil), &block); end
  def register_request_stub(stub); end
  def registered_request?(request_signature); end
  def remove_request_stub(stub); end
  def request_stubs; end
  def request_stubs=(_arg0); end
  def reset!; end
  def response_for_request(request_signature); end

  private

  def evaluate_response_for_request(response, request_signature); end
  def request_stub_for(request_signature); end
end

class WebMock::StubRequestSnippet
  def initialize(request_stub); end

  def body_pattern; end
  def to_s(with_response = T.unsafe(nil)); end
end

class WebMock::URIAddressablePattern < ::WebMock::URIPattern
  def add_query_params(query_params); end

  private

  def matches_with_variations?(uri); end
  def pattern_inspect; end
  def pattern_matches?(uri); end
  def template_matches_uri?(template, uri); end
end

class WebMock::URICallablePattern < ::WebMock::URIPattern
  private

  def pattern_matches?(uri); end
end

class WebMock::URIPattern
  include ::WebMock::RSpecMatcherDetector

  def initialize(pattern); end

  def add_query_params(query_params); end
  def matches?(uri); end
  def to_s; end

  private

  def pattern_inspect; end
  def query_params_matches?(uri); end
end

class WebMock::URIRegexpPattern < ::WebMock::URIPattern
  private

  def pattern_matches?(uri); end
end

class WebMock::URIStringPattern < ::WebMock::URIPattern
  def add_query_params(query_params); end

  private

  def pattern_inspect; end
  def pattern_matches?(uri); end
end

module WebMock::Util; end

class WebMock::Util::HashCounter
  def initialize; end

  def each(&block); end
  def get(key); end
  def hash; end
  def hash=(_arg0); end
  def put(key, num = T.unsafe(nil)); end
  def select(&block); end
end

class WebMock::Util::HashKeysStringifier
  class << self
    def stringify_keys!(arg, options = T.unsafe(nil)); end
  end
end

class WebMock::Util::Headers
  class << self
    def basic_auth_header(*credentials); end
    def decode_userinfo_from_header(header); end
    def normalize_headers(headers); end
    def pp_headers_string(headers); end
    def sorted_headers_string(headers); end
  end
end

class WebMock::Util::JSON
  class << self
    def convert_json_to_yaml(json); end
    def parse(json); end
    def unescape(str); end
  end
end

class WebMock::Util::JSON::ParseError < ::StandardError; end

class WebMock::Util::QueryMapper
  class << self
    def collect_query_hash(query_array, empty_accumulator, options); end
    def collect_query_parts(query); end
    def dehash(hash); end
    def fill_accumulator_for_dot(accumulator, key, value); end
    def fill_accumulator_for_flat(accumulator, key, value); end
    def fill_accumulator_for_flat_array(accumulator, key, value); end
    def fill_accumulator_for_subscript(accumulator, key, value); end
    def normalize_query_hash(query_hash, empty_accumulator, options); end
    def query_to_values(query, options = T.unsafe(nil)); end
    def to_query(parent, value, options = T.unsafe(nil)); end
    def values_to_query(new_query_values, options = T.unsafe(nil)); end
  end
end

class WebMock::Util::URI
  class << self
    def encode_unsafe_chars_in_userinfo(userinfo); end
    def heuristic_parse(uri); end
    def is_uri_localhost?(uri); end
    def normalize_uri(uri); end
    def sort_query_values(query_values); end
    def strip_default_port_from_uri_string(uri_string); end
    def uris_encoded_and_unencoded(uris); end
    def uris_with_inferred_port_and_without(uris); end
    def uris_with_scheme_and_without(uris); end
    def uris_with_trailing_slash_and_without(uris); end
    def variations_of_uri_as_strings(uri_object, only_with_scheme: T.unsafe(nil)); end
  end
end

WebMock::Util::URI::ADDRESSABLE_URIS = T.let(T.unsafe(nil), Hash)
module WebMock::Util::URI::CharacterClasses; end
WebMock::Util::URI::CharacterClasses::USERINFO = T.let(T.unsafe(nil), String)
WebMock::Util::URI::NORMALIZED_URIS = T.let(T.unsafe(nil), Hash)

class WebMock::Util::ValuesStringifier
  class << self
    def stringify_values(value); end
  end
end

WebMock::VERSION = T.let(T.unsafe(nil), String)

class WebMock::VersionChecker
  def initialize(library_name, library_version, min_patch_level, max_minor_version = T.unsafe(nil), unsupported_versions = T.unsafe(nil)); end

  def check_version!; end

  private

  def colorize(text, color_code); end
  def compare_version; end
  def parse_version(version); end
  def too_high?; end
  def too_low?; end
  def unsupported_version?; end
  def version_requirement; end
  def warn_about_too_high; end
  def warn_about_too_low; end
  def warn_about_unsupported_version; end
  def warn_in_red(text); end
end
