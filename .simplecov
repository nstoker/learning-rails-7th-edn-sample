SimpleCov.start 'rails' do
  enable_coverage :branch
  add_filter do |source_file|
    source_file.lines.count < 5
  end
end
