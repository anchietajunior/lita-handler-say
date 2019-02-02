module Lita
  module Handlers
    class Say < Handler
      route(
        /^say\s+(\d+)$/i,
        :just_say,
        command: true,
        help: { 'say N' => 'prints N + N' }
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
