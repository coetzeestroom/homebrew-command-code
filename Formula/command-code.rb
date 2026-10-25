class CommandCode < Formula
  desc "AI coding agent that runs in your terminal"
  homepage "https://www.npmjs.com/package/command-code"
  url "https://registry.npmjs.org/command-code/-/command-code-1.84.0.tgz"
  sha256 "8408bd70925276e57f2c30b430f017f2904aaf8f5beb62a31e89edc7fbcf2cbf"
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