snapshot_policy_name = "litecoin-snapshot-policy"
region = "asia-northeast1"
zone = "asia-northeast1-b"
litecoin_ledger = ""  # default ledger -> litecoin-dev-1588491408
litecoin_snapshot = "dev-litecoin-4ea3-asia-northeast1-b-20200504202752-qt3svvfq"
electrumx_ledger = "" # default ledger -> electrumx-dev-1588491394
electrumx_snapshot = "dev-electrumx-9909-asia-northeast1-b-20200504202752-n7hhuoit"
environment = "dev"
project = "sandbox-272805"
name = "experiment"
user = "coolbitx"
storage_locations =  ["asia-northeast1"] 
electrumx_startup_script = "sudo systemctl start electrumx && sudo service google-fluentd start"
litecoin_startup_script = ""
machine_type = "n1-standard-2"
# namespace = ""



