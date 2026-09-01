/*
 * Copyright (C) 2021-2025 The LineageOS Project
 *
 * SPDX-License-Identifier: Apache-2.0
 */

#include <libvariant.h>

static const variant_info cepheus_info = {
    .hwc_value = "",
    .sku_value = "",

    .brand = "Xiaomi",
    .device = "cepheus",
    .marketname = "",
    .model = "Mi 9",

    .nfc = true,
};

const std::vector<variant_info> variants = {
    cepheus_info,
};
