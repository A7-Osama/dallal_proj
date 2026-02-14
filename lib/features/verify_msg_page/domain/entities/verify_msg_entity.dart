import 'package:dallal_proj/features/verify_msg_page/domain/entities/verify_msg_type.dart';

class VerifyMsgEntity {
  final String phone;
  final String? pass;
  final VerifyMsgType type;
  const VerifyMsgEntity({
    required this.phone,
    this.pass,
    this.type = VerifyMsgType.resetPass,
  });
}
