zip:
	cd assets/dev && zip 1panel.json.zip 1panel.json

new_version:
	app_timestamp=$$(date +%s); \
		echo "update store version: $$app_timestamp to assets/dev/1panel.json.version.txt"; \
		printf "$$app_timestamp" > assets/dev/1panel.json.version.txt
