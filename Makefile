packages:
	@pub get

assets:
	@mkdir -p Resources
	@rsync -ru assets/ Resources/

clean:
	@rm -rf Resources build

app: packages assets
	@./packages/titanium/bin/compile

ios-sim: app
	@ti build -p ios

.PHONY: packages assets