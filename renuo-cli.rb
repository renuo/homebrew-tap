class RenuoCli < Formula
  desc "Description of your gem"
  homepage "https://github.com/yourusername/renuo-cli"
  url "URL_TO_GEM"
  sha256 "SHA256_HASH"

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

