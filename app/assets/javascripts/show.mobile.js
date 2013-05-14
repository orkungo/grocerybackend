/**
 * Created with JetBrains RubyMine.
 * User: orkun
 * Date: 5/7/13
 * Time: 1:48 AM
 * To change this template use File | Settings | File Templates.
 */

$(document).ready(function() {

    var i = 0;

    // Initial loading of tasks
    for( i = 0; i < localStorage.length; i++)
        $("#tasks").append("<li id='task-"+ i +"'>" + localStorage.getItem('task-'+i) + " <a href='#'>x</a></li>");

    // Add a task
    $("#tasks-form").submit(function() {
        if (  $("#task").val() != "" ) {
            localStorage.setItem( "task-"+i, $("#task").val() );
            $("#tasks").append("<li id='task-"+i+"'>"+localStorage.getItem("task-"+i)+" <a href='#'>x</a></li>")
            $("#task-" + i).css('display', 'none');
            $("#task-" + i).slideDown();
            $("#task").val("");
            i++;
        }
        return false;
    });

    // Remove a task
    $("#tasks li a").live("click", function() {
        localStorage.removeItem($(this).parent().attr("id"));
        $(this).parent().slideUp('slow', function() { $(this).remove(); } );
        for(i=0; i<localStorage.length; i++) {
            if( !localStorage.getItem("task-"+i)) {
                localStorage.setItem("task-"+i, localStorage.getItem('task-' + (i+1) ) );
                localStorage.removeItem('task-'+ (i+1) );
            }
        }
    });
});