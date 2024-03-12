+++
title = "Event Calendar"
template = "page.html"
[extra]
banner = "/images/woodwork-3.jpg"
stylesheet = "https://cdn.jsdelivr.net/npm/@event-calendar/build@1.5.1/event-calendar.min.css"

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
<script src="https://cdn.jsdelivr.net/npm/@event-calendar/build@1.5.1/event-calendar.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/dayjs"></script>
<div id="calendar"></div>


<p class="pt-5 is-size-7">Calendar only shows upcoming events.</p>

<script>
document.addEventListener('DOMContentLoaded', () => {
    // Functions to open and close a modal
    let modal = document.getElementById('event-modal')
    function openModal(iFrameSrc) {
        let el = document.getElementById('event-iframe');
        el.src = iFrameSrc;
        modal.classList.add('is-active');
    }
    function closeModal($el) {
        modal.classList.remove('is-active');
        let el = document.getElementById('event-iframe');
        el.src = 'about:blank'
    }

    // Add a click event on various child elements to close the parent modal
    (document.querySelectorAll('.modal-background, .modal-close') || []).forEach(($close) => {
        $close.addEventListener('click', () => {
            closeModal();
        });
    });

    // Add a keyboard event to close the modal
    document.addEventListener('keydown', (event) => {
        if (event.code === 'Escape') {
            closeModal();
        }
    });


    function getMondays() {
        let monday = dayjs().day(1);
        let mondays = [monday.format('YYYY-MM-DD')];

        for (let i = 0; i < 20; i++) {
            monday = monday.add(7, 'day');
            mondays.push(monday.format('YYYY-MM-DD'));
        }

        return mondays;
    }


    // Returns array of Events for days we're close
    // This should match the text on: /faq.md#what-days-are-you-open
    function closedEvents() {
        let mondays = getMondays();
        let closed = mondays.map((monday) => {
            return {
                start: monday,
                end: monday,
                allDay: true,
                backgroundColor: "#aaa",
                title: "Closed",
            };
        });

        let vacation = [
            { start: '2023-11-23', title: 'Closed (Thanksgiving)' },
            { start: '2023-12-24', title: 'Closed (Christmas Eve)' },
            { start: '2023-12-31', title: 'Closed (New Year\'s Eve)' },
            { start: '2024-03-31', title: 'Closed (Easter)' },
            { start: '2024-04-02', end: '2024-04-09', title: 'Closed (Founder Vacation)' }
        ];
        closed = vacation.map((d) => {
            return {
                start: d.start,
                end: dayjs(d.end || d.start).add(1, 'day').format('YYYY-MM-DD'),
                allDay: true,
                title: d.title,
                backgroundColor: "#aaa",
            }
        }).concat(closed);

        return closed;
    }


    // Configure EventCalendar; initializes with empty event list
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
        eventBackgroundColor: "#006494",
        // highlightedDates: ["2023-07-31"],
        eventClick: (info) => {
            if(info.event.extendedProps.iframe) {
                openModal(info.event.extendedProps.iframe);
            }
        },
        events: closedEvents()
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
        events = response.data.map((evt) => {
            return {
                id: evt.id,
                title: evt.attributes.title,
                start: evt.attributes.start_at,
                end: evt.attributes.end_at,
                extendedProps: { iframe: `https://bookwhen.com/creamakerspace/iframe/e/${evt.id}` }
            }
        })
        ec.setOption('events', ec.getEvents().concat(events));
    }).catch(function (err) {
        console.warn('Failed to fetch event data.', err);
    });

});
</script>
