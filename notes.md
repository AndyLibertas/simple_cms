# Route Types

    ## Simple match route
        ### example: get "demo/index"
        ### long-method: match "demo/index", :to => "demo#index", "via => :get
    ## Default route
        ### :controller/:action/:id
        ### example: Get /stduents/edit/52 indicates StudentsController, edit action, id = 52
        ### The default route uses a pattern to describe that, so it would be: get ':controller(/:action(/:id))'
        ### The slightly longer way using match would be: match ':controller(/:action(/:id))', :via => :get
    ## Root route
        ### root "demo#inex"
        ### match "/", :to => "demo#index", :via => :get
    ## Resourceful routes

# Request-Response Loop

    ## Route
    ## Controller action
    ## View template

# Render Template Syntax

    ## Renders the template matching the current controller and action by default. I.e., if you create a route 'demo/index' and define an index action,
        Rails will first look in the demo views folder, and find and serve the index.html.erb views file.
    ## You can also provie the render command inside an action: render(:template => 'demo/hello')
    ## Another version: render('demo/hello'). If the template is in the directory for the current controller, you can just use render('hello')

# HTTP Redirect

    ## HTTP/1.1 302 Found
    ## Location: http://localhost:3000/demo/hello

# Rails Redirect

    ## redirect_to(:controller => 'demo', :action => 'index')
    ## redirect_to(controller: 'demo', action: 'index')
    ## If redirecting to action within same controller: redirect_to(:action => 'index')
    ## redirect_to('https://nytimes.com)

# What is ERB

    ## "Embedded Ruby"
    ## Templating system to embed Ruby

# Template File Naming

    ## hello.html.erb
    ## Template name: hello
    ## Process with: ERB
    ## Output format: HTML

# Embedding Ruby in an ERB Template

    ## <% code %> if you just need to execute Ruby code
    ## <%= code %> if you need to execute Ruby code and have results output to the template

# MVC Web Architecture

    ## The controller takes care of the setup ahead-of-time so that the view can focus solely on the presentation

# Variable vs. Instance Variables

    ## variable
    ## @variable - has scope.

# HTML Links

    ## basic HTML link: <a href="/demo/index">Click Me</a>

# Rails links

    ## helper method: <%= link_to(text, target) %>

# Link Targets

    ## "/demo/index"
    ## {:controller => 'demo', :action => 'index'}
    ## {:action => 'index'} (only need to specify controller if it's different than current controller)

# Relative URL With Parameters

    ## /demo/hello/1?page=3&name=kevin

# Parameters Hash in Rails

    ## { :controller => 'demo',
         :action => 'hello',
         :id => 1,
         :page => 3,
         :name => 'kevin'} => /demo/hello/1?page=3&name=kevin

# Rails Params Method

    ## params
    ## Contains all GET and POST values

# Accessing Params Values

    ## params[:id]
    ## params['id']

# Configure Project for a Database

    ## config/database.yml
    ## rails db:schema:dump

# Managing Database Tables

    ## Can use legacy database tables
    ## Can manually manage database tables
    ## Can use Ruby on Rails migrations

# What is a Migration?

    ## Set of database instructions
    ## Written in Ruby
    ## "Migrate" the database from one state to another
    ## Instructions for moving "up" to a new state
    ## Instructions for moving "down" to the preivous state

# Why Use Migrations?

    ## Keeps database schema with application code
    ## Executable and repeatable
    ## Allows sharing schema changes
    ## Allows writing Ruby instead of SQL
    ## Able to access project code

# Generate a Migration

    ## rails generate migration MigrationName
    ## rails generate model ModelName

# Migration Methods

    ## create_table
    ## drop_table
    ## rename_table
    ## add_column
    ## remove_column
    ## rename_column

# Run Migrations

    ## rails db:migrate
    ## rails: db:migrate:status
    ## rails db:migrate VERSION=0
    ## rails db:migrate VERSION=20200131235959

# What is ActiveRecord?

    ## Active record: design pattern for relational databases
    ## ActiveRecord: Rails implementation of active record design pattern
    ## Retrieve and manipulate data as objects, not as static rows.

# ActiveRecord Objects are "Intelligent"

    ## Understand the structure of the table
    ## Contain data from table rows
    ## Know how to create, read, update, and delete rows
    ## Can be manipulated as objects, then saved easily

# ActiveRecord Example

    ## user = User.new
    ## user.first_name = "Kevin"
    ## user.save -> active record will write an SQL insert statement
    ## user.last_name = "Skoglund"
    ## user.save -> active reocord will write an SQL update statement
    ## user.destroy -> SQL DELETE statement

# What Is ActiveRelation?

    ## Also known as "Arel"
    ## Object-oriented interpretation of relational algebra
    ## Simplifies the generation of complex database queries
    ## Small queries are chainable (like most Ruby ojects)
    ## Complex joins and aggregations use efficient SQL
    ## Queries do not execute until needed

# ActiveRelation Example

    ## users = User.where(first_name: "Kevin")
    ## users = users.order("last_name ASC").limit(5)
    ## users.each {|user| ... }
        ### SELECT users.* FROM users
        ### WHERE users.first_name = 'Kevin'
        ### ORDER BY users.last_name ASC
        ### LIMIT 5
