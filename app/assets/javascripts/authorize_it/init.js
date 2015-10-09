    $(document).ready(function() {
        console.log('document.ready is working');
        $('#users_table').DataTable({
            "paging": true,
            "lengthChange": false,
            "searching": true,
            "ordering": true,
            "info": true,
            "autoWidth": false
        });
    });
