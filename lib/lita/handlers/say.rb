module Lita
  module Handlers
    class Say < Handler
      route(/say/,
        :just_say,
        command: true,
        help: { 'say' => 'just say Hi!' }
      )

      def just_say(response)
        response.reply "Hi!"
      end

      Lita.register_handler(self)
    end
  end
end
