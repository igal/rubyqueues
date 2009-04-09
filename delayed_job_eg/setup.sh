#!/bin/sh

# Create a Rails application and go into it
rails rails_dj
cd rails_dj

# Add plugin
./script/plugin install git://github.com/tobi/delayed_job.git

# Create delayed_job table
mkdir -p db/migrate/
cp ../20090406220026_add_delayed_jobs.rb db/migrate/
rake db:migrate

# Add a job classes
cp ../*_job.rb app/models/
