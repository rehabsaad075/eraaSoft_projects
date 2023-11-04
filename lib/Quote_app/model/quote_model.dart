class QuoteModel{
   String ?qotdDate;
   Quote ?quote;

  QuoteModel({ this.qotdDate, this.quote});
  QuoteModel.fromJson(Map<String,dynamic> json){
    qotdDate=json['qotd_date'];
    quote=Quote.fromJson(json['quote']);
  }
}

class Quote{
   int? id;
   bool ?dialogue;
   bool ?private;
   List<int>?tags;
   String ? url;
   int? favoritesCount;
   int? upVotesCount;
   int?downVotesCount;
   String ? author;
   String ? authorPermalink;
   String ? body;
   bool? isFav;

  Quote(
      {this.id,
      this.dialogue,
      this.private,
      this.tags,
      this.url,
      this.favoritesCount,
      this.upVotesCount,
      this.downVotesCount,
      this.author,
      this.authorPermalink,
      this.body,
        this.isFav
      });
  Quote.fromJson(Map<String,dynamic> json){
    id=json['id'];
    body=json['body'];
    author=json['author'];
    favoritesCount=json['favorites_count'];
    isFav=false;
}
}