load test-helper

setup() {
  stub_cell_mgmt
}

# teardown() {
#   unstub_cell_mgmt
# }

# @test "can run our script" {
#     ./src/project.sh
# }

@test "cell_mgmt get_signal_level tests" {
  source ./src/project.sh

  result="$(get_signal_level)"
  [ "$result" == 'nosignal' ]

  result="$(get_signal_level)"
  [ "$result" == 'fair' ]

}
