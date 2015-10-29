Puppet::Type.newtype(:mkdir) do

  ensurable

  newparam(:name, :namevar => true) do
    desc "Directory name"
  end

end
