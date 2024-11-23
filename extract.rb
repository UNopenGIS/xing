require 'find'

Find.find('src') {|l|
  path = l.strip
  next unless /zip$/.match path
  print <<-EOS
unzip -n -d dst #{path}
  EOS
}
