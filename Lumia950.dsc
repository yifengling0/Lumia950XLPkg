#
#  Copyright (c) 2011-2015, ARM Limited. All rights reserved.
#  Copyright (c) 2014, Linaro Limited. All rights reserved.
#  Copyright (c) 2015 - 2016, Intel Corporation. All rights reserved.
#  Copyright (c) 2018, Bingxing Wang. All rights reserved.
#
#  This program and the accompanying materials
#  are licensed and made available under the terms and conditions of the BSD License
#  which accompanies this distribution.  The full text of the license may be found at
#  http://opensource.org/licenses/bsd-license.php
#
#  THE PROGRAM IS DISTRIBUTED UNDER THE BSD LICENSE ON AN "AS IS" BASIS,
#  WITHOUT WARRANTIES OR REPRESENTATIONS OF ANY KIND, EITHER EXPRESS OR IMPLIED.
#
#

################################################################################
#
# Defines Section - statements that will be processed to create a Makefile.
#
################################################################################
[Defines]
  PLATFORM_NAME                  = Lumia950
  PLATFORM_GUID                  = b6325ac2-9f3f-4b1d-b129-ac7b35ddde60
  PLATFORM_VERSION               = 0.1
  DSC_SPECIFICATION              = 0x00010005
  OUTPUT_DIRECTORY               = Build/Lumia950-$(ARCH)
  SUPPORTED_ARCHITECTURES        = AARCH64
  BUILD_TARGETS                  = DEBUG|RELEASE
  SKUID_IDENTIFIER               = DEFAULT
  FLASH_DEFINITION               = Lumia950XLPkg/Lumia950.fdf

[PcdsFixedAtBuild.common]
  # Platform-specific
  gArmPlatformTokenSpaceGuid.PcdCoreCount|6
  gArmPlatformTokenSpaceGuid.PcdClusterCount|2
  gLumia950XLPkgTokenSpaceGuid.PcdSmbiosSystemModel|"Lumia 950"
  gLumia950XLPkgTokenSpaceGuid.PcdSmbiosProcessorModel|"Qualcomm Snapdragon 808 Processor (8994)"
  gLumia950XLPkgTokenSpaceGuid.PcdSmbiosSystemRetailModel|"RM-1104"

!include Lumia950XLPkg/Shared.dsc.inc
