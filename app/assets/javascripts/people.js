// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
 
 $(document).ready(function(){	
    $('.datepicker').datepicker({
    	format: 'dd/mm/yyyy',
    	startDate: "01/01/1930",
    	language: "pt-BR"
    });
    $('.phone').mask('(99) 9999-9999');
    $('.form-control.cell').mask('(99) 9999-9999');
    $('.form-control.postal').mask('99999-999');
 });