import 'dart:convert';

UserBalanceModel userModelFromJson(String str) =>
    UserBalanceModel.fromJson(json.decode(str));

String userModelToJson(UserBalanceModel data) => json.encode(data.toJson());

class UserBalanceModel {
  UserBalanceModel({
    required this.annualDebt,
    required this.monthBalance,
    required this.monthDebt,
  });

  final double annualDebt;
  final double monthBalance;
  final double monthDebt;

  factory UserBalanceModel.fromJson(Map<String, dynamic> json) =>
      UserBalanceModel(
        annualDebt: json["AnnualDebt"],
        monthBalance: json["MonthBalance"],
        monthDebt: json["MonthDebt"],
      );

  Map<String, dynamic> toJson() => {
        "AnnualDebt": annualDebt,
        "MonthBalance": monthBalance,
        "MonthDebt": monthDebt
      };
}
