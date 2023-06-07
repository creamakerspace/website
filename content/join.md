+++
title = "Join Crea Community"
template = "page.html"
[extra]
banner = "/images/woodwork-3.jpg"
+++


{% message(header="What to expect") %}
We just launched!
<br><br>
Once we get into a cadence of things, we'll run an Open House every Tuesday night from 6-9pm, open to the public for free with no membership or day pass required.
<br><br>
But as a brand new makerspace, we are still working to grow that initial community. For now, our focus is giving tours and training people on equipment. Simply stop by during our <a href="/faq#what-days-are-you-open">Open Hours</a> for a brief tour.
{% end %}


<!--
### Open House Tuesdays

<span class="has-text-danger has-text-weight-bold">Every Tuesday, from 6pm to 9pm</span>, Crea is open to the public for free (no membership or day pass required).

If you've never visited Crea before, we recommend visiting on Open House night.

{% message(header="What to expect") %}
    <p>When you arrive, ask for Tony (usually near the entrance). We'll give you a brief tour, an overview of the makerspace rules, and answer any questions you have. After the tour, if you want to hang around and get to know our maker community or work on your own project in the space, we'll simply ask you to sign our liability waiver (as required by our insurance policy).</p>
    <p>While accessing the space during open house is free, some equipment still has a machine time cost (except for members with unlimited machine time) or a cost for staff to operate the equipment on your behalf. That said, we encourage you to disuss your project with members; you <i>might</i> even find a member who wants to help out.</p>
{% end %}
-->

### Membership Plans

{% message(header="Launch Special", class="is-info") %}
    <p>To celebrate the launch, for the month of June, Starter and Maker memberships subscriptions will get the annual pricing discount (for up to 1 year).</p>
    <p>Also, through June 16, we will be providing equipment certification classes to members for free! (Class availability is limited. Inquire in-person for details.)</p>
{% end %}

If you want to be a regular part of our maker community, decide which membership is right for you.

<script>
document.addEventListener('DOMContentLoaded', () => {
    const annualToggle = document.getElementById('annualToggle');
    // browser refresh can leave toggle in previous state, requiring refresh
    annualToggle.checked = false;

    function updatePriceView() {
        const $priceEls = document.querySelectorAll('.plan-price');
        // console.log(el);
        $priceEls.forEach(el => {
            if(annualToggle.checked) {
                el.classList.remove('is-monthly');
            } else {
                el.classList.add('is-monthly');
            }
        });        
    }

    annualToggle.addEventListener('change', updatePriceView);
    updatePriceView()
});
</script>

<div class="field has-text-centered p-5">
  <input id="annualToggle" type="checkbox" name="annualToggle" class="switch is-rtl">
  <label for="annualToggle">Show prices when paid annually</label>
</div>

<div class="pricing-table pb-5">
    <div class="pricing-plan">
        <div class="plan-header is-uppercase">Starter</div>
        <div class="plan-price">
            <span class="plan-price-amount">
                <span class="plan-price-currency">$</span><span class="annual">55</span><span class="monthly">55</span></span>/month
            <div>
                <span class="monthly has-text-weight-bold has-text-info">Launch Special: Normally $65/mo</span>
                <span class="annual">($660/year)</span>
            </div>
        </div>
        <p class="px-2 has-text-centered is-italic">Perfect for casual tinkering</p>
        <div class="plan-items">
            <div class="plan-item">Access to space during open hours</div>
            <div class="plan-item">No access to woodshop</div>
            <div class="plan-item">10% discount on classes</div>
            <div class="plan-item">Limited machine time for:
                <ul>
                    <li>3D printer: 40 hrs/mo</li>
                    <li>Laser cutter: 4 hrs/mo</li>
                </ul>
                <p>After these limits, <a href="/faq#what-is-machine-time-cost">machine time costs</a> apply.<br>Upgrade to Maker Plan for unlimited machine time.</p>
            </div>
            <div class="plan-item">Use of tools and equipment
                <ul>
                    <li>3D printer</li>
                    <li>Laser cutter/engraver</li>
                    <li>Electronics/robotics lab</li>
                    <li>Sublimation printing (e.g. t-shirts)</li>
                    <li><a href="/equipment">and more...</a></li>
                </ul>
            </div>
        </div>
        <div class="plan-footer">
            <a href="https://buy.stripe.com/28o01mdJScjmbo48ww" class="button is-fullwidth is-uppercase" target="_blank">
                Choose Starter
            </a>
        </div>
    </div>
    <div class="pricing-plan is-primary is-active">
        <div class="plan-header is-uppercase">Maker</div>
        <div class="plan-price">
            <span class="plan-price-amount">
                <span class="plan-price-currency">$</span><span class="annual">100</span><span class="monthly">100</span></span>/month
            <div>
                <span class="monthly has-text-weight-bold has-text-info">Launch Special: Normally $115/mo</span>
                <span class="annual">($1,200/year)</span>
            </div>
        </div>
        <p class="px-2 has-text-centered is-italic">Perfect for hobbyists and DIYers</p>
        <div class="plan-items">
            <div class="plan-item">Access to space during open hours</div>
            <div class="plan-item has-text-primary has-text-weight-bold">Access to woodshop</div>
            <div class="plan-item">20% discount on classes</div>
            <div class="plan-item has-text-primary has-text-weight-bold">Unlimited machine time</div>
            <div class="plan-item">50% off day pass for 1 guest per day</div>
            <div class="plan-item">10% discount on membership for family</div>
            <div class="plan-item">Use of tools and equipment
                <ul>
                    <li>3D printer</li>
                    <li>Laser cutter/engraver</li>
                    <li>Electronics/robotics lab</li>
                    <li>Sublimation printing (e.g. t-shirts)</li>
                    <li>CNC router</li>
                    <li>Table saw, bandsaw, planer, etc...</li>
                    <li><a href="/equipment">and more...</a></li>
                </ul>
            </div>
        </div>
        <div class="plan-footer">
            <a href="https://buy.stripe.com/6oE01m35eabe0JqcMN" class="button is-fullwidth is-uppercase">
                Choose Maker
            </a>
        </div>
    </div>
    <div class="pricing-plan">
        <div class="plan-header is-uppercase">Pro</div>
        <div class="plan-price">
            <span class="plan-price-amount">
                <span class="plan-price-currency">$</span><span class="annual">225</span><span class="monthly">250</span></span>/month
            <div class="annual">($2,700/year)</div>
        </div>
        <p class="px-2 has-text-centered is-italic">Perfect for inventors and entrepreneurs</p>
        <div class="plan-items">
            <div class="plan-item has-text-primary has-text-weight-bold">Access to space 24/7</div>
            <div class="plan-item has-text-primary has-text-weight-bold">Access to woodshop</div>
            <div class="plan-item">20% discount on classes</div>
            <div class="plan-item has-text-primary has-text-weight-bold">Unlimited machine time</div>
            <div class="plan-item">1 free guest per day during open hours</div>
            <div class="plan-item">20% discount on membership for family</div>
            <div class="plan-item">Promote your business on Crea's website</div>
            <div class="plan-item">Use of tools and equipment
                <ul>
                    <li>3D printer</li>
                    <li>Laser cutter/engraver</li>
                    <li>Electronics/robotics lab</li>
                    <li>Sublimation printing (e.g. t-shirts)</li>
                    <li>CNC router</li>
                    <li>Table saw, bandsaw, planer, etc...</li>
                    <li><a href="/equipment">and more...</a></li>
                </ul>
            </div>
        </div>
        <div class="plan-footer">
            <a href="#" data-email="c3VwcG9ydEBjcmVhbWFrZXJzcGFjZS5jb20/c3ViamVjdD1Qcm8gTWVtYmVyc2hpcCBJbnF1aXJ5"
               data-email-html="Contact Us"
               class="button is-fullwidth is-uppercase">
                Contact Us
            </a>
        </div>
    </div>
</div>

<div class="is-size-7 pt-5">

Disclaimers:
- Some equipment requires completion of training class.
- Some equipment has a fee based on machine time usage except for members on plans with unlimited machine time.
- Unlimited usage is still subject to reasonable usage and sharing of the equipment.
- 24/7 access for Pro members requires a background check.
- Family discounts limited to single billing account.
- All plans default to automatic renewal, but you can cancel or change your plan at any time with no hassle.

</div>

### Day Pass

We emphasize membership because our priority is building an active community of makers. That said, we recognize that some may have interest in using the space infrequently. For one-off utilization of the space (outside of Open House night), we charge a fixed rate of <span class="has-text-danger">$20 for the day</span>.

Some equipment still requires completion of a training class (or paying for an operator). And some equipment has a [machine time cost](/faq/#what-is-machine-time-cost).


<!--
### Sponsorships

If you're interested in making an investment in the maker community near Renton, our first suggestion is to simply sponsor a membership for someone you know. Beyond that, we also make it possible to purchase a sponsorship in 3 or 12 month bundles:

Sponsor a "Maker" membership:

<button class="button is-primary is-outlined">3 months: $345</button>
<button class="button is-primary is-outlined">1 year: $1,200</button>

We'll announce any sponsorship availability at events (e.g. Open House Tuesdays) and in our subsequent newsletter (sign up <a href="{{ newsletter_url() }}">here</a>). Applicants will be selected based on need and intended use.
-->