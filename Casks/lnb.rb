cask "lnb" do
  desc "Link Binary - A cross-platform utility that makes command-line tools accessible from anywhere"
  homepage "https://github.com/muthuishere/lnb"
  version "{{.Version}}"

  livecheck do
    url :url
    strategy :github_latest
  end

  on_macos do
    on_intel do
      url "https://github.com/muthuishere/lnb/releases/download/v{{.Version}}/lnb_{{.Version}}_Darwin_x86_64.tar.gz"
      sha256 "{{.DarwinAmd64SHA256}}"
    end
    on_arm do
      url "https://github.com/muthuishere/lnb/releases/download/v{{.Version}}/lnb_{{.Version}}_Darwin_arm64.tar.gz"
      sha256 "{{.DarwinArm64SHA256}}"
    end
  end

  binary "lnb"

  postflight do
    if system_command("/usr/bin/xattr", args: ["-h"]).exit_status == 0
      system_command "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "#{staged_path}/lnb"]
    end
  end

  zap trash: [
    "~/.config/lnb",
    "~/.lnb",
  ]
end
