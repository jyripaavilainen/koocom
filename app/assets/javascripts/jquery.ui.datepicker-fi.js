/* Finnish initialisation for the jQuery UI date picker plugin. */
/* Written by Harri Kilpi� (harrikilpio@gmail.com). */

var jq = $.noConflict();

$(document).ready(function() {
    $.datepicker.regional['fi'] = {
                closeText: 'Sulje',
                prevText: '&laquo;Edellinen',
                nextText: 'Seuraava&raquo;',
                currentText: 'T&auml;n&auml;&auml;n',
        monthNames: ['Tammikuu','Helmikuu','Maaliskuu','Huhtikuu','Toukokuu','Kes&auml;kuu',
        'Hein&auml;kuu','Elokuu','Syyskuu','Lokakuu','Marraskuu','Joulukuu'],
        monthNamesShort: ['Tammi','Helmi','Maalis','Huhti','Touko','Kes&auml;',
        'Hein&auml;','Elo','Syys','Loka','Marras','Joulu'],
                dayNamesShort: ['Su','Ma','Ti','Ke','To','Pe','Su'],
                dayNames: ['Sunnuntai','Maanantai','Tiistai','Keskiviikko','Torstai','Perjantai','Lauantai'],
                dayNamesMin: ['SU','MA','TI','KE','TO','PE','LA'],
                weekHeader: 'Vk',
        dateFormat: 'dd.mm.yy',
                firstDay: 1,
                isRTL: false,
                showMonthAfterYear: false,
                yearSuffix: ''};
    $.datepicker.setDefaults($.datepicker.regional['fi']);
});