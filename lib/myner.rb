class Myner
  attr_reader :logs

  def initialize
    output = `docker logs myner`
    @logs = output.split(//).last(500).join
  end

  def start
    output = `docker start myner`
    @logs = @logs + output.split(//).last(500).join
  end

  def stop
    output = `docker stop myner`
    @logs = @logs + output.split(//).last(500).join
  end

  def setgpu
    oc_output = `/usr/scripts/160tdp.sh`
    fan_output =  `/usr/scripts/all_fans_100.sh`
    @logs = @logs + oc_output
    @logs = @logs + fan_output
  end

  def clear
    @logs = ""
  end

end
