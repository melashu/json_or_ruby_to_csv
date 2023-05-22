# frozen_string_literal: true
require 'json_or_ruby_to_csv'
require 'spec_helper'
describe Helper do
  let(:dummy){Dummy.new}
  context 'When we pass array of hash' do
    let(:data){[{name: 'Meshu', age: 29}]}
    it 'convert_array_to_csv should return csv formated string ' do
      expect(dummy.convert_array_to_csv(data)).to eq("name,age\nMeshu,29")
    end
  end
  context 'When we pass simple hash' do
    let(:data){{name: 'Meshu', age: 29}}
    it 'convert_hash_to_csv should return csv formated string ' do
      expect(dummy.convert_hash_to_csv(data)).to eq("name,age\nMeshu,29")
    end
  end
end

class Dummy
include Helper

end
