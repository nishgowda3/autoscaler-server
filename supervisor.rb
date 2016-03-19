job1 = fork do
  exec "ruby serverloop.rb"
end

Process.detach(job1)

p job1