class Song
  attr_accessor :name, :artist

  def initialize(name, artist=nil)
    @name = name
    @artist = artist
  end

  def artist_name
    self.artist ? self.artist.name : nil
  end
end 

 let!(:adele) { Artist.new("Adele") } 


    describe "#new" do 	  describe "#new" do 
      it "is initialized with a name" do 	    it "is initialized with a name" do 
        expect{Artist.new("Beyonce")}.to_not raise_error	      expect{Artist.new("Beyonce")}.to_not raise_error
      end	    
    end
    
    it "is initialized with an empty collection of songs" do 
        expect(adele.instance_variable_get(:@songs)).to match([])	      expect(adele.instance_variable_get(:@songs)).to match([])
    end
  end
  describe "#name" do
      it "has an attr_accessor for name" do 	    it "has an attr_accessor for name" do 
        expect(adele.name).to eq("Adele")	      expect(adele.name).to eq("Adele")
    end	    end
  end


    describe "#songs" do 	  describe "#songs" do 
      it "has many songs" do	    it "has many songs" do
        expect(adele.songs).to be_a(Array)	      expect(adele.songs).to be_a(Array)
      end	
    end	    end
  end


    describe "#add_song" do 	  describe "#add_song" do 
      it "takes in an argument of a song and adds that song to the artist's collection and tells the song that it belongs to that artist" do 	    it "takes in an argument of a song and adds that song to the artist's collection and tells the song that it belongs to that artist" do 
        hello = Song.new("Hello")	      hello = Song.new("Hello")
        adele.add_song(hello)	      adele.add_song(hello)
        expect(adele.songs).to include(hello)	      expect(adele.songs).to include(hello)
        expect(hello.artist).to eq(adele)	      expect(hello.artist).to eq(adele)
      end	
    end	    end
  end


    describe "#add_song_by_name" do 	  describe "#add_song_by_name" do 
      it "takes in an argument of a song name, creates a new song with it and associates the song and artist" do 	    it "takes in an argument of a song name, creates a new song with it and associates the song and artist" do 
        adele.add_song_by_name("Rolling in the Deep")	      adele.add_song_by_name("Rolling in the Deep")
        expect(adele.songs.last.name).to eq("Rolling in the Deep")	      expect(adele.songs.last.name).to eq("Rolling in the Deep")
        expect(adele.songs.last.artist).to eq(adele)	      expect(adele.songs.last.artist).to eq(adele)
      end	
    end	    end
  end


    describe ".song_count" do 	  describe ".song_count" do 
      it "is a class method that returns the total number of songs associated to all existing artists" do 	    it "is a class method that returns the total number of songs associated to all existing artists" do 
        expect(Artist.song_count).to eq(2)	      expect(Artist.song_count).to eq(2)
      end	    end


      it "uses the class variable, @@song_count" do 	    it "uses the class variable, @@song_count" do 
        expect(Artist.class_variable_get(:@@song_count)).to be_a(Integer)	      expect(Artist.class_variable_get(:@@song_count)).to be_a(Integer)
      end	
    end	    end
  end	  end
end	end

let!(:betty) { Author.new("Betty") } 


    describe "#new" do 	  describe "#new" do 
      it "is initialized with a name" do 	    it "is initialized with a name" do 
        expect{Author.new("Betty")}.to_not raise_error	      expect{Author.new("Betty")}.to_not raise_error
      end	    end


      it "is initialized with an empty collection of posts" do 	    it "is initialized with an empty collection of posts" do 
        expect(betty.instance_variable_get(:@posts)).to match([])	      expect(betty.instance_variable_get(:@posts)).to match([])
      end	
    end	    end
  end


    describe "#name" do	  describe "#name" do
      it "has an attr_accessor for name" do 	    it "has an attr_accessor for name" do 
        expect(betty.name).to eq("Betty")	      expect(betty.name).to eq("Betty")
    end	    end
  end


    describe "#posts" do 	  describe "#posts" do 
      it "has many posts" do	    it "has many posts" do
        expect(betty.posts).to be_a(Array)	      expect(betty.posts).to be_a(Array)
      end	
    end	    end
  end


    describe "#add_post" do 	  describe "#add_post" do 
      it "takes in an argument of a post and adds that post to the author's collection and tells the post that it belongs to that author" do 	    it "takes in an argument of a post and adds that post to the author's collection and tells the post that it belongs to that author" do 
        hello_world = Post.new("Hello World")	      hello_world = Post.new("Hello World")
        betty.add_post(hello_world)	      betty.add_post(hello_world)
        expect(betty.posts).to include(hello_world)	      expect(betty.posts).to include(hello_world)
        expect(hello_world.author).to eq(betty)	      expect(hello_world.author).to eq(betty)
      end	
    end	    end
  end


    describe "#add_post_by_title" do 	  describe "#add_post_by_title" do 
      it "takes in an argument of a post title, creates a new post with it and associates the post and author" do 	    it "takes in an argument of a post title, creates a new post with it and associates the post and author" do 
        betty.add_post_by_title("My Great Blog Post")	      betty.add_post_by_title("My Great Blog Post")
        # binding.pry	      # binding.pry
        expect(betty.posts.last.title).to eq("My Great Blog Post")	      expect(betty.posts.last.title).to eq("My Great Blog Post")
        expect(betty.posts.last.author).to eq(betty)	      expect(betty.posts.last.author).to eq(betty)
      end	
    end	    end
  end


    describe ".post_count" do 	  describe ".post_count" do 
      it "is a class method that returns the total number of posts associated to all existing authors" do 	    it "is a class method that returns the total number of posts associated to all existing authors" do 
        # binding.pry	      # binding.pry
        expect(Author.post_count).to eq(2)	      expect(Author.post_count).to eq(2)
      end	    end


      it "uses the class variable, @@post_count" do 	    it "uses the class variable, @@post_count" do 
        expect(Author.class_variable_get(:@@post_count)).to be_a(Integer)	      expect(Author.class_variable_get(:@@post_count)).to be_a(Integer)
      end	
    end	    end
  end	  end
end 	end 
  
    