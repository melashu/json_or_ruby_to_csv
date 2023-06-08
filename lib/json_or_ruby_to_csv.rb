require_relative './json_or_ruby_to_csv/helper'

module JsonOrRubyToCsv
  include Helper
  def array_or_hash_to_csv(data)
    case data
    when Array
      begin
        new_data = data.map(&:to_h)
        convert_array_to_csv(new_data)
      rescue StandardError
        invalid_format
      end
    when Hash
      convert_hash_to_csv(data)
    else
      invalid_format
    end
  end

  def activerecord_to_csv(data)
    if data.respond_to?(:each)
      relation_to_array(data)
    else
      object_to_hash(data)
    end
  end
end
