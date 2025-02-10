# Use the official Ruby image
FROM ruby:3.2

# Install dependencies
RUN apt-get update -qq && apt-get install -y \
  build-essential \
  libpq-dev \
  nodejs \
  yarn

# Set the working directory
WORKDIR /app

# Install Bundler
COPY Gemfile Gemfile.lock ./
RUN gem install bundler -v 2.4.22 && bundle install --jobs 4 --retry 3

# Copy the rest of the application code
COPY . .

# Precompile assets (optional, for production)
RUN bundle exec rails assets:precompile

# Set environment variables
ENV RAILS_ENV=production
ENV BUNDLE_WITHOUT="development test"

# Expose the port
EXPOSE 3000

# Start the server
CMD ["bundle", "exec", "rails", "server", "-b", "0.0.0.0"]