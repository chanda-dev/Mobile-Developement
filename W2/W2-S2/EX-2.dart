class BankAccount {
    // TODO

  final  String? _accountName;

  final  String? _accountNumber;

  final  String? _phoneNumber;

  final  String? _accountPin;

  double? balance;

  

  String? get accountName{
    return _accountName;
  }

  String? get accountNumber{
    return _accountNumber;
  }

  String? get phoneNumber{
    return _phoneNumber;
  }

  String?  get accountPin{
    return _accountPin;
  }

 
  

  BankAccount(this._accountName, 
              this._accountNumber, 
              this._phoneNumber, 
              this._accountPin, 
              this.balance);

void withDraw( double amount, String pin){
  if(pin == accountPin){
      if(balance! < amount || amount < 0){
        throw Exception('iffueince balance');
      }
      balance = balance! - amount;
  } else {
    print('Wrong Pin');
  }
  
}

void credit(double amount, String pin){
  if(pin == accountPin){
    if(amount > 0){
      balance = balance! + amount;
    } else {
      print('Wrong input amount');
    }
  } else {
    print('wrong pin');
  }
}

String toString(){
  return 'account number: $accountNumber, account name: $accountName, phone number: $phoneNumber';
}
  

    
}

class Bank {
    // TODO

  List<BankAccount> bankList = [];

  final String? _bankName;

  

  String? get bankName{
    return _bankName;
  }

  Bank(this._bankName);

  BankAccount createAccount(String accountNumber, String accountName, String phoneNumber, String accountPin, double balance){
    for(var i = 0; i< bankList.length;i++){
      if(bankList[i].accountNumber == accountNumber){
        throw Exception('account already exist');
      }
    }
    BankAccount newAccount = BankAccount(accountName, accountNumber, phoneNumber, accountPin, balance);
    bankList.add(newAccount);
    
   return newAccount;
  }
}
 
void main() {

  BankAccount ba1 = BankAccount('chanda', '458796', '0964109534', '3548', 1000);
  try {
    ba1.withDraw(2000,'3548'); // This will throw an exception
  } catch (e) {
    print(e); // Output: Insufficient balance for withdrawal!
  }
  //ba1.withDraw(1000,'3548');
  print('Your current balance is:${ba1.balance}');

  Bank myBank = Bank('CADT');
  BankAccount daacc = myBank.createAccount('5462', 'da', '0964109534', '2565', 5);
  print(daacc);
  try{
    BankAccount da = myBank.createAccount('5462', 'da', '0964109534', '2565', 5);
    print(da);
  } catch(e){
    print(e);
  }
  
  
  print(myBank.bankList);

  // Bank myBank = Bank(name: "CADT Bank");
  // BankAccount ronanAccount = myBank.createAccount(100, 'Ronan');

  // print(ronanAccount.balance); // Balance: $0
  // ronanAccount.credit(100);
  // print(ronanAccount.balance); // Balance: $100
  // ronanAccount.withdraw(50);
  // print(ronanAccount.balance); // Balance: $50

  

  // try {
  //   myBank.createAccount(100, 'Honlgy'); // This will throw an exception
  // } catch (e) {
  //   print(e); // Output: Account with ID 100 already exists!
  // }

  
}


