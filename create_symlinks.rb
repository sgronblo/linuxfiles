#!/usr/bin/ruby
require 'fileutils'

linux_files_path = File.expand_path(Dir.pwd())
home_path = File.expand_path('~')
dot_files = Dir.glob('.*')
files_to_link = dot_files
files_to_link << 'scripts'
bad_file_names = ['.git', '.', '..', '.gitmodules']
bad_file_patterns = [/.swp$/]
files_to_link.each do |filename|
  next if bad_file_names.include?(filename)
  next if bad_file_patterns.any? { |p| filename =~ p }
  real_path = File.join(linux_files_path, filename)
  symlink_path = File.join(home_path, filename)
  unless File.exist?(symlink_path)
    puts "Linking to #{linux_files_path}/#{filename} from #{home_path}"
    FileUtils.ln_s(real_path, home_path)
  end
end
  
#find $LINUX_FILES_PATH -mindepth 1 -maxdepth 1 -name ".*" \! -name ".git" -printf '%f\0' | xargs -0rI{} ln -Ts $LINUX_FILES_PATH/{} ~/{}
