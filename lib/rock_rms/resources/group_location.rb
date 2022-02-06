module RockRMS
  class Client
    module GroupLocation
      def list_group_locations(options = {})
        res = get(group_locations_path, options)
        Response::GroupLocation.format(res)
      end

      private

      def group_locations_path(id = nil)
        id ? "GroupLocations/#{id}" : 'GroupLocations'
      end
    end
  end
end
