# frozen_string_literal: true
require 'json_or_ruby_to_csv'
require 'spec_helper'
describe JsonOrRubyToCsv do
  describe "" do
    it "" do
      
      expect(Dummy.new.name).to eq('meshu')
    end
  end
end

class Dummy
include JsonOrRubyToCsv

end
