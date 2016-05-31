class RestfulControllerApp < Sinatra::Base

    # INDEX - Like index.html, a list of books
    # GET "/books" - Gets all the books
    get "/books" do
        # some code will go here    
    end

    # NEW - a page that gives us a form to make a new book
    # GET "/books/new" - Give us a form to fill out the details of a new book
    get "/books/new" do
        # some code will go here    
    end

    # CREATE - where the NEW form POSTs. We want to add our new book to all the books
    # POST "/books" - Create a new book and add it to our list
    post "/books" do
        # some code will go here 
    end

    # SHOW - show the details about just one book
    # GET "/books/3" - Just get the information associated with book 3
    get "/books/:id" do
        # params[:id]   # => would return 3 in our example
        # some more code will go here 
    end

    # EDIT - like NEW, this just gives us a form that will PUT/PATCH our changes
    # GET "/books/3" - Just get the information associated with book 3
    get "/books/:id/edit" do
        # some code will go here 
    end

    # UPDATE - like CREATE, this does the actual updating
    # PUT "/books/3" - Updates a specific book (book id = 3)
    put "/books/:id" do
        # some code will go here 
    end

    # UPDATE - believe it or not, PUT & PATCH are often the same code, so many developers skip PATCH and just use PUT
    # PATCH "/books/3" - Partially updates a specific book (book id = 3)
    patch "/books/:id" do
        # some code will go here 
    end

    # DESTROY - totally nukes a book from the database
    # DELETE "/books/3" - Deletes a specific book (book id = 3)
    delete "/books/:id" do
        # some code will go here 
    end
end