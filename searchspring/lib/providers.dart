
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:searchspring/testmodel.dart';

final getCity = FutureProvider.family((ref,String cname) => getcity(cname));