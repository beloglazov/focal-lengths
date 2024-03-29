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

from=$(($2-1))
to=$(($2+1))

cntFrom=`wget -qO - "http://www.flickr.com/search/?xfl=$from&q=$1" | grep -Eo '[0-9,]+ results' | sed 's/,//g' | cut -d ' ' -f 1`
cntTo=`wget -qO - "http://www.flickr.com/search/?xfl=$to&q=$1" | grep -Eo '[0-9,]+ results' | sed 's/,//g' | cut -d ' ' -f 1`

if [ ! $cntFrom ]
then
    cntFrom=0
fi

if [ ! $cntTo ]
then
    cntTo=0
fi

echo $(($cntFrom - $cntTo))
