FROM ruby:3.3.2-alpine AS build
WORKDIR /myapp

# Set environment variables
ENV RAILS_ENV=production
ENV BUNDLE_WITHOUT ""

# Install necessary packages to build gems and assets
RUN apk add --no-cache \
    build-base \
    git \
    tzdata \
    gcompat \
    postgresql-client \
    libpq-dev

# Install only necessary gems and remove extensions
COPY Gemfile Gemfile.lock ./

RUN bundle config unset without && bundle install


# Copy application code
COPY . .


# Precompile assets and then remove unnecessary files
RUN SECRET_KEY_BASE=dummy bundle exec rails assets:precompile && \
    rm -rf node_modules tmp/cache vendor/assets test spec


FROM ruby:3.3.2-alpine
WORKDIR /myapp

# Install runtime dependencies
RUN apk add --no-cache \
    sqlite-libs \
    tzdata \
    gcompat \
    postgresql-client \
    libpq-dev

# Copy built artifacts from the build stage
COPY --from=build /myapp /myapp/
COPY --from=build /usr/local/bundle /usr/local/bundle

# Set environment variables
ENV RAILS_ENV=production

# Run Docker entrypoint script
ENTRYPOINT ["/rails/bin/docker-entrypoint"]

# Expose port 3000
EXPOSE 3000

# Start the Rails server
CMD ["./bin/rails", "server", "-b", "0.0.0.0"]