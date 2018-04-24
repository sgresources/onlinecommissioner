---
# vim: set ft=pug:
lang: pug
meta:
  title: >
    IM Freedom Workshop - Free Live Masterclass at Brisbane & GoldCoast -
    You've Registered
---

extends ../../templates/layouts/base
include ../../templates/mixins/columns
include ../../templates/mixins/header
include ../../templates/mixins/img
include ../../templates/mixins/productlink
include ../../templates/mixins/section

block body
  +header(
    logo='img/logo-online_commissioner_tran_wht-2x1.png'
    icon='graduation-cap'
    title='Live Workshop',
    background-color='info'
  )

  section.hero.is-info
    .hero-body
      .container
        +cols('centered')
          +col(7)
            +tt(size=1) Thank You for Registering!
            +st(size=3) Your place have been reserved for you
            .message.is-warning
              .message-header
                | You will receive an email with the download link shortly
              .message-body.
                On the rare occasion you have not received your confirmation
                email, please check your spam folder as a precaution. Please
                mark it "not spam" if you found the email in spam folder to
                receive future emails in your inbox

  +se
    +tt(spaced=true)
      | Before the event, grab your copy of the WiFi Millionaire eBook for
      | just $3
    +st(size=3) What you'll learn inside the eBook
    +cols
      +col('half')
        +co
          p.
            WiFi Millionaire clearly lays out your options for different home
            businesses, and gives you actionable tips and tools for getting
            more done (while having complete control over your schedule).
          p.
            By using these productivity tips, you’ll learn how to filter out
            distractions, and make more money in less time.
          +productLink.button.is-warning.is-medium.is-rounded(
            href=aff('wm_ebook_order')
          ).
            Get your copy now for only $3.00
      +col('half')
        +img(src=s('img/product-wifi_millionaire_01-1x1.jpg'))

  +se(background-color='light')
    .aspect-ratio.is-16by9
      iframe(
        src="https://www.youtube.com/embed/wJ7l7X4F6kM"
        frameborder="0"
        allow="autoplay; encrypted-media"
        allowfullscreen
      )

  +se
    +co
      p.
        You've made an incredibly smart decision to register for the Workshop.
        My promise to you is that you'll love it, and after attending, this
        whole 'online business thing' will make a lot more sense.
      p.
        You'll be given everything you need to start generating commissions
        online from the comfort of your own home.
      h3 Shocking Statistic
      p.
        Now, here is the potentially bad news...
      p.
        Did you know that after having done many of these around the world,
        I've discovered a shocking statistic. Less than 40% of the people who
        register for the Workshop actually show up!
      p.
        It's no wonder why most people who attempt to start an online business
        fail. The difference between those who do well from in internet
        marketing from those who don't, is their willingness to take action.
      p.
        So make a commitment to yourself right now that you're going to be one
        of the elite few who follow through and show up - after all, it's your
        future that we are talking about here.
      p.
        My team will give you the training you need to do well - but you must
        attend for them to do that. Please set yourself a reminder right now -
        here's the details for the sessions again...

  +se(background-color='light')
    +tt Event Details
    +cols
      +col('half')
        +co
          each loc, i in locations
            - var date = moment(loc.date)
            - var dstr = date.format('dddd, MMMM D, YYYY')
            p
              span.has-text-weight-bold #{dstr}
              br
              | 12:30pm / 6:00pm
              br
              | #{loc.name}
              br
              | #{loc.addr}
      +col('half')
        .aspect-ratio.is-4by3
          iframe(
            src='https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d453478.80065583123!2d152.7130057420838!3d-27.38186310944529!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6b91579aac93d233%3A0x402a35af3deaf40!2sBrisbane+QLD%2C+Australia!5e0!3m2!1sen!2smy!4v1524495389292'
            frameborder='0'
            style='border:0'
            allowfullscreen
          )

  +se
    +co
      p.
        Lastly - you're going to be getting some emails from me. Some will be
        reminders... but a lot of them will be tips and free training on how
        you can generate money online.
      p.
        Everything I teach you comes from my own experience. You'll get a lot
        of value out these emails.
      p.
        These emails will come from my email address #[a(href='mailto:'+email)= email]
      p.
        I highly recommend you add that email address to your contacts list -
        otherwise, they may end up in your spam folder.
      p.
        In fact, do me a favor and check your inbox right now - if the
        confirmation emails have landed in your spam folder, you'll want to
        clearly mark them as 'Not Spam' so it doesn't happen again.
      p Got a question? #[a(href=fb) Reach out to me in FB!]
      p Speak soon,
      +img(src=s('img/person-bakar_rahman_04-1x1.jpg') size='128x128').is-marginless
      p
        strong Bakar Rahman
        br
        | Founder of OnlineCommissioner.com

  include ../../templates/footer
