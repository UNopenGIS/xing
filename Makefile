download:
	ruby download.rb | sh
extract:
	ruby extract.rb | sh
upload:
	aws s3 sync dst/ s3://smartmaps/xing/ --endpoint-url=https://data.source.coop 
