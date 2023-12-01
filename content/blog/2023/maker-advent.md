+++
title = "Renton Maker Advent"
date = "2023-11-29"
template = "page.html"
description = "Our Advent calendar features a maker challenge for every day of Advent leading up to Christmas."
path = "/maker-advent"

[extra]
image = "/images/2023/candles.webp"
banner = "/images/2023/candles-banner.webp"
+++

<div class="is-size-3">

In collaboration with [Wyldwood Creative](https://www.wyldwoodcreative.com/), we're kicking off the holiday season with a Maker Advent Calendar.

Each day leading up to Christmas, we'll be reavealing a maker challenge. Complete the challenge, and post a photo of your creation using <b>#makeradvent</b> and tagging <b>@creamakerspace</b> for a chance to win our maker gift basket raffle.

Follow us on [Instagram](https://www.instagram.com/CreaMakerspace/) or [Facebook](https://www.facebook.com/CreaMakerspace/) for the daily reveals.

</div>

<link href="https://fonts.cdnfonts.com/css/bebas-neue" rel="stylesheet">
<style>
.flip-card {
  width: 260px;
  height: 260px;
  display: inline-block;
  font-family: 'Bebas Neue', sans-serif;
  font-size: 1.5em;
  font-weight: bold;
}
.flip-card-front, .flip-card-front img, .flip-card-back {
  border-radius: 25px;

}
</style>


<script src="https://cdn.jsdelivr.net/npm/dayjs"></script>
<div id="calendar" style="text-align:center;"></div>

<small>Visit Crea Makerspace or [Wyldwood Creative](https://www.wyldwoodcreative.com/) for a sneak peek of upcoming challenges from the Advent calendar hanging on the wall. :-)</small>

### The Raffle

<div class="columns">
<div class="column">

Anybody can make, but to win the raffle:

- Each completed challenge is 1 raffle entry.
- Must post a photo of your completed challenge on Instagram or Facebook.
- Must tag <b>@creamakerspace</b> and use <b>#makeradvent</b>
- Must live or work in Renton or within 5 miles of Renton.
- Must be something you made during December 2023 (honor system).
- Must not use the same photo or project for multiple challenges.
- Limit: 1 raffle entry per day per person.

The raffle will be held on December 26th.

</div>
<div class="column">

Raffle winner will receive a 1 month of [makerspace membership](/join) and a variety of materials and kits from Crea Makerspace and [Wyldwood Creative](https://www.wyldwoodcreative.com/) to make even more amazing things.

![Maker Advent Prize](/images/2023/advent/maker-kit.webp)

</div>
</div>

### Open Workshop

On Tuesdays at 6pm during Advent, Crea Makerspace will host an open workshop for you to work on your projects. During these workshops, we'll happpily assist with making and customizing for free, including custom laser engraving and helping make cuts for any wood projects. Please sign up [here](https://bookwhen.com/creamakerspace?tags=free) to help us plan.

<script>
const params = new Proxy(new URLSearchParams(window.location.search), {
  get: (searchParams, prop) => searchParams.get(prop),
});

document.addEventListener('DOMContentLoaded', () => {
    let challenges = [
        { title: 'Textile Treasures', description: 'Get crafty with cloth, yarn, thread, or fabric! Create something amazing. 🧵✨' },
        { title: 'Candle Holder', description: 'Ready the advent candles, and craft a unique candle holder to light up your space. 🕯️🎄' },
        { title: 'With a Friend', description: 'Craft with a buddy! Two heads are better than one. 👯‍♂️🎨' },
        { title: 'Delightful Drinks', description: 'Mix, sip, and enjoy! Create a delicious holiday drink. 🍹🎅' },
        { title: 'Holiday Decorations', description: 'Deck the halls! Craft unique holiday decorations. 🌟🎀' },
        { title: 'Press & Impress', description: 'Heat things up! Use a heat press for creative magic. 🔥🎁' },
        { title: 'Light It Up', description: 'Light up your celebrations! Craft something that glows. 💡✨' },
        { title: 'Working with Wood', description: 'Embrace nature! Craft with wood for a natural touch. 🌲🛠️' },
        { title: 'Game Night', description: 'Game time! Make your own game pieces or accessories. 🎲🎨' },
        { title: 'With Family', description: 'Family crafting! Make something special with loved ones. 👨‍👩‍👧‍👦✨' },
        { title: 'Bon Appétit Baking', description: 'Bake and enjoy! Whip up something delightful to treat yourself. 🍰🎁' },
        { title: 'Food Fixtures', description: 'Serve it up! Create a stylish container or stand for your holiday treats. 🍬🍪' },
        { title: 'Laser Precision', description: 'Engrave something unique using a laser cutter. ✂️🔮' },
        { title: 'Audible Artistry', description: 'Add a musical touch! Create something that incorporates sound. 🎶🎨' },
        { title: 'Material Swap', description: 'Give and receive! Make something using materials you obtain from a material exchange. 🛠️🔄' },
        { title: 'Creature Comforts', description: 'Pet-friendly crafting! Craft something for your furry friends or wildlife. 🐾🌳' },
        { title: 'With an Elder', description: 'Share the joy! Spend time with a senior and create something special. 👵👴🎨' },
        { title: 'Candy Crafting', description: 'Sweet treats! Craft some candy and maybe share a taste with us. 🍭🤤' },
        { title: 'Reader\'s Delight', description: 'Craft something for the literature enthusiast in your life. 📚🎁' },
        { title: '3D Printing', description: 'Print in 3D! Bring your ideas to life with a 3D printer. 🖨️🌐' },
        { title: 'Make it Move', description: 'Get moving! Craft something that adds a touch of motion. 🔄🎨' },
        { title: 'Recycled Material', description: 'RecycleMake something of recycled or repurposed material. 🔄✨' },
        { title: 'Secret Storage', description: 'Crafted concealment! Hide something in plain sight with your clever creation. 🕵️‍♀️👀' },
        { title: 'With a Child', description: 'Advent points to a child being born. Finish Advent by making something with a child. 🎈👶✨' },
        { title: 'Memories', description: 'Merry Christmas. May your day be filled with joyful memories. 🎄🎁🎊' }
    ];

    function makeCalendar() {
      // Function to create a HTML block
      function createBlock(item, index) {
          let img, back, opacity;
          if(index < daysToReveal) {
            img = `<img src="/images/2023/advent/challenge-${index+1}.webp">`
            back = `<h3>${item.title}</h3><p>${item.description}</p>`
            opacity = 1;
          } else {
            img = `<img src="/images/2023/advent/blank-${index+1}.webp">`
            if(index === daysToReveal) {
              back = `<h3>Coming Soon</h3><p>This challenge will be revealed <span id="countdown">on Dec ${index+1}</span></p>`
            } else {
              back = `<h3>Coming Soon</h3><p>This challenge will be revealed on Dec ${index+1}</p>`
            }
            opacity = 0.25;
          }

          return `
              <div class="flip-card"  style="opacity: ${opacity}">
                  <div class="flip-card-inner">
                      <div class="flip-card-front">
                          ${img}
                      </div>
                      <div class="flip-card-back p-3 pt-6">
                          ${back}
                      </div>
                  </div>
              </div>`;
      }

      function updateCountDown() {
        // Calculate countdown until next reveal
        let until = dayjs('2023-12-01').add(daysToReveal, 'day')
        let countdown = (until - dayjs()) / 1000;
        if(countdown < 0) {
          updateCalendar();
          updateCountDown();
          return;
        }

        let countdownDays = Math.floor(countdown / (24 * 60 * 60))
        let countdownHrs = Math.floor(countdown / (60 * 60) % 24)
        let countdownMins = Math.floor(countdown / 60 % 60)
        let countdownSecs = Math.floor(countdown % 60)

        let parts = [];
        if(countdownDays > 1) { parts.push(`${countdownDays} days`) }
        else if(countdownDays === 1) { parts.push('1 day') }
        if(countdownHrs > 1) { parts.push(`${countdownHrs} hours`) }
        else if(countdownHrs === 1) { parts.push('1 hour') }
        if(countdownMins > 1) { parts.push(`${countdownMins} minutes`) }
        else if(countdownMins ===1) { parts.push('1 minute') }
        if(parts.length === 0) {
          parts.push('less than 1 minute')
        }
        let countdownFriendly = 'in ' + parts.join(', ')
        document.getElementById('countdown').innerHTML = countdownFriendly;
      }

      let today = dayjs()
      let daysToReveal = 0;

      function updateCalendar() {
        // Calculate how many days to reveal
        let today = dayjs()
        if(params.reveal) {
            daysToReveal = +params.reveal;
        } else {
            let showFutureDays = 0;
            if(params.showfuture) {
              showFutureDays = +params.showfuture;
            }
            daysToReveal = Math.max(0, Math.ceil((today - dayjs('2023-12-01')) / (24 * 60 * 60 * 1000)) + showFutureDays)
            if(params.peek) {
              daysToReveal += 1
            }
        }

        // Render the calendar
        let blocks = challenges.map(createBlock).join("\n");
        document.getElementById('calendar').innerHTML = blocks;
      }

      updateCalendar()
      updateCountDown()
      setInterval(updateCountDown, 15000)
    }

    makeCalendar()
});
</script>