File.foreach('urls.txt') {|l|
  url = l.strip
  next if /^#/.match url
  fn = url.split('/')[-1]
  next unless fn
  print <<-EOS
curl -o src/#{fn} -C - --retry 4 #{url}
  EOS
}

