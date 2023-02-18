class SpicetifyHidePodcasts < Formula
  desc "A Spicetify extension to hide podcasts in Spotify"
  homepage "https://github.com/theRealPadster/spicetify-hide-podcasts"
  url "https://github.com/theRealPadster/spicetify-hide-podcasts/archive/refs/tags/v2.6.0.zip"
  sha256 "bb40c480b93ddd36be6fa70a91a4afae5845832616464b802efa5d47e907da87"

  def install
    # Extract the hidePodcasts.js file and copy it to the Spicetify extensions directory
    system "unzip", "-j", "#{name}-#{version}.zip", "spicetify-hide-podcasts-#{version}/hidePodcasts.js", "-d", "#{ENV['HOME']}/.config/spicetify/Extensions"
  end

  test do
    # Check that the extension file exists in the Spicetify extensions directory
    assert_predicate "#{ENV['HOME']}/.config/spicetify/Extensions/hidePodcasts.js", :exist?
  end
end
