class CommandCode < Formula
  desc "AI coding agent that runs in your terminal"
  homepage "https://www.npmjs.com/package/command-code"
  url "https://registry.npmjs.org/command-code/-/command-code-1.53.0.tgz"
  sha256 "ad3c30718e935e1c40d7720791580da5ea234c6a08f01a9a4da9967963294d667ad10406a977a231df0d08329c815b4016710db94c6aecaad255ea91e7c0778d
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