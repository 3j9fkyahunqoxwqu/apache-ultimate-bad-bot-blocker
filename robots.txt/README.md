# Robots.txt Directives ONLY for People unable to use this Bot Blocker
[![gitcheese.com](https://api.gitcheese.com/v1/projects/bc50574f-b6dc-4f08-80d4-f6ba5baf0d43/badges)](https://www.gitcheese.com/app/#/projects/bc50574f-b6dc-4f08-80d4-f6ba5baf0d43/pledges/create)
## DO NOT use this on any of your sites if you are running the Bad Bot Blocker

The robots.txt file residing in this directory can be used to ADD onto your existing robots.txt file by placing this after anything you already have in your robots.txt file.

## Do NOT make this file the only contents of your robots.txt file !!!

##### 1. Click on the robots.txt file in this directory
##### 2. Then click on the button that says RAW, this will give you clear unformatted code
##### 3. Then copy those contents to paste into your robots.txt file

If your existing robots.txt file looks like this:

    User-agent: *
    Allow: /wp-admin/admin-ajax.php

Then your new file will look like this:

    User-agent: *
    Allow: /wp-admin/admin-ajax.php
    User-agent: Acunetix
    Disallow:/
    User-agent: FHscan
    Disallow:/
    User-agent: masscan
    Disallow:/
    ........ rest of file contents

# You use this at your own risk

This will only help stop some bad bots from gaining access to your site
this certainly does not provide nearly as much protection as the full
Apache Bad Bot Blocker

If this helped you [You can buy me a beer](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=TNCNMH8QVM78J):beer: or send some cheese for my mouse [![gitcheese.com](https://api.gitcheese.com/v1/projects/bc50574f-b6dc-4f08-80d4-f6ba5baf0d43/badges)](https://www.gitcheese.com/app/#/projects/bc50574f-b6dc-4f08-80d4-f6ba5baf0d43/pledges/create)