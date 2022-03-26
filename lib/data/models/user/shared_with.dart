import 'package:equatable/equatable.dart';

class SharedWith extends Equatable {
  final dynamic users;
  final dynamic groups;

  const SharedWith({this.users, this.groups});

  factory SharedWith.fromJson(Map<String, dynamic> json) => SharedWith(
        users: json['Users'] as dynamic,
        groups: json['Groups'] as dynamic,
      );

  Map<String, dynamic> toJson() => {
        'Users': users,
        'Groups': groups,
      };

  @override
  List<Object?> get props => [users, groups];
}
