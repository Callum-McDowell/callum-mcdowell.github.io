FROM jekyll/jekyll

COPY Gemfile Gemfile.lock* ./
RUN bundle install

# How to use:
# docker build -t gh-pages-jekyll .
# docker run --rm -it -v $(pwd):/srv/jekyll -p 4000:4000 gh-pages-jekyll bash -c "bundle exec jekyll serve --host 0.0.0.0"
#
# You can then access the site at 'http://localhost:4000'!
