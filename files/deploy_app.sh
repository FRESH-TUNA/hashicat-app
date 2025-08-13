#!/bin/bash
# Copyright (c) HashiCorp, Inc.

# Script to deploy a very simple web application.
# The web app has a customizable image and some text.

cat << EOM > /var/www/html/index.html
<html>
  <head>
    <title>Meow!</title>
    <style>
      body {
        margin: 0;
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background-color: #f9f9f9;
        color: #333;
      }

      .container {
        width: 800px;
        margin: 50px auto;
        background-color: #ffffff;
        box-shadow: 0 8px 20px rgba(0, 0, 0, 0.1);
        border-radius: 10px;
        overflow: hidden;
      }

      .header {
        background-color: #ffcccb;
        padding: 30px 20px;
        text-align: center;
      }

      .header img {
        max-width: 100%;
        height: auto;
        border-radius: 10px;
      }

      .title {
        font-size: 32px;
        margin-top: 20px;
        color: #444;
      }

      .content {
        padding: 20px;
        font-size: 18px;
        line-height: 1.6;
      }
    </style>
  </head>
  <body>
    <div class="container">

      <!-- BEGIN -->
      <div class="header">
        <img src="http://${PLACEHOLDER}/${WIDTH}/${HEIGHT}" alt="Cat Image">
        <div class="title">Meow World!</div>
      </div>
      <div class="content">
        Welcome to tuuuuuuna ${PREFIX}'s app. Replace this text with your own.
      </div>
      <!-- END -->

    </div>
  </body>
</html>
EOM

echo "Script complete."
