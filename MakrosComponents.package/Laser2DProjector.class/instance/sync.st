convenience
sync
	tf value ifNotNil: [ :tfGuru | scan ifNotNil: [ :laser | self manage: (self conversions fromROSLaserScanToSNSLaserScan: laser) with: tfGuru ] ]