// IXmlDocument.dart

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

import 'IXmlNode.dart';

/// @nodoc
const IID_IXmlDocument = '{F7F3A506-1E87-42D6-BCFB-B8C809FA5494}';

typedef _get_Doctype_Native = Int32 Function(
    Pointer obj, Pointer<Pointer> value);
typedef _get_Doctype_Dart = int Function(Pointer obj, Pointer<Pointer> value);

typedef _get_Implementation_Native = Int32 Function(
    Pointer obj, Pointer<Pointer> value);
typedef _get_Implementation_Dart = int Function(
    Pointer obj, Pointer<Pointer> value);

typedef _get_DocumentElement_Native = Int32 Function(
    Pointer obj, Pointer<Pointer> value);
typedef _get_DocumentElement_Dart = int Function(
    Pointer obj, Pointer<Pointer> value);

typedef _CreateElement_Native = Int32 Function(
    Pointer obj, IntPtr tagName, Pointer<Pointer> result);
typedef _CreateElement_Dart = int Function(
    Pointer obj, int tagName, Pointer<Pointer> result);

typedef _CreateDocumentFragment_Native = Int32 Function(
    Pointer obj, Pointer<Pointer> result);
typedef _CreateDocumentFragment_Dart = int Function(
    Pointer obj, Pointer<Pointer> result);

typedef _CreateTextNode_Native = Int32 Function(
    Pointer obj, IntPtr data, Pointer<Pointer> result);
typedef _CreateTextNode_Dart = int Function(
    Pointer obj, int data, Pointer<Pointer> result);

typedef _CreateComment_Native = Int32 Function(
    Pointer obj, IntPtr data, Pointer<Pointer> result);
typedef _CreateComment_Dart = int Function(
    Pointer obj, int data, Pointer<Pointer> result);

typedef _CreateProcessingInstruction_Native = Int32 Function(
    Pointer obj, IntPtr target, IntPtr data, Pointer<Pointer> result);
typedef _CreateProcessingInstruction_Dart = int Function(
    Pointer obj, int target, int data, Pointer<Pointer> result);

typedef _CreateAttribute_Native = Int32 Function(
    Pointer obj, IntPtr name, Pointer<Pointer> result);
typedef _CreateAttribute_Dart = int Function(
    Pointer obj, int name, Pointer<Pointer> result);

typedef _CreateEntityReference_Native = Int32 Function(
    Pointer obj, IntPtr name, Pointer<Pointer> result);
typedef _CreateEntityReference_Dart = int Function(
    Pointer obj, int name, Pointer<Pointer> result);

typedef _GetElementsByTagName_Native = Int32 Function(
    Pointer obj, IntPtr tagName, Pointer<Pointer> result);
typedef _GetElementsByTagName_Dart = int Function(
    Pointer obj, int tagName, Pointer<Pointer> result);

typedef _CreateCDataSection_Native = Int32 Function(
    Pointer obj, IntPtr data, Pointer<Pointer> result);
typedef _CreateCDataSection_Dart = int Function(
    Pointer obj, int data, Pointer<Pointer> result);

typedef _get_DocumentUri_Native = Int32 Function(
    Pointer obj, Pointer<IntPtr> value);
typedef _get_DocumentUri_Dart = int Function(
    Pointer obj, Pointer<IntPtr> value);

typedef _CreateAttributeNS_Native = Int32 Function(Pointer obj,
    COMObject namespaceUri, IntPtr qualifiedName, Pointer<Pointer> result);
typedef _CreateAttributeNS_Dart = int Function(Pointer obj,
    COMObject namespaceUri, int qualifiedName, Pointer<Pointer> result);

typedef _CreateElementNS_Native = Int32 Function(Pointer obj,
    COMObject namespaceUri, IntPtr qualifiedName, Pointer<Pointer> result);
typedef _CreateElementNS_Dart = int Function(Pointer obj,
    COMObject namespaceUri, int qualifiedName, Pointer<Pointer> result);

typedef _GetElementById_Native = Int32 Function(
    Pointer obj, IntPtr elementId, Pointer<Pointer> result);
typedef _GetElementById_Dart = int Function(
    Pointer obj, int elementId, Pointer<Pointer> result);

typedef _ImportNode_Native = Int32 Function(
    Pointer obj,
    Pointer node,
    /* Boolean */ Uint8 deep,
    Pointer<Pointer> result);
typedef _ImportNode_Dart = int Function(
    Pointer obj, Pointer node, int deep, Pointer<Pointer> result);

/// {@category Interface}
/// {@category winrt}
class IXmlDocument extends IXmlNode {
  // vtable begins at 61, ends at 77

  IXmlDocument(Pointer<COMObject> ptr) : super(ptr);

  Pointer get Doctype {
    final retValuePtr = calloc<Pointer>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(61)
          .cast<Pointer<NativeFunction<_get_Doctype_Native>>>()
          .value
          .asFunction<_get_Doctype_Dart>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer get Implementation {
    final retValuePtr = calloc<Pointer>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(62)
          .cast<Pointer<NativeFunction<_get_Implementation_Native>>>()
          .value
          .asFunction<_get_Implementation_Dart>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer get DocumentElement {
    final retValuePtr = calloc<Pointer>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(63)
          .cast<Pointer<NativeFunction<_get_DocumentElement_Native>>>()
          .value
          .asFunction<_get_DocumentElement_Dart>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int CreateElement(int tagName, Pointer<Pointer> result) =>
      ptr.ref.lpVtbl.value
          .elementAt(64)
          .cast<Pointer<NativeFunction<_CreateElement_Native>>>()
          .value
          .asFunction<_CreateElement_Dart>()(ptr.ref.lpVtbl, tagName, result);

  int CreateDocumentFragment(Pointer<Pointer> result) => ptr.ref.lpVtbl.value
      .elementAt(65)
      .cast<Pointer<NativeFunction<_CreateDocumentFragment_Native>>>()
      .value
      .asFunction<_CreateDocumentFragment_Dart>()(ptr.ref.lpVtbl, result);

  int CreateTextNode(int data, Pointer<Pointer> result) => ptr.ref.lpVtbl.value
      .elementAt(66)
      .cast<Pointer<NativeFunction<_CreateTextNode_Native>>>()
      .value
      .asFunction<_CreateTextNode_Dart>()(ptr.ref.lpVtbl, data, result);

  int CreateComment(int data, Pointer<Pointer> result) => ptr.ref.lpVtbl.value
      .elementAt(67)
      .cast<Pointer<NativeFunction<_CreateComment_Native>>>()
      .value
      .asFunction<_CreateComment_Dart>()(ptr.ref.lpVtbl, data, result);

  int
      CreateProcessingInstruction(
              int target, int data, Pointer<Pointer> result) =>
          ptr
                  .ref.lpVtbl.value
                  .elementAt(68)
                  .cast<
                      Pointer<
                          NativeFunction<_CreateProcessingInstruction_Native>>>()
                  .value
                  .asFunction<_CreateProcessingInstruction_Dart>()(
              ptr.ref.lpVtbl, target, data, result);

  int CreateAttribute(int name, Pointer<Pointer> result) => ptr.ref.lpVtbl.value
      .elementAt(69)
      .cast<Pointer<NativeFunction<_CreateAttribute_Native>>>()
      .value
      .asFunction<_CreateAttribute_Dart>()(ptr.ref.lpVtbl, name, result);

  int CreateEntityReference(int name, Pointer<Pointer> result) => ptr
      .ref.lpVtbl.value
      .elementAt(70)
      .cast<Pointer<NativeFunction<_CreateEntityReference_Native>>>()
      .value
      .asFunction<_CreateEntityReference_Dart>()(ptr.ref.lpVtbl, name, result);

  int GetElementsByTagName(int tagName, Pointer<Pointer> result) =>
      ptr.ref.lpVtbl.value
              .elementAt(71)
              .cast<Pointer<NativeFunction<_GetElementsByTagName_Native>>>()
              .value
              .asFunction<_GetElementsByTagName_Dart>()(
          ptr.ref.lpVtbl, tagName, result);

  int CreateCDataSection(int data, Pointer<Pointer> result) =>
      ptr.ref.lpVtbl.value
          .elementAt(72)
          .cast<Pointer<NativeFunction<_CreateCDataSection_Native>>>()
          .value
          .asFunction<_CreateCDataSection_Dart>()(ptr.ref.lpVtbl, data, result);

  int get DocumentUri {
    final retValuePtr = calloc<IntPtr>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(73)
          .cast<Pointer<NativeFunction<_get_DocumentUri_Native>>>()
          .value
          .asFunction<_get_DocumentUri_Dart>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int CreateAttributeNS(
          COMObject namespaceUri, int qualifiedName, Pointer<Pointer> result) =>
      ptr.ref.lpVtbl.value
              .elementAt(74)
              .cast<Pointer<NativeFunction<_CreateAttributeNS_Native>>>()
              .value
              .asFunction<_CreateAttributeNS_Dart>()(
          ptr.ref.lpVtbl, namespaceUri, qualifiedName, result);

  int CreateElementNS(
          COMObject namespaceUri, int qualifiedName, Pointer<Pointer> result) =>
      ptr.ref.lpVtbl.value
              .elementAt(75)
              .cast<Pointer<NativeFunction<_CreateElementNS_Native>>>()
              .value
              .asFunction<_CreateElementNS_Dart>()(
          ptr.ref.lpVtbl, namespaceUri, qualifiedName, result);

  int GetElementById(int elementId, Pointer<Pointer> result) => ptr
      .ref.lpVtbl.value
      .elementAt(76)
      .cast<Pointer<NativeFunction<_GetElementById_Native>>>()
      .value
      .asFunction<_GetElementById_Dart>()(ptr.ref.lpVtbl, elementId, result);

  int ImportNode(Pointer node, int deep, Pointer<Pointer> result) =>
      ptr.ref.lpVtbl.value
          .elementAt(77)
          .cast<Pointer<NativeFunction<_ImportNode_Native>>>()
          .value
          .asFunction<_ImportNode_Dart>()(ptr.ref.lpVtbl, node, deep, result);
}
