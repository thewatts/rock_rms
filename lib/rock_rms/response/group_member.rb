module RockRMS
  module Response
    class GroupMember < Base
      MAP = {
        id: 'Id',
        person_id: 'PersonId',
        group_id: 'GroupId',
      }.merge(TIMESTAMPS).freeze

      def format_single(data)
        to_h(MAP, data)
      end
    end
  end
end
