class CreditCard {
  String _ccNumber;
  String _expMonth;
  String _expYear;
  String _cvv;
  String _cardHolder;

  CreditCard(
      {String ccNumber,
        String expMonth,
        String expYear,
        String cvv,
        String cardHolder}) {
    this._ccNumber = ccNumber;
    this._expMonth = expMonth;
    this._expYear = expYear;
    this._cvv = cvv;
    this._cardHolder = cardHolder;
  }

  String get ccNumber => _ccNumber;
  set ccNumber(String ccNumber) => _ccNumber = ccNumber;
  String get expMonth => _expMonth;
  set expMonth(String expMonth) => _expMonth = expMonth;
  String get expYear => _expYear;
  set expYear(String expYear) => _expYear = expYear;
  String get cvv => _cvv;
  set cvv(String cvv) => _cvv = cvv;
  String get cardHolder => _cardHolder;
  set cardHolder(String cardHolder) => _cardHolder = cardHolder;

  CreditCard.fromJson(Map<String, dynamic> json) {
    _ccNumber = json['cc_number'];
    _expMonth = json['exp_month'];
    _expYear = json['exp_year'];
    _cvv = json['cvv'];
    _cardHolder = json['card_holder'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['cc_number'] = this._ccNumber;
    data['exp_month'] = this._expMonth;
    data['exp_year'] = this._expYear;
    data['cvv'] = this._cvv;
    data['card_holder'] = this._cardHolder;
    return data;
  }
}