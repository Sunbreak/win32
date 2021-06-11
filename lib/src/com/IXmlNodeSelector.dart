// IXmlNodeSelector.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../combase.dart';
import '../constants.dart';
import '../exceptions.dart';
import '../macros.dart';
import '../ole32.dart';
import '../structs.dart';
import '../structs.g.dart';
import '../utils.dart';

import '../winrt/winrt_constants.dart';

import 'IInspectable.dart';

/// @nodoc
const IID_IXmlNodeSelector = '{63DBBA8B-D0DB-4FE1-B745-F9433AFDC25B}';

typedef _SelectSingleNode_Native = Int32 Function(
    Pointer obj, IntPtr xpath, Pointer<Pointer> result);
typedef _SelectSingleNode_Dart = int Function(
    Pointer obj, int xpath, Pointer<Pointer> result);

typedef _SelectNodes_Native = Int32 Function(
    Pointer obj, IntPtr xpath, Pointer<Pointer> result);
typedef _SelectNodes_Dart = int Function(
    Pointer obj, int xpath, Pointer<Pointer> result);

typedef _SelectSingleNodeNS_Native = Int32 Function(
    Pointer obj, IntPtr xpath, COMObject namespaces, Pointer<Pointer> result);
typedef _SelectSingleNodeNS_Dart = int Function(
    Pointer obj, int xpath, COMObject namespaces, Pointer<Pointer> result);

typedef _SelectNodesNS_Native = Int32 Function(
    Pointer obj, IntPtr xpath, COMObject namespaces, Pointer<Pointer> result);
typedef _SelectNodesNS_Dart = int Function(
    Pointer obj, int xpath, COMObject namespaces, Pointer<Pointer> result);

/// {@category Interface}
/// {@category winrt}
class IXmlNodeSelector extends IInspectable {
  // vtable begins at 6, ends at 9

  IXmlNodeSelector(Pointer<COMObject> ptr) : super(ptr);

  int SelectSingleNode(int xpath, Pointer<Pointer> result) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<Pointer<NativeFunction<_SelectSingleNode_Native>>>()
          .value
          .asFunction<_SelectSingleNode_Dart>()(ptr.ref.lpVtbl, xpath, result);

  int SelectNodes(int xpath, Pointer<Pointer> result) => ptr.ref.lpVtbl.value
      .elementAt(7)
      .cast<Pointer<NativeFunction<_SelectNodes_Native>>>()
      .value
      .asFunction<_SelectNodes_Dart>()(ptr.ref.lpVtbl, xpath, result);

  int SelectSingleNodeNS(
          int xpath, COMObject namespaces, Pointer<Pointer> result) =>
      ptr.ref.lpVtbl.value
              .elementAt(8)
              .cast<Pointer<NativeFunction<_SelectSingleNodeNS_Native>>>()
              .value
              .asFunction<_SelectSingleNodeNS_Dart>()(
          ptr.ref.lpVtbl, xpath, namespaces, result);

  int SelectNodesNS(int xpath, COMObject namespaces, Pointer<Pointer> result) =>
      ptr.ref.lpVtbl.value
              .elementAt(9)
              .cast<Pointer<NativeFunction<_SelectNodesNS_Native>>>()
              .value
              .asFunction<_SelectNodesNS_Dart>()(
          ptr.ref.lpVtbl, xpath, namespaces, result);
}
