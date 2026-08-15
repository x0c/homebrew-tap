class StandupReminder < Formula
  desc "macOS daemon that nudges you to get up and move after too long at your Mac"
  homepage "https://github.com/x0c/standup-reminder"
  url "https://github.com/x0c/standup-reminder/archive/refs/tags/v0.2.2.tar.gz"
  sha256 "ed8d77bb391c2de7cc90d30da67451c6cd6a785227d1735ebd5b55c662b22d1b"
  license "MIT"

  depends_on :macos

  def install
    bin.install "standup-reminder.sh" => "standup-reminder"
  end

  service do
    run [opt_bin/"standup-reminder", "start"]
    keep_alive true
    environment_variables REMINDER_INTERVAL: "3600"
    log_path var/"log/standup-reminder.log"
    error_log_path var/"log/standup-reminder.log"
  end

  test do
    assert_match "standup-reminder", shell_output("#{bin}/standup-reminder --version")
  end
end
