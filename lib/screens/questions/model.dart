class QuestionModel {
  late String questionName;
  late int questionId;
  late int progressNumber;
  late List<AnswerModel> answers;
  AnswerModel? selectedAnswer;

  QuestionModel(
      {required this.questionName,
      required this.questionId,
      required this.answers,
      this.selectedAnswer,
      required this.progressNumber});
}

class AnswerModel {
  late String name, image;

  late int id;

  AnswerModel({
    required this.id,
    required this.name,
    required this.image,
  });
}

List<QuestionModel> questionsList = [
  QuestionModel(
    progressNumber: 40,
      questionName: 'Which of these do you spend money on ?',
      questionId: 1,
      answers: [
        AnswerModel(
            id: 1,
            name: 'Groceries',
            image: 'assets/images/emojione_shopping-cart.png'),
        AnswerModel(
            id: 2,
            name: 'Phones',
            image: 'assets/images/emojione_mobile-phone.png'),
        AnswerModel(
            id: 3,
            name: 'Personal Care',
            image: 'assets/images/pesonal_care.png'),
        AnswerModel(
            id: 4, name: 'Clothing', image: 'assets/images/clothing.png'),
        AnswerModel(id: 4, name: 'Other', image: ''),
      ]),
  QuestionModel(
    progressNumber: 80,
      questionName: 'Tell us about your home',
      questionId: 2,
      answers: [
        AnswerModel(id: 1, name: 'I rent', image: ''),
        AnswerModel(id: 2, name: 'I own', image: ''),
        AnswerModel(id: 3, name: 'Other', image: ''),
      ]),
  QuestionModel(
    progressNumber: 120,
      questionName: "Do you currently have any debt ?",
      questionId: 3,
      answers: [
        AnswerModel(
            id: 1, name: "Credit Card", image: "assets/images/credit.png"),
        AnswerModel(
            id: 2, name: "House Loans", image: "assets/images/house.png"),
        AnswerModel(
            id: 3, name: "Personal Loans", image: "assets/images/car.png"),
        AnswerModel(id: 4, name: "Other", image: ""),
      ]),
  QuestionModel(
    progressNumber: 160,
      questionName: "What is your marital status ?",
      questionId: 4,
      answers: [
        AnswerModel(id: 1, name: "Single", image: "assets/images/person.png"),
        AnswerModel(
            id: 2, name: "married", image: "assets/images/wedding-couple.png"),
        AnswerModel(
            id: 3, name: "Divorced", image: "assets/images/divorce.png"),
        AnswerModel(id: 4, name: "Widowed", image: "assets/images/funeral.png"),
      ]),
  QuestionModel(
    progressNumber: 260,
      questionName: "What is your primary financial goals?",
      questionId: 5,
      answers: [
        AnswerModel(
            id: 1,
            name: "Tracking incomes and expenses",
            image: "assets/images/61.png"),
        AnswerModel(
            id: 2, name: "Mange debts, loans", image: "assets/images/62.png"),
        AnswerModel(
            id: 3, name: "Cut down expenses", image: "assets/images/63.png"),
        AnswerModel(id: 4, name: "Saving", image: "assets/images/64.png"),
        AnswerModel(
            id: 5,
            name: "Manage all money in one place",
            image: "assets/images/65.png"),
        AnswerModel(id: 6, name: "Other goals", image: "assets/images/66.png"),
      ]),
];
