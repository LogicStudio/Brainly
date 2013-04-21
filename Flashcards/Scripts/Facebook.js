function InitialiseFacebook(appId) {

    window.fbAsyncInit = function () {
        FB.init({
            appId: appId, // App ID
            status: true, // check login status
            cookie: true, // enable cookies to allow the server to access the session
            xfbml: true  // parse XFBML
        });

        FB.Event.subscribe('xfbml.render',
            function (response) {

                var iframe = $('.fb-like iframe');
                var span = $('.fb-like span');

                iframe.css('position', 'relative');
                iframe.remove(); 
                $('.fb-like').append(iframe);
            });
    };

    (function (d) {
        var js, id = 'facebook-jssdk', ref = d.getElementsByTagName('script')[0];
        if (d.getElementById(id)) {
            return;
        }
        js = d.createElement('script');
        js.id = id;
        js.async = true;
        js.src = "//connect.facebook.net/en_US/all.js";
        ref.parentNode.insertBefore(js, ref);
    } (document));
}