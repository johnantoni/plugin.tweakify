module Tweakify
end

require 'common/active_record'
require 'common/string'
require 'common/hash'
require 'common/array'
require 'common/object'
require 'common/patches'

require 'helpers/cache'
require 'helpers/dates'
require 'helpers/links'
require 'helpers/rake'

# time formats
Time::DATE_FORMATS[:clean] = "%A, %B %d, %Y"