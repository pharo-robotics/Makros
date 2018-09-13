convenience
sync
	tf value ifNotNil: [ :tfGuru | scan value ifNotNil: [ :laser | self manage: (self conversions fromROSLaserScanToSNSLaserScan: laser) with: tfGuru ] ]