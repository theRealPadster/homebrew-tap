class SpicetifyHidePodcasts < Formula
  desc "Spicetify extension to hide podcasts in the Spotify client"
  homepage "https://github.com/theRealPadster/spicetify-hide-podcasts"
  url "https://github.com/theRealPadster/spicetify-hide-podcasts/archive/refs/tags/v2.6.0.zip"
  sha256 "bb40c480b93ddd36be6fa70a91a4afae5845832616464b802efa5d47e907da87"
  license "GPL-3.0-only"

  depends_on "spicetify-cli"

  def install
    # Copy hidePodcasts.js to Extensions directory
    extensions_dir = "#{ENV["HOME"]}/.config/spicetify/Extensions"
    mkdir_p extensions_dir
    cp "hidePodcasts.js", extensions_dir
  end

  test do
    # Check that the extension file exists in the Spicetify extensions directory
    assert_predicate "#{ENV['HOME']}/.config/spicetify/Extensions/hidePodcasts.js", :exist?
  end
end
