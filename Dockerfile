# Use official Ruby image
FROM ruby:3.2

# Install system dependencies
RUN apt-get update -qq && apt-get install -y \
  build-essential \
  libpq-dev \
  nodejs \
  yarn

# Set working directory
WORKDIR /app

# Set environment variable to install all gems (including development & test)
ARG BUNDLE_WITHOUT="development test"
ENV BUNDLE_WITHOUT=${BUNDLE_WITHOUT}

# Copy Gemfile and Gemfile.lock first (for caching)
COPY Gemfile Gemfile.lock ./

# Install Bundler and gems
RUN bundle install --groups development test

# Copy the rest of the app
COPY . .

# Ensure bin/rails and other scripts have execute permissions
RUN chmod +x bin/*

# Precompile assets (for faster startup)
RUN bundle exec rake assets:precompile

# Set environment variables for production
ENV RAILS_ENV=development
ENV RAILS_SERVE_STATIC_FILES=true
ENV RAILS_LOG_TO_STDOUT=true

# Expose port 3000
EXPOSE 3000

# Start the Rails server
CMD ["bundle", "exec", "puma", "-C", "config/puma.rb"]