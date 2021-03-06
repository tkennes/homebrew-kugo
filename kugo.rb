# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Kugo < Formula
  desc "Golang based CLI for Jenkins API."
  homepage "https://github.com/tkennes/kugo"
  version "1.0.24"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "http://github.com/tkennes/kugo/releases/download/v1.0.24/kugo_1.0.24_Darwin_x86_64.tar.gz"
      sha256 "2b4d6d4aa08d2fb61b835629aac2f0b4343f98aef635f3dcc64bf4358c5ee40b"
    end
    if Hardware::CPU.arm?
      url "http://github.com/tkennes/kugo/releases/download/v1.0.24/kugo_1.0.24_Darwin_arm64.tar.gz"
      sha256 "22dd0f705c16cde8eb10fdf9c01336c1341c092198a3f813d77bb07f1a497c59"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "http://github.com/tkennes/kugo/releases/download/v1.0.24/kugo_1.0.24_Linux_x86_64.tar.gz"
      sha256 "2649263a4139a589602532bed59caf25fdc02f93bf8bd5a891ed408075da818a"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "http://github.com/tkennes/kugo/releases/download/v1.0.24/kugo_1.0.24_Linux_arm64.tar.gz"
      sha256 "5d3c8c6d31acca3fe6f3182869fea12e556d6a7f8c9fe44de9bca0c4553c9775"
    end
  end

  depends_on "go" => :build

  def install
    bin.install "kugo"
  end

  test do
    assert shell_output("#{bin}/kugo version")
  end
end
