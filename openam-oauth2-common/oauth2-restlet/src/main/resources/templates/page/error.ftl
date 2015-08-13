<!DOCTYPE html>
<!--
  ~ DO NOT REMOVE COPYRIGHT NOTICES OR THIS HEADER.
  ~
  ~ Copyright 2012-2014 ForgeRock AS.
  ~
  ~ The contents of this file are subject to the terms
  ~ of the Common Development and Distribution License
  ~ (the License). You may not use this file except in
  ~ compliance with the License.
  ~
  ~ You can obtain a copy of the License at
  ~ http://forgerock.org/license/CDDLv1.0.html
  ~ See the License for the specific language governing
  ~ permission and limitations under the License.
  ~
  ~ When distributing Covered Code, include this CDDL
  ~ Header Notice in each file and include the License file
  ~ at http://forgerock.org/license/CDDLv1.0.html
  ~ If applicable, add the following below the CDDL Header,
  ~ with the fields enclosed by brackets [] replaced by
  ~ your own identifying information:
  ~ "Portions Copyrighted [year] [name of copyright owner]"
  ~
  ~ Portions Copyrighted 2014 Nomura Research Institute, Ltd
  -->
  <html lang="en">
      <head>
          <meta charset="utf-8">
          <meta http-equiv="X-UA-Compatible" content="IE=edge">
          <meta name="viewport" content="width=device-width, initial-scale=1">
          <meta name="description" content="OAuth2 Error">
          <title>OAuth2 Error Page</title>
      </head>
<head>

<body>
    <div id="wrapper" class="hidden">Loading...</div>
    <footer id="footer" class="footer hidden"></footer>
    <script type="text/javascript">
        <#if error??>
            pageData = {
                baseUrl: "${baseUrl?js_string}/XUI",
                error: {
                <#if error_uri??>
                    uri: "${error_uri?js_string}",
                </#if>
                <#if error_description??>
                    description: "${error_description?js_string}",
                </#if>
                    message: "${error?js_string}"
                }
            }
        </#if>
        </script>
        <script data-main="${baseUrl?html}/XUI/main-authorize" src="${baseUrl?html}/XUI/libs/requirejs-2.1.14-min.js"></script>
    </body>
</html>
