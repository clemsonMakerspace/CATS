$("#modal-login").iziModal({
    overlayClose: false,
    width: 600,
    overlayColor: 'rgba(0, 0, 0, 0.6)',
    transitionIn: 'bounceInDown',
    navigateCaption: true,
    navigateArrows: 'closeScreenEdge',
    onOpened: function() {
        //console.log('onOpened');
    },
    onClosed: function() {
        //console.log('onClosed');
    },
    onOpening: function(modal){
    }
});

$(document).on('click', '.trigger-custom', function (event) {
    event.preventDefault();
    $('#modal-login').iziModal('open');
});

$(document).on('click', '.trigger-logout', function (event) {
    event.preventDefault();
    $.ajax({
        url: 'query/logout.php',
        type: 'POST',
        dataType: 'json',
        success: function (data) {
            $("#modal-alert2").iziModal({
                title: 'Logging out',
                subtitle: 'Please wait to be redirected',
                icon: 'fa fa-power-off',
                headerColor: '#F66733',
                width: 600,
                timeout: 6000,
                timeoutProgressbar: true,
                transitionIn: 'fadeInDown',
                transitionOut: 'fadeOutDown',
                pauseOnHover: true,
                onClosed: function() {
                    window.location.href = data.redirect;
                }
            });
            $('#modal-alert2').iziModal('open');
        },
        error: function (jqXHR, textStatus, errorThrown) {
            console.log("Error, status = " + textStatus + ", " +
                "error thrown: " + errorThrown
            );
            console.log(jqXHR.responseText);
        }
    });
});

$(document).on('click', '#modal-login form .submit', function (event) {
    event.preventDefault();
    var form_data = $('#modal-login form').serialize();
    $.ajax({
        url: 'query/login.php',
        type: 'POST',
        data: form_data,
        dataType: 'json',
        success: function (data) {
            $('#modal-login').iziModal('close');
            console.log(form_data);
            if (data.status == false) {
                var $title = 'Error';
                var $icon = 'fa fa-close';
                var $bg = '#BD5B5B';
            } else if (data.status == true) {
                var $title = 'Success';
                var $icon = 'fa fa-check';
                var $bg = '#4CAF50';
            }
            $("#modal-alert2").iziModal({
                title: $title,
                subtitle: data.message,
                icon: $icon,
                headerColor: $bg,
                width: 600,
                timeout: 0,
                timeoutProgressbar: true,
                transitionIn: 'fadeInDown',
                transitionOut: 'fadeOutDown',
                pauseOnHover: true,
                onClosed: function() {
                    $('#modal-login').iziModal('open');
                    $('#modal-alert2').iziModal('destroy');
                    if(data.status == true){
                        window.location.href = data.redirect;
                    }
                }
            });
            $('#modal-alert2').iziModal('open');
        },
        error: function (jqXHR, textStatus, errorThrown) {
            console.log("Error, status = " + textStatus + ", " +
                "error thrown: " + errorThrown
            );
            console.log(jqXHR.responseText);
        }
    });
});

/**DATATABLES js */
$(document).ready(function() {
    var selected = [];

    $("#users").DataTable({
        "processing": true,
        "serverSide": true,
        "ajax": "query/users.php",
        "rowCallback": function( row, data ) {
            if ( $.inArray(data.DT_RowId, selected) !== -1 ) {
                $(row).addClass('selected');
            }
        },
        "aoColumns": [
            { "mData": "id" },
            { "mData": "username" },
            { "mData": "cuid" },
            { "mData": "fn" },
            { "mData": "ln" },
            { "mData": "major" },
            { "mData": "class" },
            { "mData": "auth1" },
            { "mData": "admin" }
        ]
    });

    $('#users tbody').on('click', 'tr', function () {
        var id = this.id;
        var index = $.inArray(id, selected);

        if ( index === -1 ) {
            selected.push( id );
        } else {
            selected.splice( index, 1 );
        }

        $(this).toggleClass('selected');
    } );
} );
