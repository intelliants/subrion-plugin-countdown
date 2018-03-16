{ia_add_media files='moment, datepicker'}
{ia_add_js}
    $(function(){
        $('input[name="v[countdown_start_date]"], input[name="v[countdown_end_date]"]')
            .wrap('<div class="input-group"></div>')
            .parent()
            .append('<span class="input-group-addon js-countdate-toggle"><i class="i-calendar"></i></span>');

        $('input[name="v[countdown_start_date]"], input[name="v[countdown_end_date]"]').datetimepicker(
            {
                format: 'YYYY-MM-DD HH:mm:ss',
                locale: intelli.config.lang,
                icons: {
                time: 'i-clock',
                date: 'i-calendar',
                up: 'i-chevron-up',
                down: 'i-chevron-down',
                previous: 'i-chevron-left',
                next: 'i-chevron-right',
                today: 'i-checkmark',
                clear: 'i-remove',
                close: 'i-remove-sign'
            }
        });

        $('body').on('click', '.js-countdate-toggle', function(e){
            e.preventDefault();

            $(this).prev().datetimepicker('show');
        });
    });
{/ia_add_js}