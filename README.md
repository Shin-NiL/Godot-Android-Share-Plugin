[![Donate](https://img.shields.io/badge/Donate-PayPal-green.svg)](https://www.paypal.com/cgi-bin/webscr?cmd=_donations&business=3MJE3M4FMJYGN&lc=BR&item_name=Shin%2dNiL%27s%20Github&item_number=Github&currency_code=USD&bn=PP%2dDonationsBF%3abtn_donate_SM%2egif%3aNonHosted)

GodotShare 
==========
This is an Android share plugin for [Godot Game Engine](https://godotengine.org/) 3.2.2 or higher. With that you'll be able to share text and/or images in your apps.

\* For Godot < 3.2 or iOS support you can use the [old module](https://github.com/Shin-NiL/Godot-Share). 

![Image Sharing Screenshot](/media/screenshot.png "Image Sharing Screenshot")

How to use
----------

- Configure, install  and enable the "Android Custom Template" for your project, just follow the [official documentation](https://docs.godotengine.org/en/latest/getting_started/workflow/export/android_custom_build.html);
- go to the [releases tab](https://github.com/Shin-NiL/Godot-Android-Share-Plugin/releases), choose a version and download the respective _GodotSharePlugin-x.x.x.zip_ package;
- extract the zip content (_GodotShare.release.aar_ and _GodotShare.gad_ files) inside the ```res://android/plugins``` directory on your Godot project;
- on the Project -> Export -> Options, turn on the "Use Custom Build" and "Godot Share" on the "Plugins" field;

![Export options](/media/export.png "Export options")


**ATTENTION**: An important note is that the image you want to share must be saved on the ```"user://"``` virtual directory root to be accessible, you can use ```OS.get_user_data_dir()``` to get its absolute path (required by ```sharePic```). In the demo directory you'll find a working sample project where a screen capture is shared.


Donations
---------
Was this project useful for you? Wanna make a donation? These are the options:

### Paypal

My [Paypal donation link](https://www.paypal.com/cgi-bin/webscr?cmd=_donations&business=3MJE3M4FMJYGN&lc=BR&item_name=Shin%2dNiL%27s%20Github&item_number=Github&currency_code=USD&bn=PP%2dDonationsBF%3abtn_donate_SM%2egif%3aNonHosted)

### Brave browser

Even without spending any money you can still help me installing [Brave browser](https://brave.com/) using my [referral link](https://brave.com/shi012	). 
If you do so and keep using the browser, I'll receive some reward.

If you're already a Brave user, please consider donating some BATs ;) 


API Reference
-------------

The following methods are available:
```python
# Share text
# @param String title
# @param String subject
# @param String text
shareText(title, subject, text)

# Share image
# @param String image_abs_path The image location absolute path
# @param String title
# @param String subject
# @param String text
void sharePic(image_abs_path, title, subject, text)
```

