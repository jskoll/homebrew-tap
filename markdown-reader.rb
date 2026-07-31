# typed: strict
# frozen_string_literal: true

# Personal markdown-reader build with runtime theme and status-bar customization.
class MarkdownReader < Formula
  desc "Terminal Markdown reader with custom themes and configurable status bars"
  homepage "https://github.com/jskoll/markdown-reader"
  url "https://github.com/jskoll/markdown-reader/archive/fa359379287fad9563801e423ec53ccb8a4f0fdc.tar.gz"
  version "1.34.75.1"
  sha256 "890dc34d5f6d045fbbf758b6860213819c6950ffe152659d718b336bb211db24"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "markdown-reader 1.34.75", shell_output("#{bin}/markdown-reader --version")
  end
end
