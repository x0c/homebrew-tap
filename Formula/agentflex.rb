class Agentflex < Formula
  desc "Animated, shareable card of your coding-agent week"
  homepage "https://github.com/corral-dev/agentflex"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/corral-dev/agentflex/releases/download/v0.2.0/agentflex-aarch64-apple-darwin"
      sha256 "93152d4514d69fbf9bf8d3e739720715fe73e774c8cc5ac1a81404c8c1367c94"
    end

    on_intel do
      url "https://github.com/corral-dev/agentflex/releases/download/v0.2.0/agentflex-x86_64-apple-darwin"
      sha256 "9dcb04fabeb90e06a6157572f885ba0004d33ef5ed102242f51aabbee45c398d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/corral-dev/agentflex/releases/download/v0.2.0/agentflex-aarch64-unknown-linux-musl"
      sha256 "85a888b6f380b77687e4103bd25f766cdf0907f838f3f8a78b19f1a8973f9c18"
    end

    on_intel do
      url "https://github.com/corral-dev/agentflex/releases/download/v0.2.0/agentflex-x86_64-unknown-linux-musl"
      sha256 "6d7d79aeda12caccaa9bbcf1b88b051338b330fb40de85692fb65abcff3622a0"
    end
  end

  def install
    bin.install Dir["agentflex-*"].first => "agentflex"
  end

  test do
    assert_match "agentflex", shell_output("#{bin}/agentflex --version")
  end
end
