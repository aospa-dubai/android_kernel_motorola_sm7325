#!/usr/bin/env bash

TAG="LA.UM.9.14.r1-20800-LAHAINA.QSSI13.0"

# Kernel
git pull msm-5.4 $TAG

# Techpacks
git subtree pull --prefix=techpack/audio audio $TAG
git subtree pull --prefix=techpack/camera camera $TAG
git subtree pull --prefix=techpack/dataipa dataipa $TAG
git subtree pull --prefix=techpack/datarmnet datarmnet $TAG
git subtree pull --prefix=techpack/datarmnet-ext datarmnet-ext $TAG
git subtree pull --prefix=techpack/display display $TAG
git subtree pull --prefix=techpack/video video $TAG

# Wi-Fi
git subtree pull --prefix=drivers/staging/fw-api fw-api $TAG
git subtree pull --prefix=drivers/staging/qca-wifi-host-cmn qca-wifi-host-cmn $TAG
git subtree pull --prefix=drivers/staging/qcacld-3.0 qcacld-3.0 $TAG
