cask 'terraform' do
  version '0.6.9'
  sha256 '9cf892c073a9fce0e9f136162f82c5b2d373c32cc2c5bd5c5eb16631262fad89'

  # hashicorp.com is the official download host per the vendor homepage
  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name 'Terraform'
  homepage 'https://www.terraform.io/'
  license :mpl

  binary 'terraform'
  binary 'terraform-provider-atlas'
  binary 'terraform-provider-aws'
  binary 'terraform-provider-azure'
  binary 'terraform-provider-cloudflare'
  binary 'terraform-provider-cloudstack'
  binary 'terraform-provider-consul'
  binary 'terraform-provider-digitalocean'
  binary 'terraform-provider-dme'
  binary 'terraform-provider-dnsimple'
  binary 'terraform-provider-docker'
  binary 'terraform-provider-dyn'
  binary 'terraform-provider-google'
  binary 'terraform-provider-heroku'
  binary 'terraform-provider-mailgun'
  binary 'terraform-provider-null'
  binary 'terraform-provider-openstack'
  binary 'terraform-provider-packet'
  binary 'terraform-provider-rundeck'
  binary 'terraform-provider-statuscake'
  binary 'terraform-provider-template'
  binary 'terraform-provider-terraform'
  binary 'terraform-provider-tls'
  binary 'terraform-provider-vsphere'
  binary 'terraform-provisioner-chef'
  binary 'terraform-provisioner-file'
  binary 'terraform-provisioner-local-exec'
  binary 'terraform-provisioner-remote-exec'
end
