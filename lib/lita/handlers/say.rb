module Lita
  module Handlers
    class Say < Handler
      route(
        /ˆsay\s+(\d+)$/i,
        :just_say,
        command: true,
        help: { 'say' => 'just say Hi! = #{doube(n)}' }
      )

      def just_say(response)
        n = response.match_data.captures.first
        n = Integer(n)

        response.reply "Hi! #{double(n)}"
      end

      def double(n)
        n + n
      end

      Lita.register_handler(self)
    end
  end
end
