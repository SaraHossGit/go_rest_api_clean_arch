abstract class UserStates{}

class InitialState extends UserStates{}

class DataLoaded extends UserStates{
  final usersList;
  DataLoaded (this.usersList);
}