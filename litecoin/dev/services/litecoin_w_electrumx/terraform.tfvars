snapshot_policy_name = "litecoin-snapshot-policy"
region = "asia-northeast1"
zone = "asia-northeast1-b"
litecoin_ledger = ""
litecoin_snapshot = "snapshot-litecoin-dev-2"
electrumx_ledger = ""
electrumx_snapshot = "snapshot-electrumx-dev"
environment = "dev"
project = "sandbox-272805"
name = "experiment"
user = "coolbitx"
storage_locations =  ["asia-northeast1"] 
electrumx_startup_script = "sudo systemctl start electrumx && sudo service google-fluentd start"
litecoin_startup_script = ""
machine_type = "n1-standard-2"
# namespace = ""



