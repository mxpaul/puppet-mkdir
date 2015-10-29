Puppet::Type.type(:mkdir).provide :mkdir do

  commands :mkdir => 'mkdir' #,

  def exists?
    File.directory?(@resource[:name])
  end

  def create
    mkdir('-p', @resource[:name])
  end

  def destroy
    # no op
  end

end
