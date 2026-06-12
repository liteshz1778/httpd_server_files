#!/bin/bash

touch ./script_output/index.html

cat <<EOF > ./script_output/index.html
<html>
<body style="background-color: #e6ffe6;">
<h2>Deployment Info</h2>

<table border="1" cellpadding="5">

<tr>
  <th>Property</th>
  <th>Value</th>
</tr>

<tr>
  <td>Hostname</td>
  <td>$(hostname)</td>
</tr>

<tr>
  <td>IP Address</td>
  <td>$(hostname -i)</td>
</tr>

<tr>
  <td>Date</td>
  <td>$(date)</td>
</tr>

<tr>
  <td>ENV Variables</td>
  <td><pre>$(env)</pre></td>
</tr>

</table>

<br>
<a href="../">Home Page</a>

</body>
</html>
EOF
