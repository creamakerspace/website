+++
title = "Event Calendar"
template = "page.html"
[extra]
banner = "/images/woodwork-3.jpg"
+++


<div class="modal" id="event-modal">
  <div class="modal-background"></div>
  <div class="modal-content">
      <div class="box" id="event-details">
          <iframe id="event-iframe" src="javascript:void(0)" frameborder="0" scrolling="yes" seamless="seamless" style="display:block;border:none;width:100%;height:900px;"></iframe>
      </div>
  </div>
  <button class="modal-close is-large" aria-label="close"></button>
</div>

<!-- https://github.com/vkurko/calendar -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@event-calendar/build@1.5.1/event-calendar.min.css">
<script src="https://cdn.jsdelivr.net/npm/@event-calendar/build@1.5.1/event-calendar.min.js"></script>
<div id="calendar"></div>


<p class="pt-5 is-size-7">Calendar only shows upcoming events.</p>

<script>
document.addEventListener('DOMContentLoaded', () => {
  // Functions to open and close a modal
  function openModal($el) {
    $el.classList.add('is-active');
  }

  function closeModal($el) {
    $el.classList.remove('is-active');
  }

  // Add a click event on various child elements to close the parent modal
  (document.querySelectorAll('.modal-background, .modal-close, .modal-card-head .delete, .modal-card-foot .button') || []).forEach(($close) => {
    const $target = $close.closest('.modal');
    $close.addEventListener('click', () => {
      closeModal($target);
      let el = document.getElementById('event-iframe');
      el.src = 'about:blank'
    });
  });

  // Add a keyboard event to close all modals
  document.addEventListener('keydown', (event) => {
    if (event.code === 'Escape') {
      closeAllModals();
    }
  });

    let ec = new EventCalendar(document.getElementById('calendar'), {
        view: 'timeGridWeek',
        height: '600px',
        headerToolbar: {
            start: 'prev,next today',
            center: 'title',
            end: 'dayGridMonth,timeGridWeek,listWeek'
        },    
        nowIndicator: true,
        scrollTime: "11:30:00",
        displayEventEnd: false,
        // eventContent: (info) => info.event.title,
        eventClick: (info) => {
            let el = document.getElementById('event-iframe');
            el.src = `https://bookwhen.com/creamakerspace/iframe/e/${info.event.id}`;
            document.getElementById('event-modal').classList.add('is-active');
        },
    });

  const username = "dtrivw1rbl4o9lp0yqyc868oqg7s";
  let events = [];
  fetch('https://api.bookwhen.com/v2/events', {
    headers: {
        'Authorization': 'Basic ' + btoa(username + ":")
    }
  }).then(function (response) {
        if (response.ok) {
            return response.json();
        }
        return Promise.reject(response);
    }).then(function (response) {
        // This is the JSON from our response
        console.log(response);
        events = response.data.map((evt) => {
            return {id: evt.id, title: evt.attributes.title, start: evt.attributes.start_at, end: evt.attributes.end_at }
        })
        console.log(events);
        ec.setOption('events', events);
    }).catch(function (err) {
        console.warn('Failed to fetch event data.', err);
    });




});
</script>
