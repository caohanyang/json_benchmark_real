## Description

- Refresh the page every 5 seconds to grab the data, and get 13 different data totally.
- Compare T1 with T0, T2 with T1, T3 with T2, etc.
T0=====T1=====T2=====T3...T11=====T12=====T13
===== means 5 seconds.
- Finally get 12 comparison result, which are stored in 12 folders named from 00 to 11.
- In each folder, A0 in filename means no algorithm, and A1,A2,A3,A4 in filename represent different algorithm.
-- A1: jsondiffpatch
-- A2: fast-json-patch
-- A3: jiff
-- A4: changeset
- In the file named Costtime-A?.csv:
-- the first number: making diff time * 1000
-- the second number: patch size
-- the third number: patching time * 1000
-- the fourth number: original data size

