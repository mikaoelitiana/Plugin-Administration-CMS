# Cms
#chargement des modeles, controleurs
%w{ models controllers helpers views}.each do |dir|
path = File.join(File.dirname(__FILE__), 'app', dir)
$LOAD_PATH << path
ActiveSupport::Dependencies.load_paths << path
ActiveSupport::Dependencies.load_once_paths.delete(path)
end
#requisition des routs
require "cms/routing.rb"
