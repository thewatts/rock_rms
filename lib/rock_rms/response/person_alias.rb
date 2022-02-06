module RockRMS
  module Response
    class PersonAlias < Base
      MAP = {
        id: 'Id',
        name: 'Name',
        person_id: 'PersonId',
      }.freeze

      def format_single(data)
        to_h(MAP, data)
      end
    end
  end
end
