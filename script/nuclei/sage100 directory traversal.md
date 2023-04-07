
```yalm
id: detected-winrm-open-port

info:
  name: biero test
  author: biero-el-corrido

requests:

  - method: GET

    path:

      - "{{BaseURL}}/Browser"

    #matchers-condition: and

    matchers:

      # match the HTTP 200 code

      - type: status

        status:

          - 404

          - 401

          - 200

          - 202

      # match the file upload capacitie in the phpinfo.php
```