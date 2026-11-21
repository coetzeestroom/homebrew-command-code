class CommandCode < Formula
  desc "AI coding agent that runs in your terminal"
  homepage "https://www.npmjs.com/package/command-code"
  url "https://registry.npmjs.org/command-code/-/command-code-1.92.0.tgz"
  sha256 "da0d5fb11c39d4d3a382fc423fcda4b88447d9f0fe2f798afa7a477948ee0efd"
  license "MIT"

  depends_on "node@22"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/command-code --version")
  end
end
