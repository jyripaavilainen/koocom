!function(){}.call(this),function(){}.call(this);// Copyright (c) 2010 Max Wheeler. Licensed under the [WTFPL](http://sam.zoy.org/wtfpl/)
var $=jQuery;jQuery(document).ready(function(){$.placeHeld=function(e,a){var l=this;l.$el=$(e),l.el=e,l.$el.data("placeHeld",l),l.placeholderText=l.$el.attr("placeholder"),l.init=function(){l.options=$.extend({},$.placeHeld.defaultOptions,a),l.$el.bind("blur",l.holdPlace).bind("focus",l.releasePlace).trigger("blur"),l.$el.parents("form").bind("submit",l.clearPlace)},l.holdPlace=function(){var e=l.$el.val();e||l.$el.val(l.placeholderText).addClass(l.options.className)},l.releasePlace=function(){var e=l.$el.val();e==l.placeholderText&&l.$el.val("").removeClass(l.options.className)},l.clearPlace=function(){var e=l.$el.val();e==l.placeholderText&&l.$el.hasClass(l.options.className)&&l.$el.val("")},l.init()},$.placeHeld.defaultOptions={className:"placeheld"},$.fn.placeHeld=function(e){return"placeholder"in $("<input>")[0]?void 0:this.each(function(){new $.placeHeld(this,e)})}});var $=jQuery;$(document).ready(function(){$.datepicker.regional.fi={closeText:"Sulje",prevText:"&laquo;Edellinen",nextText:"Seuraava&raquo;",currentText:"T&auml;n&auml;&auml;n",monthNames:["Tammikuu","Helmikuu","Maaliskuu","Huhtikuu","Toukokuu","Kes&auml;kuu","Hein&auml;kuu","Elokuu","Syyskuu","Lokakuu","Marraskuu","Joulukuu"],monthNamesShort:["Tammi","Helmi","Maalis","Huhti","Touko","Kes&auml;","Hein&auml;","Elo","Syys","Loka","Marras","Joulu"],dayNamesShort:["Su","Ma","Ti","Ke","To","Pe","Su"],dayNames:["Sunnuntai","Maanantai","Tiistai","Keskiviikko","Torstai","Perjantai","Lauantai"],dayNamesMin:["SU","MA","TI","KE","TO","PE","LA"],weekHeader:"Vk",dateFormat:"dd.mm.yy",firstDay:1,isRTL:!1,showMonthAfterYear:!1,yearSuffix:""},$.datepicker.setDefaults($.datepicker.regional.fi)});var $=jQuery,jq=$.noConflict();$(document).ready(function(){$(".datepicker").datepicker({minDate:new Date,dateFormat:"dd.mm.yy",firstDay:1},$.datepicker.regional.fi)}),$(document).ready(function(){$(".placeholder").placeHeld()});