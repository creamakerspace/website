---
title: "Tap-to-Connect Wifi Coaster"
date: 2022-08-31
author: Tony Nowell
image : "/blog/nfc-wifi-coaster/images/nfc-wifi-coaster-013.jpg"
bg_image: "images/feature-bg.jpg"
categories: ["Projects"]
tags: ["nfc", "cnc"]
description: "Create a tap-to-connect NFC Wifi coaster"
draft: false
type: "post"
---

__A simple drink coaster that doubles as a way to share the Wifi password.__

If you find yourself giving out the Wifi password on a regular basis,
this project enables your guests to simply tap their phone on a drink coaster to connect to the Wifi.

At the core of this project is an inexpensive NFC tag. NFC, or Near Field Communication, is a proximity-based wireless standard. It is the technology behind tap-to-pay (Apple Pay or Google Pay) and Nintendo Switch Amiibos, and very similar to the technology behind key cards used to access an office building or hotel room.

For this project, we're going to embed an NFC tag in a simple coaster made of spare wood left over from another project, but you could embed the NFC tag into almost anything to create your own Tap-to-Connect object. In this project we'll use:

- 1 NFC tag ([Amazon](https://www.amazon.com/dp/B087M9FLM4/))
- 4.5" x 4.5" x 0.5" wood (or the desired size of your coaster - I actually used three 4.5" strips maple left over from another project)
- Genmitsu CNC 3018-PRO Router ([Amazon](https://www.amazon.com/Genmitsu-3018-PRO-Control-Engraving-300x180x45mm/dp/B07P6K9BL3/)) with a 3mm end mill bit.
- Free NFC Tools App ([Android](https://play.google.com/store/apps/details?id=com.wakdev.wdnfc&gl=US), [iPhone](https://apps.apple.com/us/app/nfc-tools/id1252962749))


### 1. Building the coaster


It's much easier if you just cut a single coaster-sized piece of wood, but I wanted to use up these 3 short strips of maple I had leftover after building a chessboard. And for lack of a biscuit joiner or similar, I painstakingly cut my own grooves with the table saw, wedged in some other scrap wood, glued, and clamped these pieces overnight. After a bit of sanding, it almost looks like a single piece of wood.


<div class="grid">
  <div class="col"><img src="images/nfc-wifi-coaster-001.jpg"></div>
  <div class="col"><img src="images/nfc-wifi-coaster-002.jpg"></div>
  <div class="col"><img src="images/nfc-wifi-coaster-003.jpg"></div>
</div>


### 2. Routing

On the bottom, I routed out a space for the NFC tag. I simply traced around the NFC tag and used a hand-held router to carve at a depth slightly thicker than the NFC tag. It's good to check at this point that your phone can reliably detect the NFC card (e.g. using the NFC Tools app) through the remaining thickness of the coaster. But we're not glueing it into place quite yet (since we're going to stain the wood).

For my coaster, the NFC tag will be visible on the bottom.  I prefer it that way when explaining how it works since part of Crea's mission is to demystify the magic of electronics, but you can certainly explore aesthetic ways to hide it.

<div class="grid">
  <div class="col"><img src="images/nfc-wifi-coaster-004.jpg"></div>
  <div class="col"><img src="images/nfc-wifi-coaster-005.jpg"></div>
  <div class="col"><img src="images/nfc-wifi-coaster-006.jpg"></div>
</div>

For the top, I wanted to incorporate a Wifi icon into the design, so I found an SVG image of a Wifi icon, uploaded it to [Easel](https://www.inventables.com/technologies/easel), and started the CNC engraving at a depth of ⅛". The routing did expose the grooves I used for joining, but this isn't a problem since I intended to fill it with epoxy.


<div class="grid">
  <div class="col"><img src="images/nfc-wifi-coaster-007.jpg"></div>
  <div class="col"><img src="images/nfc-wifi-coaster-008.jpg"></div>
  <div class="col"><img src="images/nfc-wifi-coaster-009.jpg"></div>
</div>


### 3. Stain and Epoxy

I love walnut, so I applied a walnut stain to the coaster. Then I mixed a pearl white resin with epoxy to fill the wifi logo. After letting it sit overnight, I finally glued the NFC tag in place.



<div class="grid">
  <div class="col"><img src="images/nfc-wifi-coaster-011.jpg"></div>
  <div class="col"><img src="images/nfc-wifi-coaster-012.jpg"></div>
  <div class="col"><img src="images/nfc-wifi-coaster-013.jpg"></div>
</div>

In hindsight, I think I'd have preferred a natural maple look (with a dark epoxy) more than the walnut stain, but it still turned out all right.


### NFC Programming

Programming NFC tags doesn't require writing any code. The free NFC Tools app will let you write data directly to the NFC tag. The process is pretty straight-forward:

- Open the NFC Tools app
- Under the "WRITE" tab, tap "Add a record"
- Select the "Wi-Fi network"
- Add the authentication settings for your Wifi network
- Tap "Write" and when prompted, tap your phone against the NFC card when prompted


<div class="grid">
  <div class="col"><img src="images/nfc-wifi-coaster-screen-001.jpg"></div>
  <div class="col"><img src="images/nfc-wifi-coaster-screen-002.jpg"></div>
  <div class="col"><img src="images/nfc-wifi-coaster-screen-003.jpg"></div>
  <div class="col"><img src="images/nfc-wifi-coaster-screen-004.jpg"></div>
</div>

That's it. Now you can tap a phone on the coaster to connect to your Wifi.

_Note: unfortunately [iOS Background NFC Tag Reading](https://learn.gototags.com/nfc/software/iphone/reading/background) doesn't yet support Wifi connect via NFC without other apps installed. I'll be revisiting this project shortly and incorporating a Wifi QR Code into the design to better accomodate iPhone users. That said, iPhone can react to website URLs, maps, or phone numbers on NFC tags - so there are plenty of variations on this project to explore._
