# Load the Rails application.
require File.expand_path('../application', __FILE__)

Encoding.default_external = Encoding.find("UTF-8")

Time::DATE_FORMATS[:ru_datetime] = "%Y.%m.%d в %k:%M:%S"

DateTime::DATE_FORMATS[:short]="short %Y-%m-%d %H:%M:%S"

Time::DATE_FORMATS[:short] = "short %Y-%m-%d %H:%M:%S"

Date::DATE_FORMATS[:short] = "short %Y-%m-%d"

# Initialize the Rails application.
BloGNote::Application.initialize!

