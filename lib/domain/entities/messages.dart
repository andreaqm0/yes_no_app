enum FromWho { me, hers }

class Messages {
  final String text;
  final String? imgUrl;
  final FromWho fromWho;

  Messages({required this.text, this.imgUrl, required this.fromWho});
}
