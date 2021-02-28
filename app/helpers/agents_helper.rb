module AgentsHelper

    def checked(area)
        @agent.delivery_status.nil? ? false : @agent.delivery_status.match(area)
    end
end
