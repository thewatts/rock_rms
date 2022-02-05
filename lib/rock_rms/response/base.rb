module RockRMS
  module Response
    class Base
      TIMESTAMPS = {
        created_date_time: "CreatedDateTime",
        modified_date_time: "ModifiedDateTime",
      }.freeze

      attr_reader :data

      def self.format(data)
        new(data).format
      end

      def initialize(data)
        @data = data
      end

      def format
        if data.is_a?(Array)
          data.map { |item| format_single(item) }
        else
          format_single(data)
        end
      end

      def to_h(dict, data)
        return {} if data.nil?

        dict.each_with_object({}) do |(l, r), object|
          object[l] = data[r]
        end
      end
    end
  end
end
