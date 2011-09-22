ActiveRecord::Schema.define(:version => 0) do
 #user
  create_table(:users) do |t|
    t.string :first_name
    t.string :last_name
    t.string :email
    t.string :role
    t.database_authenticatable :null => false
    t.recoverable
    t.rememberable
    t.trackable
    t.timestamps
  end
  #container_contents
  create_table :container_contents do |t|
    t.integer :content_id
    t.string :content_type
    t.string :container_id
    t.string :content_view
    t.integer :position
    t.timestamps
  end
  #container
  create_table :containers do |t|
    t.string :name
    t.string :title
    t.string :subtitle
    t.string :keywords
    t.string :description
    t.string :browser_title
    t.timestamps
  end
  #content_wrapper_contents
    create_table :content_wrapper_contents do |t|
    t.string :name
    t.integer :content_wrapper_id
    t.string :content_id
    t.string :content_type
    t.string :tags
    t.integer :position
    t.timestamps
  end
  #content_wrapper
  create_table :content_wrappers do |t|
    t.string :name
    t.string :tags
    t.timestamps
  end
  #free content
  create_table :free_contents do |t|
    t.string :name
    t.text :content
    t.timestamps
  end

end
