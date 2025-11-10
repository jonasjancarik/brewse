class Brewse < Formula
  include Language::Python::Virtualenv

  desc "Interactive TUI browser for Homebrew packages"
  homepage "https://github.com/jonasjancarik/brewse"
  url "https://files.pythonhosted.org/packages/source/b/brewse/brewse-0.1.2.tar.gz"
  sha256 "d143d06b7310279ed5861e4f46050ce44d6223202cfa923925cde12fb6766e37"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/brewse", "--version"
  end
end

