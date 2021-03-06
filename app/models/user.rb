class User < ApplicationRecord
  def self.find_or_create_from_auth_hash!(auth_hash)
    provider=auth_hash[:provider]
    uid=auth_hash[:uid]
    nickname=auth_hash[:nickname]
    image_url=auth_hash[:image_url]

    User.find_or_create_by!(provider: provider, uid: uid) do |user|
      user.name=nickname
      user.image_url=image_url
    end
  end
end
