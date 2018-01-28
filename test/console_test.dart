// Copyright (c) 2017, Anatoly Pulyaevskiy. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

@TestOn('node')
library console_test;

import 'package:node_interop/node_interop.dart';
import 'package:test/test.dart';

void main() {
  group('console', () {
    test('bindings', () {
      expect(() {
        console.log('test log');
      }, prints('test log'));
    }, skip: 'Figure out how to make expect/prints work on node.');
  });
}
