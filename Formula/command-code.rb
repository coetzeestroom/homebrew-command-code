class CommandCode < Formula
  desc "AI coding agent that runs in your terminal"
  homepage "https://www.npmjs.com/package/command-code"
  url "https://registry.npmjs.org/command-code/-/command-code-1.89.1.tgz"
  sha256 "c3d5e0b1f3d28784476a15b8041ec0181a0517bc79f06bb19257083e0e97f187"
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
