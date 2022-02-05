module RockRMS
  module Response
    class GroupLocation < Base
      MAP = {
        id: 'Id',
        group_id: 'GroupId',
        location_id: 'LocationId',
        guid: 'Guid'
      }.merge(TIMESTAMPS).freeze

      def format_single(data)
        result = to_h(MAP, data)

        if location = data['Location']
          result[:location] = Location.format(location)
        end

        result
      end
    end
  end
end
