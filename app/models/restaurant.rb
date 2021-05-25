class Restaurant < ApplicationRecord

  # ActiveRecord::Base creates all the attr_accessors for us!

  def cool_description
    "[#{rating}] #{name}: find us at #{address}"
  end

end
