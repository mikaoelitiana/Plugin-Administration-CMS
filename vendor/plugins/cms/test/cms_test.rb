require 'test_helper'

class CmsTest < ActiveSupport::TestCase
  #chargement du schema de DB
  load_schema

  #test des models
  def test_cms
    #test User
    assert_kind_of User, User.new
    #test Contact
    assert_kind_of Contact, Contact.new
    #test container
    assert_kind_of Containter, Container.new
    #test container_content
    assert_kind_of ContainerContent, ContainerContent.new
    #test content
    assert_kind_of Content, Content.new
    #test content_wrapper
    assert_kind_of ContentWrapper, ContentWrapper.new
    #test content wrapper content
    assert_kind_of ContentWrapperContent, ContentWrapperContent.new
    #test free content
    assert_kind_of FreeContent, FreeContent.new
    #test Message
    assert_kind_of Message, Message.new
    #test Product
    assert_kind_of Product, Product.new
    #test ProductFammily
    assert_kind_of ProductFamily, ProductFamily.new
    #test ProductThumbnail
    assert_kind_of ProductThumbnail, ProductThumbnail.new
  end
end
