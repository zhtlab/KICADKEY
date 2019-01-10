#
# Copyright (c) 2018 zhtlab
#
# Permission is hereby granted, free of charge, to any person obtaining
# a copy of this software and associated documentation files
# (the "Software"), to deal in the Software without restriction, including
# without limitation the rights to use, copy, modify, merge, publish,
# distribute, sublicense, and/or sell copies of the Software, and to permit
# persons to whom the Software is furnished to do so, subject to
# the following conditions:
#
# The above copyright notice and this permission notice shall be included
# in all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
# FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
# DEALINGS IN THE SOFTWARE.
#

ifeq ($(DEVICE_ARCHTYPE), $(CONFIG_ARCHTYPE_CORTEX_M0))
CPU_CORTEX_ARCH = cortex-m0
CPU             = -mcpu=$(CPU_CORTEX_ARCH) -mthumb
FREERTOS_ARCH   = CM0
else ifeq ($(DEVICE_ARCHTYPE), $(CONFIG_ARCHTYPE_CORTEX_M0PLUS))
CPU_CORTEX_ARCH = cortex-m0plus
CPU             = -mcpu=$(CPU_CORTEX_ARCH) -mthumb
FREERTOS_ARCH   = CM0
else ifeq ($(DEVICE_ARCHTYPE), $(CONFIG_ARCHTYPE_CORTEX_M3))
CPU_CORTEX_ARCH = cortex-m3
FREERTOS_ARCH = CM3
else ifeq ($(DEVICE_ARCHTYPE), $(CONFIG_ARCHTYPE_CORTEX_M4))
CPU_CORTEX_ARCH = cortex-m4
CPU             = -mcpu=$(CPU_CORTEX_ARCH) -mthumb -mfloat-abi=hard -mfpu=fpv5-d16 -mlittle-endian
FREERTOS_ARCH   = CM4F
else ifeq ($(DEVICE_ARCHTYPE), $(CONFIG_ARCHTYPE_CORTEX_M7))
CPU_CORTEX_ARCH = cortex-m7
CPU             = -mcpu=$(CPU_CORTEX_ARCH) -mthumb -mfloat-abi=hard -mfpu=fpv5-d16 -mlittle-endian
FREERTOS_ARCH   = CM7
else
CPU             = xxxxxxxxxxxxxxxxxxxxxxxxxxxx
FREERTOS_ARCH   = xxxxxxxxxxxxxxxxxxxxxxxxxxxx
endif
