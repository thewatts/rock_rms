module RockRMS
  class Client
    module PersonAlias
      def list_person_aliases(options = {})
        res = get(person_alias_path, options)
        Response::PersonAlias.format(res)
      end

      private

      def person_alias_path(id = nil)
        id ? "PersonAlias/#{id}" : 'PersonAlias'
      end
    end
  end
end
