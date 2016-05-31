class RestfulControllerApp < Sinatra::Base

    get "/" do
       erb "Sanity Check"  
    end

    # INDEX
    # GETs all the books
    get "/books" do
        @books = ["First book", "Second book"]
        erb :books
    end

    # NEW -- we need a route to serve the form to create a new book
    get "/books/new" do
        erb :'new'
    end

    # SHOW
    # GET /books/3 gets one book with id = 3 to show the details
    get "/books/:id" do    # would really be "/books/:id"
        erb "Shows Book " + params[:id]
    end


    # CREATE
    # POST a new book to all the books
    post "/books" do
        # add code here
        erb "When we submit a new book from the new book form, we post to /books"
    end

    # EDIT
    get "/books/:id/edit" do
        @params = params[:id]
        erb :'edit'
    end

    # UPDATE
    put "/books/:id" do 
        erb "Now I have just edited book 3"
    end

    # DESTROY
    delete "/books/:id" do
        erb "Book "  + params[:id] +  " is now dead"   # this should render /books
    end


end