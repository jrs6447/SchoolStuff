public class Play {
	public String title;
    public String author;
    public String genre;
    
    //+Play()
    //+Play(aTitle: String)
    
    //+setTitle(aTitle:String):void
    public void setTitle(String aTitle){
        title = aTitle;
    }
    //+setAuthor(anAuthor:String):void
    public void setAuthor(String anAuthor){
        author = anAuthor;
    }
    //+setGenre(aGenre:String):void
    public void setGenre(String aGenre){
        genre = aGenre;
    }
    //+getTitle():String
    public String getTitle(){
		return title;
    }
    //+getAuthor():String
    public String getAuthor(){
        return author;
    }
    //+getGenre():String
    public String getGenre(){
        return genre;
    }
    //+display():void
    public void display(){
        System.debug('Play Information');
        System.debug('Title: ' + Title);
        System.debug('Author: ' + Author);
        System.debug('Genre: ' + Genre);
    }
}