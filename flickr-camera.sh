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

./flickr.sh "$1" 8
./flickr.sh "$1" 14
./flickr.sh "$1" 16
./flickr.sh "$1" 20
./flickr.sh "$1" 21
./flickr.sh "$1" 24
./flickr.sh "$1" 28
./flickr.sh "$1" 35
./flickr.sh "$1" 50
./flickr.sh "$1" 85
./flickr.sh "$1" 100
./flickr.sh "$1" 135
./flickr.sh "$1" 200
