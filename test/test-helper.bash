load test_helper/mocks/stub

stub_cell_mgmt() {
  _ARGS=(' signal' ' signal')
  stub cell_mgmt \
      "${_ARGS[0]} : echo 'none Level 3 (Fair)'" \
      "${_ARGS[1]} : echo '4G Level 3 (Fair)'"

  echo "Stubbing cell_mgmt"
}

unstub_cell_mgmt() {
  unstub cell_mgmt
}
