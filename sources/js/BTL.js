$(document).ready(function(){
    var today = new Date();
    $('#text2').datepicker({
        dateFormat: 'yy-mm-dd',
        autoclose: true,
        todayBtn: true,
        startDate : today
    }).on('changeDate', function(ev){
        $('#text3').datepicker('setStartDate', ev.date);
    });

    $('#text3').datepicker({
        dateFormat: 'yy-mm-dd',
        autoclose: true,
        todayBtn: true,
        startDate : today
    }).on('changeDate', function(ev){
        $('#text2').datepicker('setEndDate', ev.date);
    });
});