$ ->
  $('.email-container form').submit( ->
      submitedEmail = $('#email').val()
      validation = /(.+)@(.+){2,}\.(.+){2,}/
      if (validation.test(submitedEmail))        
        $.ajax(
          url: '/submit_email'
          type: 'POST'
          data: { email: submitedEmail }
          success: ->
            $('#email, .email-container h3, .btn').hide()
            $('.email-container h2').after('<h3 class="thank-you">Thanks for Signing Up. We will be in touch soon!</h3>')
        )
      else
        $('#email').css({ 'border-color': '#ff3333' })
        $('#email-error').removeClass('hidden')
      return false
    )