class StandupReminder < Formula
  desc "macOS daemon that nudges you to get up and move after too long at your Mac"
  homepage "https://github.com/x0c/standup-reminder"
  url "https://github.com/x0c/standup-reminder/archive/refs/tags/v0.2.1.tar.gz"
  sha256 "c525d12b570b8e32c3b2e816f6ca7de6120c7b79538b65dae0d21da802c21f34"
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
