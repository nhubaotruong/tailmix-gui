class TailmixGui < Formula
  desc "GTK4/libadwaita control panel for tailmix"
  homepage "https://github.com/nhubaotruong/tailmix-gui"
  url "https://github.com/nhubaotruong/tailmix-gui/releases/download/v1.0.0/tailmix-gui-1.0.0-x86_64-linux.tar.gz"
  sha256 "b1d69288e94f37008fa805d944a0643a4ef5326046dd706e01acd2bd82f5a794"
  version "1.0.0"
  license "BSD-3-Clause"

  on_arm do
    url "https://github.com/nhubaotruong/tailmix-gui/releases/download/v1.0.0/tailmix-gui-1.0.0-aarch64-linux.tar.gz"
    sha256 "30daf4f07874cbeb347eb0aad4fa4c59f8b9eeb080b03c92dd7d51739461765f"
  end

  depends_on "gtk4"
  depends_on "libadwaita"

  def install
    bin.install "tailmix-gui"
    (share/"applications").install "share/applications/io.github.nhubaotruong.TailmixGui.desktop"
    (share/"metainfo").install "share/metainfo/io.github.nhubaotruong.TailmixGui.metainfo.xml"
    (share/"icons/hicolor/scalable/apps").install "share/icons/hicolor/scalable/apps/io.github.nhubaotruong.TailmixGui.svg"
  end

  test do
    assert_predicate bin/"tailmix-gui", :executable?
  end
end
