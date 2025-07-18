# This file was generated by GoReleaser. DO NOT EDIT.
cask "lnb" do
  desc "A cross-platform utility that makes command-line tools accessible from anywhere by creating symbolic links or wrapper scripts in your system's PATH"
  homepage "https://github.com/muthuishere/lnb"
  version "0.3.0"

  livecheck do
    skip "Auto-generated on release."
  end

  binary "lnb"

  on_macos do
    on_intel do
      url "https://github.com/muthuishere/lnb/releases/download/v0.3.0/lnb_0.3.0_Darwin_x86_64.tar.gz"
      sha256 "42f7e42b998560b64874d73040a5594f5ba712be392c52e567ce31e876bf417c"
    end
    on_arm do
      url "https://github.com/muthuishere/lnb/releases/download/v0.3.0/lnb_0.3.0_Darwin_arm64.tar.gz"
      sha256 "af82cc42215c07b44a5dbbc6142748569e913457f79eaf4f4ea082ceb0e3845b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/muthuishere/lnb/releases/download/v0.3.0/lnb_0.3.0_Linux_x86_64.tar.gz"
      sha256 "78a7619e64042184077cbbf7c949dba8a30175b70fae9f76c047b15f5e8e9a3a"
    end
    on_arm do
      url "https://github.com/muthuishere/lnb/releases/download/v0.3.0/lnb_0.3.0_Linux_arm64.tar.gz"
      sha256 "6e8e3da55b5bc2151cb1e35051c9aa60b3c1b526d10a189c8a8dae3787c91065"
    end
  end

  postflight do
    if system_command("/usr/bin/xattr", args: ["-h"]).exit_status == 0
      system_command "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "#{staged_path}/lnb"]
    end
  end

  # No zap stanza required
end
