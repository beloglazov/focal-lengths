#!/bin/sh

# Copyright 2012 Anton Beloglazov
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

echo $1

camera=`wget -qO - "http://www.pixel-peeper.com/adv/" | grep -Eo "^.*value='[0-9]*'>$1<" | cut -d "'" -f 2`

./pixel-peeper.sh $camera 8
./pixel-peeper.sh $camera 10
./pixel-peeper.sh $camera 12
./pixel-peeper.sh $camera 14
./pixel-peeper.sh $camera 16
./pixel-peeper.sh $camera 18
./pixel-peeper.sh $camera 20
./pixel-peeper.sh $camera 22
./pixel-peeper.sh $camera 24
./pixel-peeper.sh $camera 28
./pixel-peeper.sh $camera 35
./pixel-peeper.sh $camera 40
./pixel-peeper.sh $camera 50
./pixel-peeper.sh $camera 70
./pixel-peeper.sh $camera 85
./pixel-peeper.sh $camera 100
./pixel-peeper.sh $camera 135
./pixel-peeper.sh $camera 165
./pixel-peeper.sh $camera 200
