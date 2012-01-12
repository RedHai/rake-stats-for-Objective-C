require './code_statistics'

STATS_DIRECTORIES = [
  ["Controllers", "/home/workspace/apphub/app/controllers"],
  ["Controllers test", "/home/workspace/apphub/spec/controllers"]
].select { |name, dir| File.directory?(dir) }

TEST_TYPES = ["Controllers test"]

CodeStatistics.new(*STATS_DIRECTORIES, TEST_TYPES).to_s
