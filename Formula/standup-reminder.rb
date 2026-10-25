class StandupReminder < Formula
  desc "macOS daemon that nudges you to get up and move after too long at your Mac"
  homepage "https://github.com/x0c/standup-reminder"
  url "https://github.com/x0c/standup-reminder/archive/refs/tags/v0.3.1.tar.gz"
  sha256 "31167ce109db24ff682582beeb7b4a972320af1706265531181a47816bcb86fe"
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
