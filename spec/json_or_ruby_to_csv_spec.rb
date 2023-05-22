# frozen_string_literal: true

describe JsonOrRubyToCsv do
    let(:dummy){ Dummy.new } 
   context 'When we pass array of string ' do
    let(:data){["Meshu", "Amare",29]}
    it 'array_or_hash_to_csv should return invalid format! ' do
      expect(dummy.array_or_hash_to_csv(data)).to eq('Invalid format!')
    end
  end
   context 'When we pass array of hash' do
    let(:data){[{name: 'Meshu', age: 29}]}
    it 'array_or_hash_to_csv should return csv formated string ' do
      expect(dummy.array_or_hash_to_csv(data)).to eq("name,age\nMeshu,29")
    end
  end

   context 'When we pass simple hash' do
    let(:data){{name: 'Meshu', age: 29}}
    it 'array_or_hash_to_csv should return csv formated string ' do
      expect(dummy.array_or_hash_to_csv(data)).to eq("name,age\nMeshu,29")
    end
  end
end

class Dummy
    include JsonOrRubyToCsv

end
