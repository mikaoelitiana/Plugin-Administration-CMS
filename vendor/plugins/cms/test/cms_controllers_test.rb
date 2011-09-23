#fichiers requis
require File.dirname(__FILE__) + '/test_helper'
require 'woodpeckers_controller'
require 'action_controller/test_process'

#ajouts de levée d'exception des classes
class ContactsController; def rescue_action(e) raise e end; end
class ContainerContentsController def rescue_action(e) raise e end; end
class ContainersController def rescue_action(e) raise e end; end

class CmsControllersTest < Test::Unit::TestCase

  def contacts
    #instanciation du controleur
    @controller = ContactsController.new
    @request = ActionController::TestRequest.new
    @response = ActionController::TestResponse.new
    ActionController::Routing::Routes.draw do |map|
    map.resources :contact
    #lancement du test
    get :index
    assert_response :success
  end

  def container_contents
    #instanciation du controleur
    @controller = ContainerContentsController.new
    @request = ActionController::TestRequest.new
    @response = ActionController::TestResponse.new
    ActionController::Routing::Routes.draw do |map|
    map.resources :container_contents
    #lancement du test
    get :index
    assert_response :success
  end

  def containers
    #instanciation du controleur
    @controller = ContainersController.new
    @request = ActionController::TestRequest.new
    @response = ActionController::TestResponse.new
    ActionController::Routing::Routes.draw do |map|
    map.resources :containers
    #lancement du test
    get :index
    assert_response :success
  end

end