require 'formula'

class Mcmap < Formula
  VERSION = '2.3b'

  # We're using this fork, while waiting for pull request to fix Makefile goes into original project
  # see https://github.com/Zahl/mcmap/pull/24
  head 'https://github.com/mroderick/mcmap.git'

  # Should really be, https://github.com/Zahl/mcmap, see comment above about pull request
  homepage 'https://github.com/mroderick/mcmap'

  version VERSION

  depends_on :x11

  def install
    system "make"
    bin.install "mcmap"
  end

  def test
    system "mcmap | grep 'mcmap by Zahl - an isometric minecraft map rendering tool. Version #{VERSION}'"
  end
end
