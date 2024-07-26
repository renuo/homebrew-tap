class RenuoCli < Formula
  desc "Description of your gem"
  homepage "https://github.com/renuo/renuo-cli"
  url "https://rubygems.org/downloads/renuo-cli-4.2.1.gem"
  sha256 "e875d792c5df23bd26f073898329d44078fcac9fb203f9512d217fb6c281feca"

  depends_on "ruby"

  def install
    system "gem", "build", "renuo-cli.gemspec"
    system "gem", "install", "renuo-cli-VERSION.gem"

    bin.install Dir["bin/*"]
  end

  test do
    system "#{bin}/renuo", "--version"
  end
end

