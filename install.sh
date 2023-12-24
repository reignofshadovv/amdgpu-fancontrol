#!/bin/bash
set -x
sudo  cp "amdgpu-fancontrol.sh" "/usr/bin/amdgpu-fancontrol"
sudo  cp "etc-amdgpu-fancontrol.cfg" "/etc/amdgpu-fancontrol.cfg"
sudo  cp "amdgpu-fancontrol.service" "/usr/lib/systemd/system/amdgpu-fancontrol.service"
