$(document).ready(function () {
    $('.flickr-photos-list').jflickrfeed({
        limit: 9,
        qstrings: {
            id: '71865026@N00'
        },
        itemTemplate: '<li><a href="{{image_b}}"><img src="{{image_s}}" alt="{{title}}" /></a></li>'
    });
    $().UItoTop({ easingType: 'easeOutQuart' });
});
