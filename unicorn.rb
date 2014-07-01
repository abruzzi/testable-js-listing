# set path to app that will be used to configure unicorn,
@dir = "/Users/jtqiu/develop/lwwd/listing/"

worker_processes 2
working_directory @dir

timeout 30

listen "#{@dir}tmp/sockets/unicorn.sock", :backlog => 64

# Set process id path
pid "#{@dir}tmp/pids/unicorn.pid"

# Set log file paths
stderr_path "#{@dir}log/unicorn.stderr.log"
stdout_path "#{@dir}log/unicorn.stdout.log"