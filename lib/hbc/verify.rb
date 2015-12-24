require 'digest'

module Hbc::Verify
  def self.all(path, cask)
    checksum(path, cask)
    gpg_signature(path, cask)
  end

  def self.checksum(path, cask)
    begin
      expected = cask.sha256
    rescue RuntimeError => e
    end
    if expected == :no_check
      ohai 'Checksum not available'
      return
    end
    computed = Digest::SHA2.file(path).hexdigest
    if expected.nil? or expected.empty?
      raise Hbc::CaskSha256MissingError.new("sha256 required: sha256 '#{computed}'")
    end
    if expected == computed
      odebug "SHA256 checksums match"
    else
      ohai 'Note: running "brew update" may fix sha256 checksum errors'
      raise Hbc::CaskSha256MismatchError.new(path, expected, computed)
    end
  end

  def self.gpg_signature(path, cask)
    return unless cask.gpg
    gpg = Hbc::GpgCheck.new(cask)

    if gpg.available
      gpg.verify(path)
      raise Hbc::CaskGpgVerificationFailedError.new(cask.token, path, gpg.signature) unless gpg.successful
    end
  end
end
