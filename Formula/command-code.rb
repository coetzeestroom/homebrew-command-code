class CommandCode < Formula
  desc "AI coding agent that runs in your terminal"
  homepage "https://www.npmjs.com/package/command-code"
  url "https://registry.npmjs.org/command-code/-/command-code-1.93.3.tgz"
  sha256 "73d27cc2f0f86d44eabcbf889a7edc9914f168f4e426435540c053e45b68a07c"
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
