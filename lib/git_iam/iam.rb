LONGHAND = {
  'repo' => 'repository'
}

module GitIam
  class Iam

    def self.set(options)
      message = []

      options.each do |setting, value|
        message << "Current #{LONGHAND[setting] || setting} set to #{value}."
      end

      message
    end

    def self.who
      'tgolson'
    end
  end
end
