+++
title = "Crea Equipment"
sort_by = "weight"

## Weights
# 1-199: massive equipment (>$10,000)
# 200-999: major equipment (>$1,000)
# 1000-9999: minor equipment (>$200)
# 5000+: trivial equipment (<$200)
+++

Crea provides access to a variety of equipment:


<div class="columns">

{% card_col(header="Woodshop") %}
A full woodshop to accomodate a large range of woodworking projects.

 - Table saw
 - CNC router
 - Benchtop planer
 - Woodturning lathe
 - Miter saw 
 - Circular saw
 - Orbital sander
 - Plunge router
 - [Various hand & power tools](/faq#what-hand-power-tools-are-available)
{% end %}

 
{% card_col(header="Fabrication Lab") %}
Turn your ideas into physical creations.

 - Laser cutter/engraver
 - 3D printer
 - Vinyl cutter (Cricut)
 - Sublimation printer
 - Ink jet printer
 - Heat press
 - Pyrography (wood burning) kit
 - [Various hand & power tools](/faq#what-hand-power-tools-are-available)
{% end %}



{% card_col(header="Electronics Lab") %}
Make or repair things that move, light up, make noise, or otherwise need power. 

 - Soldering station
 - Hot air rework station
 - Logic analyzer
 - Digital oscilloscope
 - Arduino, Micro:bit, Raspberry Pi
 - Sensors & circuit components
 - Variable DC power supply
 - Multimeter
 - Wires and wire tools
{% end %}

</div>


{% message(header="Missing something?" class="is-info") %}
The equipment available at Crea will evolve based on community interest and feedback, so feel free to suggest additional equipment.
{% end %}

## Standard Operating Procedures (SOP)

For the equipment below, we share the specifications and SOP documents online. We also have a printed copies available in the space. 

<div class="tabs">
  <ul>
    <li class="is-active"><a data-filter="">All Equipment</a></li>
    <li><a data-filter="cnc">CNC Equipment</a></li>
    <li><a data-filter="woodshop">Woodshop</a></li>
    <li><a data-filter="fablab">Fabrication Lab</a></li>
    <li><a data-filter="elab">Electronics Lab</a></li>
  </ul>
</div>

<script>
document.addEventListener('DOMContentLoaded', () => {
    const $filterButtons = document.querySelectorAll('[data-filter]');
    $filterButtons.forEach(btn => {
    	btn.addEventListener('click', function() {
    		const activeButtons = document.querySelectorAll('.is-active > [data-filter]');
    		activeButtons.forEach(activeBtn => { activeBtn.parentElement.classList.remove('is-active') });
    		btn.parentElement.classList.add('is-active');
    		const filter = btn.dataset.filter;
    		console.log('filter: ', filter);
    		const $equipEls = document.querySelectorAll('.card[data-tags]');
    		$equipEls.forEach(equip => {
    			if(equip.dataset?.tags?.includes(filter)) {
    				console.log(equip.dataset.tags);
    				equip.parentElement.style.display = '';
    			} else {
	    			equip.parentElement.style.display = 'none';
    			}
    		});
    	});

    });
});
</script>