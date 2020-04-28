module networking {
    source = "../../modules/networking"
    ports =  var.ports
    terms = {
        network_protocols = var.terms["network_protocols"],
        source_ranges = var.terms["source_ranges"],
        ip_cidr_range = var.terms["ip_cidr_range"]
    }
    range_name = var.range_name
    region = var.region
}
