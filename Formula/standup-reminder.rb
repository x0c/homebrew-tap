class StandupReminder < Formula
  desc "macOS daemon that nudges you to get up and move after too long at your Mac"
  homepage "https://github.com/x0c/standup-reminder"
  url "https://github.com/x0c/standup-reminder/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "f715dc34fb7107f2afab450927d67b3a44da3826ca0f147afbbfb675f0be9d00"
  license "MIT"

  depends_on :macos

  def install
    bin.install "standup-reminder.sh" => "standup-reminder"
  end

  service do
    run [opt_bin/"standup-reminder", "start"]
    keep_alive true
    log_path var/"log/standup-reminder.log"
    error_log_path var/"log/standup-reminder.log"
  end

  test do
    assert_match "standup-reminder", shell_output("#{bin}/standup-reminder --version")
  end
end
