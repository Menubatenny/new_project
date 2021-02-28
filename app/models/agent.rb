class Agent < ApplicationRecord

    before_save do
        self.delivery_status.gsub!(/[\[\]\"]/,"") if attribute_present?("delivery_status")
    end
end
