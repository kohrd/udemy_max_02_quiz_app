class QuizQuestion {
  const QuizQuestion(this.text, this.answers);



  final String text;
  final List<String> answers;


List<String> getShuffledAnswers(){
  //mixuje odpowiedzi zeby dobra nie byla na miejscu pierwszym
  final List<String> shuffeldList = List.of(answers);  // turobimy kopie
  shuffeldList.shuffle();  // changes list in place
  return shuffeldList;


      //kopiujemy 'of' i robimy shuffle
  // wywolujemy shuffle na wyniku metody 'of'
  // shuffle jest void, miesza liste nabizaco i nic nie zwraca

}
}