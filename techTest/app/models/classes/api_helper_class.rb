require 'rest-client'
module Classes
  class ApiHelperClass
    def self.get_hard_cover(cover_type, publish_date)
      res = RestClient.get('https://api.nytimes.com/svc/books/v3/lists//.json', { params: {
        "api-key" => "66b00f8874f04e9483b423998fa61179",
        "list-name" => cover_type,
        "published-date" => publish_date }})
      return JSON.parse(res.body)
    end
  end
end