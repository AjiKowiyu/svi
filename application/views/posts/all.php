<div class="row">
    <div class="col mb-4">
        <ul class="nav nav-pills text-capitalize" id="pills-tab2" role="tablist">
            <li class="nav-item">
                <a class="nav-link px-3 active" id="posts-published" data-toggle="pill" href="#pills-home2" role="tab" aria-controls="pills-home2" aria-selected="true">
                    <span class="mr-1 fe fe-16 fe-globe"></span> published <span id="total_publish" class="badge badge-pill bg-dark text-white"></span>
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link px-3" id="posts-drafts" data-toggle="pill" href="#pills-profile2" role="tab" aria-controls="pills-profile2" aria-selected="false">
                    <span class="mr-1 fe fe-16 fe-archive"></span> drafts <span id="total_draft" class="badge badge-pill bg-dark text-white"></span>
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link px-3" id="posts-trashed" data-toggle="pill" href="#pills-contact2" role="tab" aria-controls="pills-contact" aria-selected="false">
                    <span class="mr-1 fe fe-16 fe-trash"></span> trashed <span id="total_trash" class="badge badge-pill bg-dark text-white"></span>
                </a>
            </li>
        </ul>
        <div class="tab-content mb-2" id="pills-tabContent2">
            <div class="tab-pane fade show active" id="pills-home2" role="tabpanel" aria-labelledby="posts-published">
                <div class="card mb-0">
                    <div class="card-body">
                        <?php $this->load->view('posts/all/publish-table') ?>
                    </div>
                </div>
            </div>
            <div class="tab-pane fade" id="pills-profile2" role="tabpanel" aria-labelledby="posts-drafts">
                <div class="card mb-0">
                    <div class="card-body">
                        <?php $this->load->view('posts/all/draft-table') ?>
                    </div>
                </div>
            </div>
            <div class="tab-pane fade" id="pills-contact2" role="tabpanel" aria-labelledby="posts-trashed">
                <div class="card mb-0">
                    <div class="card-body">
                        <?php $this->load->view('posts/all/trash-table') ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<div class="modal fade" id="modal_edit_article" tabindex="-1" role="dialog" aria-labelledby="modal_edit_articleTitle" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
        <div class="modal-content">
        <div class="modal-header">
            <h5 class="modal-title" id="modal_edit_articleTitle">Edit Article</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
            </button>
        </div>
        <div class="modal-body">
            <div class="row">
                <div class="col">
                    <form action="#" method="post" id="form_update_article">
                        <input type="hidden" id="edit_id_article" name="edit_id_article">
                        <div class="form-group mb-3">
                            <label for="edit_title" class="text-capitalize">title</label>
                            <input type="text" id="edit_title" name="edit_title" class="form-control" placeholder="Article title ...">
                        </div>
                        <div class="form-group mb-3">
                            <label for="edit_category" class="text-capitalize">category</label>
                            <input type="text" id="edit_category" name="edit_category" class="form-control" placeholder="Article category ...">
                        </div>
                        <div class="form-group mb-3">
                            <label for="edit_content" class="text-capitalize">content</label>
                            <textarea id="edit_content" name="edit_content" class="form-control" cols="30" rows="10"></textarea>
                        </div>
                        <div class="form-group mb-3">
                            <label for="edit_status" class="text-capitalize">status</label>
                            <select class="form-control" id="edit_status" name="edit_status">
                                <option value="" selected>--</option>
                                <option value="publish" class="text-capitalize">publish</option>
                                <option value="draft" class="text-capitalize">draft</option>
                            </select>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <div class="modal-footer">
            <button type="button" class="btn mb-2 btn-secondary" data-dismiss="modal">Close</button>
            <button type="button" class="btn mb-2 btn-primary" id="update_submit">Save changes</button>
        </div>
        </div>
    </div>
</div>


<div class="modal fade" id="modal_preview_article" tabindex="-1" role="dialog" aria-labelledby="modal_preview_articleTitle" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="modal_preview_articleTitle"><i class="fe fe-eye mr-1"></i> Preview Article</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col">
                        <form action="#" method="post" id="form_update_article">
                            <h3 type="text" id="preview_title" name="preview_title"></h3>
                            <div class="row">
                                <div class="col">
                                    <p type="text" id="preview_category" name="preview_category" class="badge badge-pill bg-info text-white p-2"></p>
                                    <p type="text" id="preview_created_date" name="preview_created_date" class="badge badge-pill bg-info-dark text-white p-2"></p>
                                    <p type="text" id="preview_updated_date" name="preview_updated_date" class="badge badge-pill bg-info-dark text-white p-2"></p>
                                </div>
                            </div>
                            <p type="text" id="preview_content" name="preview_content"></p>
                        </form>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
            </div>
        </div>
    </div>
</div>


<script>
    $(document).ready( function(){

        function fetch() {
            $.ajax({
                url     : '<?= base_url('article'); ?>',
                type    : 'get',
                dataType: 'json',
                success : function(datares) {
                    let no_publish      = 1;
                    let no_draft        = 1;
                    let no_trash        = 1;
                    let tbody_publish   = '';
                    let tbody_draft     = '';
                    let tbody_trash     = '';
                    
                    for (let i in datares.publish) {
                        tbody_publish +=
                        `<tr>
                            <td>${no_publish++}</td>
                            <td>${datares.publish[i]['Title']}</td>
                            <td>${datares.publish[i]['Category']}</td>
                            <td>
                                <a href="#" id="button_preview" data-toggle="modal" data-target="#modal_preview_article" class="rounded-circle btn btn-sm btn-outline-info" value="${datares.publish[i]['Id']}">
                                    <i class="fe fe-eye"></i>
                                </a>
                                <a href="#" id="button_edit" data-toggle="modal" data-target="#modal_edit_article" class="rounded-circle btn btn-sm btn-outline-dark" value="${datares.publish[i]['Id']}">
                                    <i class="fe fe-edit"></i>
                                </a>
                            </td>
                        <tr>`;
                    }
                    $('#publish-tbody').html(tbody_publish);
                    $('#total_publish').html(datares.publish.length);
                    
                    for (let i in datares.draft) {
                        tbody_draft +=
                        `<tr>
                            <td>${no_draft++}</td>
                            <td>${datares.draft[i]['Title']}</td>
                            <td>${datares.draft[i]['Category']}</td>
                            <td>
                                <a href="#" id="button_preview" data-toggle="modal" data-target="#modal_preview_article" class="rounded-circle btn btn-sm btn-outline-info" value="${datares.draft[i]['Id']}">
                                    <i class="fe fe-eye"></i>
                                </a>
                                <a href="#" id="button_edit" data-toggle="modal" data-target="#modal_edit_article" class="rounded-circle btn btn-sm btn-outline-dark" value="${datares.draft[i]['Id']}">
                                    <i class="fe fe-edit"></i>
                                </a>
                                <a href="#" id="button_publish" class="rounded-circle btn btn-sm btn-outline-secondary" value="${datares.draft[i]['Id']}">
                                    <i class="fe fe-globe"></i>
                                </a>
                                <a href="#" id="button_trash" class="rounded-circle btn btn-sm btn-outline-danger" value="${datares.draft[i]['Id']}">
                                    <i class="fe fe-trash-2"></i>
                                </a>
                            </td>
                        <tr>`;
                    }
                    $('#draft-tbody').html(tbody_draft);
                    $('#total_draft').html(datares.draft.length);
                    
                    for (let i in datares.trash) {
                        tbody_trash +=
                        `<tr>
                            <td>${no_trash++}</td>
                            <td>${datares.trash[i]['Title']}</td>
                            <td>${datares.trash[i]['Category']}</td>
                            <td>
                                <a href="#" id="button_preview" data-toggle="modal" data-target="#modal_preview_article" class="rounded-circle btn btn-sm btn-outline-info" value="${datares.trash[i]['Id']}">
                                    <i class="fe fe-eye"></i>
                                </a>
                                <a href="#" id="button_draft" class="rounded-circle btn btn-sm btn-outline-dark" value="${datares.trash[i]['Id']}">
                                    <i class="fe fe-rotate-ccw"></i>
                                </a>
                            </td>
                        <tr>`;
                    }
                    $('#trash-tbody').html(tbody_trash);
                    $('#total_trash').html(datares.trash.length);
                }
            });
        }
    
        fetch();

        $(document).on('click', '#button_trash', function(e){
            e.preventDefault();
            let trash_id = $(this).attr('value');

            if (trash_id == '') {
                toastr.error('Trash id required');
            } else {
                const swalBootstrap = Swal.mixin({
                    customClass: {
                        confirmButton: 'btn btn-success',
                        cancelButton: 'btn btn-danger mr-2'
                    },
                    buttonsStyling: false
                })
                swalBootstrap.fire({
                    title: 'Dump this article to trash ?',
                    text: 'You can recover it later',
                    icon: 'warning',
                    showCancelButton: true,
                    confirmButtonText: 'Yes, send to trash!',
                    cancelButtonText: 'No, cancel!',
                    reverseButtons: true
                }).then( (result)=>{
                    if (result.value) {
                        $.ajax({
                            url     : '<?php echo base_url('article/trash'); ?>',
                            type    : 'post',
                            dataType: 'json',
                            data    : {trash_id: trash_id},
                            success : function(srv) {
                                fetch();
                                if (srv.response === 'success') {
                                    swalBootstrap.fire(
                                        'Trashed!',
                                        'Your record has been sent to trash.',
                                        'success'
                                    )
                                }
                            }
                        });
                    } else if (result.dismiss === Swal.DismissReason.cancel) {
                        /* Read more about handling dismissals below */
                        swalBootstrap.fire(
                            'Cancelled',
                            'Your data is safe :)',
                            'error'
                        )
                    }
                });
            }
        });

        $(document).on('click', '#button_draft', function(e){
            e.preventDefault();
            let draft_id = $(this).attr('value');

            if (draft_id == '') {
                toastr.error('draft id required');
            } else {
                const swalBootstrap = Swal.mixin({
                    customClass: {
                        confirmButton: 'btn btn-success',
                        cancelButton: 'btn btn-danger mr-2'
                    },
                    buttonsStyling: false
                })
                swalBootstrap.fire({
                    title: 'Recover to draft?',
                    text: 'Set this article back to draft!',
                    icon: 'warning',
                    showCancelButton: true,
                    confirmButtonText: 'Yes, send to draft!',
                    cancelButtonText: 'No, cancel!',
                    reverseButtons: true
                }).then( (result)=>{
                    if (result.value) {
                        $.ajax({
                            url     : '<?php echo base_url('article/draft'); ?>',
                            type    : 'post',
                            dataType: 'json',
                            data    : {draft_id: draft_id},
                            success : function(srv) {
                                fetch();
                                if (srv.response === 'success') {
                                    swalBootstrap.fire(
                                        'Drafted!',
                                        'Your record has been sent back to draft.',
                                        'success'
                                    )
                                }
                            }
                        });
                    } else if (result.dismiss === Swal.DismissReason.cancel) {
                        /* Read more about handling dismissals below */
                        swalBootstrap.fire(
                            'Cancelled',
                            'Your data is safe :)',
                            'error'
                        )
                    }
                });
            }
        });

        $(document).on('click', '#button_publish', function(e){
            e.preventDefault();
            let publish_id = $(this).attr('value');

            if (publish_id == '') {
                toastr.error('publish id required');
            } else {
                const swalBootstrap = Swal.mixin({
                    customClass: {
                        confirmButton: 'btn btn-success',
                        cancelButton: 'btn btn-danger mr-2'
                    },
                    buttonsStyling: false
                })
                swalBootstrap.fire({
                    title: 'Set as Publish?',
                    text: 'Set this article to publish!',
                    icon: 'info',
                    showCancelButton: true,
                    confirmButtonText: 'Yes, set as publish!',
                    cancelButtonText: 'No, cancel!',
                    reverseButtons: true
                }).then( (result)=>{
                    if (result.value) {
                        $.ajax({
                            url     : '<?php echo base_url('article/publish'); ?>',
                            type    : 'post',
                            dataType: 'json',
                            data    : {publish_id: publish_id},
                            success : function(srv) {
                                fetch();
                                if (srv.response === 'success') {
                                    swalBootstrap.fire(
                                        'published!',
                                        'Your record has been sent back to publish.',
                                        'success'
                                    )
                                }
                            }
                        });
                    } else if (result.dismiss === Swal.DismissReason.cancel) {
                        /* Read more about handling dismissals below */
                        swalBootstrap.fire(
                            'Cancelled',
                            'Your data is safe :)',
                            'error'
                        )
                    }
                });
            }
        });

        $(document).on('click', '#button_preview', function(e){
            e.preventDefault();
            let edit_id = $(this).attr('value');
            if (edit_id == '') {
                alert('Preview id required');
            } else {
                $.ajax({
                    url     : '<?= base_url('article/edit') ?>',
                    type    : 'post',
                    dataType: 'json',
                    data    : {edit_id: edit_id},
                    success : function(srv) {
                        if (srv.response === 'success') {
                            $('#preview_title').html(srv.post.Title);
                            $('#preview_category').html('<i class="fe fe-tag mr-1"></i> '+srv.post.Category);
                            $('#preview_content').html(srv.post.Content);
                            $('#preview_created_date').html('<i class="fe fe-plus-square mr-1"></i> '+srv.post.Created_date);
                            (srv.post.Updated_date) 
                            ? $('#preview_updated_date').html('<i class="fe fe-edit mr-1"></i> '+srv.post.Updated_date)
                            : $('#preview_updated_date').html('')
                        } else {
                            toastr.error(srv.message);
                        }
                    }
                });
            }
        });

        $(document).on('click', '#button_edit', function(e){
            e.preventDefault();
            let edit_id = $(this).attr('value');
            if (edit_id == '') {
                alert('Edit id required');
            } else {
                $.ajax({
                    url     : '<?= base_url('article/edit') ?>',
                    type    : 'post',
                    dataType: 'json',
                    data    : {edit_id: edit_id},
                    success : function(srv) {
                        if (srv.response === 'success') {
                            $('#edit_id_article').val(srv.post.Id);
                            $('#edit_title').val(srv.post.Title);
                            $('#edit_category').val(srv.post.Category);
                            $('#edit_content').val(srv.post.Content);
                            $('#edit_status').val(srv.post.Status);
                        } else {
                            toastr.error(srv.message);
                        }
                    }
                });
            }
        });

        $(document).on('click', '#update_submit', function(e){
            e.preventDefault();
            let formdata = new FormData( document.getElementById('form_update_article') );
            console.log(...formdata)
            $.ajax({
                url         : '<?php echo base_url('article/update'); ?>',
                type        : 'post',
                dataType    : 'json',
                data        : formdata,
                cache       : false,
                contentType : false,
                processData : false,
                success     : function(srv) {
                    fetch();
                    if (srv.response === 'success') {
                        $("#form_update_article")[0].reset();
                        $('#modal_edit_article').modal('hide');
                        toastr.success(srv.message);
                    } else {
                        toastr.error(srv.message);
                    }
                }
            });
        });
    });
</script>