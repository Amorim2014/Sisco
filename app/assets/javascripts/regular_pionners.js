// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
$(document).ready(function(){	
    $('.datepicker').datepicker({
    	format: 'dd/mm/yyyy',
    	startDate: "01/01/1930",
    	language: "pt-BR"
    });
});