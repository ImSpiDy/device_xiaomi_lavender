#!/usr/bin/env -S PYTHONPATH=../../../tools/extract-utils python3
#
# SPDX-FileCopyrightText: 2024 The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

from extract_utils.main import (
    ExtractUtils,
    ExtractUtilsModule,
)

namespace_imports = [
    'vendor/xiaomi/lavender',
    'vendor/xiaomi/sdm660-common',
    'vendor/qcom/opensource/display',
]

module = ExtractUtilsModule(
    'lavender',
    'xiaomi',
    namespace_imports=namespace_imports,
)

if __name__ == '__main__':
    utils = ExtractUtils.device_with_common(module, 'sdm660-common', module.vendor)
    utils.run()
