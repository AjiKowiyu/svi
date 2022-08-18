<div class="card shadow mb-4">
    <div class="card-header">
        <strong class="card-title">Add new article</strong>
    </div>
    <div class="card-body">
        <div class="row">
            <div class="col">
                <form action="#" method="post" id="form_insert_article">
                    <div class="form-group mb-3">
                        <label for="add_title" class="text-capitalize">title</label>
                        <input type="text" id="add_title" name="add_title" class="form-control" placeholder="Article title ...">
                    </div>
                    <div class="form-group mb-3">
                        <label for="add_category" class="text-capitalize">category</label>
                        <input type="text" id="add_category" name="add_category" class="form-control" placeholder="Article category ...">
                    </div>
                    <div class="form-group mb-3">
                        <label for="add_content" class="text-capitalize">content</label>
                        <textarea id="add_content" name="add_content" class="form-control" cols="30" rows="10"></textarea>
                    </div>
                    <div class="form-group mb-3">
                        <label for="add_status" class="text-capitalize">status</label>
                        <select class="form-control" id="add_status" name="add_status">
                            <option value="" selected>--</option>
                            <option value="publish" class="text-capitalize">publish</option>
                            <option value="draft" class="text-capitalize">draft</option>
                        </select>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <div class="card-footer">
        <button type="button" class="btn btn-primary" id="add_submit"><i class="mr-1 fe fe-save"></i> Submit</button>
    </div>
</div>


<script>
    $(document).ready( function(){
        $(document).on('click', '#add_submit', function(e){
            e.preventDefault();
            let formdata = new FormData( document.getElementById('form_insert_article') );
            $.ajax({
                url         : '<?= base_url('article'); ?>',
                type        : 'post',
                dataType    : 'json',
                data        : formdata,
                cache       : false,
                contentType : false,
                processData : false,
                success     : function(srv) {
                    if (srv.response == 'success') {
                        $('#form_insert_article')[0].reset();
                        toastr.success(srv.message);
                    } else {
                        toastr.error(srv.message);
                    }
                }
            });

        });
    });
</script>