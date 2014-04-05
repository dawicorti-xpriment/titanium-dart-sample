bridges := $(wildcard packages/*/bridge/*.js)

packages:
	@pub get

resources:
	@mkdir -p Resources

bridges: resources
	@rsync ${bridges} Resources/

assets: resources
	@rsync -ru assets/ Resources/

clean:
	@rm -rf Resources build

out:
	@mkdir -p build/out

app: packages bridges assets out
	@dart2js main.dart -o build/out/main.js
	@cat packages/browser/interop.js > Resources/app.js
	@cat build/out/main.js >> Resources/app.js

ios-sim: app
	@ti build -p ios

.PHONY: packages assets