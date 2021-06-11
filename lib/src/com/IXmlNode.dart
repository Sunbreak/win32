// IXmlNode.dart

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

import 'IXmlNodeSelector.dart';

/// @nodoc
const IID_IXmlNode = '{1C741D59-2122-47D5-A856-83F3D4214875}';

typedef _get_NodeValue_Native = Int32 Function(
    Pointer obj, Pointer<COMObject> value);
typedef _get_NodeValue_Dart = int Function(
    Pointer obj, Pointer<COMObject> value);

typedef _put_NodeValue_Native = Int32 Function(Pointer obj, COMObject value);
typedef _put_NodeValue_Dart = int Function(Pointer obj, COMObject value);

typedef _get_NodeType_Native = Int32 Function(
    Pointer obj, Pointer<Uint32> value);
typedef _get_NodeType_Dart = int Function(Pointer obj, Pointer<Uint32> value);

typedef _get_NodeName_Native = Int32 Function(
    Pointer obj, Pointer<IntPtr> value);
typedef _get_NodeName_Dart = int Function(Pointer obj, Pointer<IntPtr> value);

typedef _get_ParentNode_Native = Int32 Function(
    Pointer obj, Pointer<Pointer> value);
typedef _get_ParentNode_Dart = int Function(
    Pointer obj, Pointer<Pointer> value);

typedef _get_ChildNodes_Native = Int32 Function(
    Pointer obj, Pointer<Pointer> value);
typedef _get_ChildNodes_Dart = int Function(
    Pointer obj, Pointer<Pointer> value);

typedef _get_FirstChild_Native = Int32 Function(
    Pointer obj, Pointer<Pointer> value);
typedef _get_FirstChild_Dart = int Function(
    Pointer obj, Pointer<Pointer> value);

typedef _get_LastChild_Native = Int32 Function(
    Pointer obj, Pointer<Pointer> value);
typedef _get_LastChild_Dart = int Function(Pointer obj, Pointer<Pointer> value);

typedef _get_PreviousSibling_Native = Int32 Function(
    Pointer obj, Pointer<Pointer> value);
typedef _get_PreviousSibling_Dart = int Function(
    Pointer obj, Pointer<Pointer> value);

typedef _get_NextSibling_Native = Int32 Function(
    Pointer obj, Pointer<Pointer> value);
typedef _get_NextSibling_Dart = int Function(
    Pointer obj, Pointer<Pointer> value);

typedef _get_Attributes_Native = Int32 Function(
    Pointer obj, Pointer<Pointer> value);
typedef _get_Attributes_Dart = int Function(
    Pointer obj, Pointer<Pointer> value);

typedef _HasChildNodes_Native = Int32 Function(
    Pointer obj, Pointer< /* Boolean */ Uint8> result);
typedef _HasChildNodes_Dart = int Function(
    Pointer obj, Pointer< /* Boolean */ Uint8> result);

typedef _get_OwnerDocument_Native = Int32 Function(
    Pointer obj, Pointer<Pointer> value);
typedef _get_OwnerDocument_Dart = int Function(
    Pointer obj, Pointer<Pointer> value);

typedef _InsertBefore_Native = Int32 Function(Pointer obj, Pointer newChild,
    Pointer referenceChild, Pointer<Pointer> result);
typedef _InsertBefore_Dart = int Function(Pointer obj, Pointer newChild,
    Pointer referenceChild, Pointer<Pointer> result);

typedef _ReplaceChild_Native = Int32 Function(Pointer obj, Pointer newChild,
    Pointer referenceChild, Pointer<Pointer> result);
typedef _ReplaceChild_Dart = int Function(Pointer obj, Pointer newChild,
    Pointer referenceChild, Pointer<Pointer> result);

typedef _RemoveChild_Native = Int32 Function(
    Pointer obj, Pointer childNode, Pointer<Pointer> result);
typedef _RemoveChild_Dart = int Function(
    Pointer obj, Pointer childNode, Pointer<Pointer> result);

typedef _AppendChild_Native = Int32 Function(
    Pointer obj, Pointer newChild, Pointer<Pointer> result);
typedef _AppendChild_Dart = int Function(
    Pointer obj, Pointer newChild, Pointer<Pointer> result);

typedef _CloneNode_Native = Int32 Function(
    Pointer obj,
    /* Boolean */ Uint8 deep,
    Pointer<Pointer> result);
typedef _CloneNode_Dart = int Function(
    Pointer obj, int deep, Pointer<Pointer> result);

typedef _get_NamespaceUri_Native = Int32 Function(
    Pointer obj, Pointer<COMObject> value);
typedef _get_NamespaceUri_Dart = int Function(
    Pointer obj, Pointer<COMObject> value);

typedef _get_LocalName_Native = Int32 Function(
    Pointer obj, Pointer<COMObject> value);
typedef _get_LocalName_Dart = int Function(
    Pointer obj, Pointer<COMObject> value);

typedef _get_Prefix_Native = Int32 Function(
    Pointer obj, Pointer<COMObject> value);
typedef _get_Prefix_Dart = int Function(Pointer obj, Pointer<COMObject> value);

typedef _Normalize_Native = Int32 Function(Pointer obj);
typedef _Normalize_Dart = int Function(Pointer obj);

typedef _put_Prefix_Native = Int32 Function(Pointer obj, COMObject value);
typedef _put_Prefix_Dart = int Function(Pointer obj, COMObject value);

/// {@category Interface}
/// {@category winrt}
class IXmlNode extends IXmlNodeSelector {
  // vtable begins at 19, ends at 41

  IXmlNode(Pointer<COMObject> ptr) : super(ptr);

  COMObject get NodeValue {
    final retValuePtr = calloc<COMObject>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<Pointer<NativeFunction<_get_NodeValue_Native>>>()
          .value
          .asFunction<_get_NodeValue_Dart>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.ref;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set NodeValue(COMObject value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(20)
        .cast<Pointer<NativeFunction<_put_NodeValue_Native>>>()
        .value
        .asFunction<_put_NodeValue_Dart>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get NodeType {
    final retValuePtr = calloc<Uint32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<Pointer<NativeFunction<_get_NodeType_Native>>>()
          .value
          .asFunction<_get_NodeType_Dart>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get NodeName {
    final retValuePtr = calloc<IntPtr>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<Pointer<NativeFunction<_get_NodeName_Native>>>()
          .value
          .asFunction<_get_NodeName_Dart>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer get ParentNode {
    final retValuePtr = calloc<Pointer>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<Pointer<NativeFunction<_get_ParentNode_Native>>>()
          .value
          .asFunction<_get_ParentNode_Dart>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer get ChildNodes {
    final retValuePtr = calloc<Pointer>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(24)
          .cast<Pointer<NativeFunction<_get_ChildNodes_Native>>>()
          .value
          .asFunction<_get_ChildNodes_Dart>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer get FirstChild {
    final retValuePtr = calloc<Pointer>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(25)
          .cast<Pointer<NativeFunction<_get_FirstChild_Native>>>()
          .value
          .asFunction<_get_FirstChild_Dart>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer get LastChild {
    final retValuePtr = calloc<Pointer>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(26)
          .cast<Pointer<NativeFunction<_get_LastChild_Native>>>()
          .value
          .asFunction<_get_LastChild_Dart>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer get PreviousSibling {
    final retValuePtr = calloc<Pointer>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(27)
          .cast<Pointer<NativeFunction<_get_PreviousSibling_Native>>>()
          .value
          .asFunction<_get_PreviousSibling_Dart>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer get NextSibling {
    final retValuePtr = calloc<Pointer>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(28)
          .cast<Pointer<NativeFunction<_get_NextSibling_Native>>>()
          .value
          .asFunction<_get_NextSibling_Dart>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer get Attributes {
    final retValuePtr = calloc<Pointer>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(29)
          .cast<Pointer<NativeFunction<_get_Attributes_Native>>>()
          .value
          .asFunction<_get_Attributes_Dart>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int HasChildNodes(Pointer< /* Boolean */ Uint8> result) =>
      ptr.ref.lpVtbl.value
          .elementAt(30)
          .cast<Pointer<NativeFunction<_HasChildNodes_Native>>>()
          .value
          .asFunction<_HasChildNodes_Dart>()(ptr.ref.lpVtbl, result);

  Pointer get OwnerDocument {
    final retValuePtr = calloc<Pointer>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(31)
          .cast<Pointer<NativeFunction<_get_OwnerDocument_Native>>>()
          .value
          .asFunction<_get_OwnerDocument_Dart>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int InsertBefore(
          Pointer newChild, Pointer referenceChild, Pointer<Pointer> result) =>
      ptr.ref.lpVtbl.value
              .elementAt(32)
              .cast<Pointer<NativeFunction<_InsertBefore_Native>>>()
              .value
              .asFunction<_InsertBefore_Dart>()(
          ptr.ref.lpVtbl, newChild, referenceChild, result);

  int ReplaceChild(
          Pointer newChild, Pointer referenceChild, Pointer<Pointer> result) =>
      ptr.ref.lpVtbl.value
              .elementAt(33)
              .cast<Pointer<NativeFunction<_ReplaceChild_Native>>>()
              .value
              .asFunction<_ReplaceChild_Dart>()(
          ptr.ref.lpVtbl, newChild, referenceChild, result);

  int RemoveChild(Pointer childNode, Pointer<Pointer> result) =>
      ptr.ref.lpVtbl.value
          .elementAt(34)
          .cast<Pointer<NativeFunction<_RemoveChild_Native>>>()
          .value
          .asFunction<_RemoveChild_Dart>()(ptr.ref.lpVtbl, childNode, result);

  int AppendChild(Pointer newChild, Pointer<Pointer> result) =>
      ptr.ref.lpVtbl.value
          .elementAt(35)
          .cast<Pointer<NativeFunction<_AppendChild_Native>>>()
          .value
          .asFunction<_AppendChild_Dart>()(ptr.ref.lpVtbl, newChild, result);

  int CloneNode(int deep, Pointer<Pointer> result) => ptr.ref.lpVtbl.value
      .elementAt(36)
      .cast<Pointer<NativeFunction<_CloneNode_Native>>>()
      .value
      .asFunction<_CloneNode_Dart>()(ptr.ref.lpVtbl, deep, result);

  COMObject get NamespaceUri {
    final retValuePtr = calloc<COMObject>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(37)
          .cast<Pointer<NativeFunction<_get_NamespaceUri_Native>>>()
          .value
          .asFunction<_get_NamespaceUri_Dart>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.ref;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  COMObject get LocalName {
    final retValuePtr = calloc<COMObject>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(38)
          .cast<Pointer<NativeFunction<_get_LocalName_Native>>>()
          .value
          .asFunction<_get_LocalName_Dart>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.ref;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  COMObject get Prefix {
    final retValuePtr = calloc<COMObject>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(39)
          .cast<Pointer<NativeFunction<_get_Prefix_Native>>>()
          .value
          .asFunction<_get_Prefix_Dart>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.ref;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int Normalize() => ptr.ref.lpVtbl.value
      .elementAt(40)
      .cast<Pointer<NativeFunction<_Normalize_Native>>>()
      .value
      .asFunction<_Normalize_Dart>()(ptr.ref.lpVtbl);

  set Prefix(COMObject value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(41)
        .cast<Pointer<NativeFunction<_put_Prefix_Native>>>()
        .value
        .asFunction<_put_Prefix_Dart>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }
}
