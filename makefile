default: clean build

clean-hard:
	rm -r -f dist node_modules coverage

clean:
	rm -r -f dist coverage

build:
	npx rollup -c rollup.config.ts

dev:
	npx rollup -c rollup.config.ts -w

lint:
	npx tslint  --project tsconfig.json -t codeFrame 'src/**/*.ts'

test:
	npx jest --coverage --passWithNoTests

test-watch:
	npx jest --coverage --watch --passWithNoTests