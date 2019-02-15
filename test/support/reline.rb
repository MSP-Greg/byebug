# frozen_string_literal: true

require "reline"

unless STDOUT.tty? && STDIN.tty?
  Reline::IOGate = Reline::GeneralIO

  Reline.input = $stdin
end
