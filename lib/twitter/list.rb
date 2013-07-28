require 'twitter/creatable'
require 'twitter/identity'

module Twitter
  class List < Twitter::Identity
    include Twitter::Creatable
    attr_reader :description, :following, :full_name, :member_count,
      :mode, :name, :slug, :subscriber_count
    object_attr_reader :User, :user

    # @return [String] The URL to the list members.
    def members_url(protocol="https")
      "#{protocol}://twitter.com/#{user.screen_name}/#{slug}/members"
    end
    alias members_uri members_url

    # @return [String] The URL to the list subscribers.
    def subscribers_url(protocol="https")
      "#{protocol}://twitter.com/#{user.screen_name}/#{slug}/subscribers"
    end
    alias subscribers_uri subscribers_url

    # @return [String] The URL to the list.
    def url(protocol="https")
      "#{protocol}://twitter.com/#{user.screen_name}/#{slug}"
    end
    alias uri url

  end
end
