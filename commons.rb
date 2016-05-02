require_relative 'config.rb'

# Static variables
server = @user + "@" + @host
port = @port || 22
@date = `date +%Y%m%d-%H%M%S`.chomp
@sshCommand = nil
if (@usekey) then
  @sshCommand = ["ssh", "-i", @keylocation, "-p", port, server]
else
  @sshCommand = ["ssh", "-p", port, server]
end
