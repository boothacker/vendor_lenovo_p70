define find-copy-files
$(sort $(shell find $(2) -name "$(1)" -type f | grep -v "~" | $(SED_EXTENDED) "s:($(2)/?(.*)):\\1\\:$(3)/\\2:" | sed "s://:/:g"))
endef

PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,vendor/lenovo/p70/proprietary/bin,system/bin)

PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,vendor/lenovo/p70/proprietary/etc,system/etc)

PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,vendor/lenovo/p70/proprietary/lib,system/lib)

PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,vendor/lenovo/p70/proprietary/lib64,system/lib64)

PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,vendor/lenovo/p70/proprietary/usr,system/usr)

PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,vendor/lenovo/p70/proprietary/xbin,system/xbin)

PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,vendor/lenovo/p70/proprietary/vendor,system/vendor)
