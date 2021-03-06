class LibdbusmenuQt < Formula
  desc "C++ dbusmenu library for Qt"
  homepage "https://launchpad.net/libdbusmenu-qt"
  url "https://launchpad.net/libdbusmenu-qt/trunk/0.9.2/+download/libdbusmenu-qt-0.9.2.tar.bz2"
  sha256 "ae6c1cb6da3c683aefed39df3e859537a31d80caa04f3023315ff09e5e8919ec"

  bottle do
    sha256 "6cd380505d3796234e292e4078571ae81f9d138818b88142de1be3d7474193d5" => :el_capitan
    sha256 "5c599ed4647b536cf7202f238c9a44cbc38b8962d29c61f46c5e83d2c6cce946" => :yosemite
    sha256 "d4ba97567c18dcfafb48fe4f0cf1603276974e0136cf92373cccae709978e7bd" => :mavericks
  end

  depends_on "cmake" => :build
  depends_on "doxygen" => :build
  depends_on "qt" => "with-d-bus"
  depends_on "qjson"

  def install
    mkdir "macbuild" do
      system "cmake", "..", *std_cmake_args
      system "make", "install"
    end
  end
end
