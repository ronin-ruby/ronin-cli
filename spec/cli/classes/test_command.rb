require 'ronin/cli/command'

module Ronin
  module CLI
    module Commands
      class TestCommand < Ronin::CLI::Command

        summary 'Tests the default task'

        usage '[options] PATH FILE [..]'

        examples [
          'test_command --foo PATH',
          'test_command --foo PATH FILE ...'
        ]

        option :foo

        argument :path

        argument :files, :type => Array

        def execute
          if @foo then 'foo task'
          else         'default task'
          end
        end

      end
    end
  end
end
