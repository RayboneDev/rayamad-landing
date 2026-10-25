# Keep Bundler configuration and user files inside this project.
export BUNDLE_APP_CONFIG := justfile_directory() / ".bundle"
export BUNDLE_USER_HOME := justfile_directory() / ".bundle/user"

default:
	@just --list

install:
	bundle install

serve:
	bundle exec jekyll serve

build:
	bundle exec jekyll build

clean:
	bundle exec jekyll clean
