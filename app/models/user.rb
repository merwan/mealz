class User < ActiveRecord::Base
  has_many :plannings

  def self.find_or_create_from_auth_hash(auth_data)
    find_or_create_by_provider_and_uid(auth_data['provider'], auth_data['uid'],
                                       name: auth_data['info']['name'])
  end
end
