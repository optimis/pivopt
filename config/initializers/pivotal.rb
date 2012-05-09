PIVO_CONFIG = YAML.load_file("#{Rails.root}/config/pivo_cfg.yml")

PivotalTracker::Client.use_ssl = true
PivotalTracker::Client.token = PIVO_CONFIG['token']

Project.concerned_ids = PIVO_CONFIG['projects'] || []
