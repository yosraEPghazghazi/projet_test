# app/config/deploy.rb
# ... snip ...
before("deploy:finalize_update") do
  run "if [ -f #{current_release}/web/robots.txt.#{stage} ]; then cp #{current_release}/web/robots.txt.#{stage} #{current_release}/web/robots.txt; fi"
  run "if [ -f #{current_release}/app/config/parameters.yml.#{stage} ]; then cp #{current_release}/app/config/parameters.yml.#{stage} #{current_release}/app/config/parameters.yml; fi"
end
# ... snip ...
