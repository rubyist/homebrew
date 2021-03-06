require 'formula'

class Htop <Formula
  head 'git://github.com/AndyA/htop-osx.git', :branch => 'osx'
  homepage 'http://htop.sourceforge.net/'

  def install
    system "./autogen.sh"
    system "./configure", "--prefix=#{prefix}", "--disable-debug", "--disable-dependency-tracking"
    system "make", "install", "DEFAULT_INCLUDES='-iquote .'"
  end
end
