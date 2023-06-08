module Helper
  def convert_array_to_csv(data)
    csv_keys = data[0].keys.join(',')

    csv_file = data.map do |ele|
      ele.values.join(',')
    end.join("\n")

    "#{csv_keys}\n#{csv_file}"
  end

  def convert_hash_to_csv(data)
    csv_keys = data.keys.join(',')

    csv_values = data.values.join(',')

    "#{csv_keys}\n#{csv_values}"
  end

  def relation_to_array(data)
    array_value = data.map(&:attributes)

    convert_array_to_csv(array_value)
  rescue StandardError
    invalid_format
  end

  def object_to_hash(data)
    convert_hash_to_csv(data.attributes)
  rescue StandardError
    invalid_format
  end

  def invalid_format
    'Invalid format!'
  end
end
