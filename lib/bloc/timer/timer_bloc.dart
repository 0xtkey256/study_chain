// import 'package:bloc/bloc.dart';
//
// class BankBloc extends Cubit<BankState> {
//   final BankCodeJpRepository _bankCodeJpRepository;
//
//   BankBloc(this._bankCodeJpRepository)
//       : super(
//           const BankState(),
//         );
//
//   @override
//   String toString() => "銀行";
//
//   void renderCompleted() {
//     emit(
//       state.copyWith(
//         status: BankStatus.idle,
//       ),
//     );
//   }
// }
