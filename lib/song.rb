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
  
  
    