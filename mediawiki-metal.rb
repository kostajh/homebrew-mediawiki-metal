class MediawikiMetal < Formula
  desc "Framework for running a MediaWiki development environment on \"bare metal\""
  homepage "https://www.mediawiki.org/wiki/MediaWiki-Metal"
  url "https://gitlab.wikimedia.org/kharlan/mediawiki-metal/-/archive/0.1.0/mediawiki-metal-0.1.0.zip"
  sha256 "3588874a737280456256307e3b20cd0c6e1340465a5b069385778723186c661a"
  license "GPL-3.0-or-later"

  depends_on "php@8.1"
  depends_on "httpd" => :recommended
  depends_on "mariadb" => :recommended

  def install
    bin.install "bin/mw-metal" => "mw-metal"
    prefix.install "README.md"
    prefix.install "LICENSE"
  end

  test do
    system "false"
  end
end
