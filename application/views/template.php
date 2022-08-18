<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="icon" href="<?= base_url('public/images/dosencoding-bw.png') ?>">
        <title><?= $title ?> | Sharing Vision Indonesia</title>
        <link rel="stylesheet" href="<?= base_url('public/') ?>css/simplebar.css">
        <link href="https://fonts.googleapis.com/css2?family=Overpass:ital,wght@0,100;0,200;0,300;0,400;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="<?= base_url('public/') ?>css/feather.css">
        <link rel="stylesheet" href="<?= base_url('public/') ?>css/dataTables.bootstrap4.css">
        <link rel="stylesheet" href="<?= base_url('public/') ?>css/select2.css">
        <link rel="stylesheet" href="<?= base_url('public/') ?>css/jquery.steps.css">
        <link rel="stylesheet" href="<?= base_url('public/') ?>css/jquery.timepicker.css">
        <link rel="stylesheet" href="<?= base_url('public/') ?>css/daterangepicker.css">
        <link rel="stylesheet" href="<?= base_url('public/') ?>css/app-light.css" id="lightTheme">
        <link rel="stylesheet" href="<?= base_url('public/') ?>css/app-dark.css" id="darkTheme" disabled>
        <link rel="stylesheet" href="<?= base_url('public/') ?>css/toastr.min.css">
        <script src="<?= base_url('public/') ?>js/jquery.min.js"></script>
        <script src="<?= base_url('public/') ?>js/popper.min.js"></script>
        <script src="<?= base_url('public/') ?>js/moment.min.js"></script>
        <script src="<?= base_url('public/') ?>js/bootstrap.min.js"></script>
        <script src="<?= base_url('public/') ?>js/chart-2.7.3.min.js"></script>
        <script src="<?= base_url('public/') ?>js/jquery.dataTables.min.js"></script>
        <script src="<?= base_url('public/') ?>js/dataTables.bootstrap4.min.js"></script>
        <script src="<?= base_url('public/') ?>js/toastr.min.js"></script>
        <script src="<?= base_url('public/') ?>js/sweetalert.min.js"></script>
    </head>
    <body class="vertical dark">
        <div class="wrapper">
            <nav class="topnav navbar navbar-dark">
                <button type="button" class="navbar-toggler text-muted mt-4 p-0 mr-3 collapseSidebar">
                    <i class="fe fe-menu navbar-toggler-icon"></i>
                </button>
            </nav>
            <aside class="sidebar-left border-right bg-dark shadow" id="leftSidebar" data-simplebar>
                <a href="#" class="btn collapseSidebar toggle-btn d-lg-none text-muted ml-2 mt-3" data-toggle="toggle">
                    <i class="fe fe-x"><span class="sr-only"></span></i>
                </a>
                <nav class="vertnav navbar navbar-dark">
                    <!-- nav bar -->
                    <div class="w-100 mb-4 d-flex">
                        <a class="navbar-brand mx-auto mt-2 flex-fill text-center" href="<?= base_url() ?>">
                            <svg version="1.1" id="logo" class="navbar-brand-img brand-sm" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 120 120" xml:space="preserve">
                                <g>
                                    <polygon class="st0" points="78,105 15,105 24,87 87,87 	" />
                                    <polygon class="st0" points="96,69 33,69 42,51 105,51 	" />
                                    <polygon class="st0" points="78,33 15,33 24,15 87,15 	" />
                                </g>
                            </svg>
                        </a>
                    </div>
                    <ul class="navbar-nav flex-fill w-100 mb-2">
                        <li class="nav-item dropdown">
                            <a href="#posts" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle nav-link">
                                <i class="fe fe-database fe-16"></i>
                                <span class="ml-3 item-text text-capitalize">posts</span><span class="sr-only">(current)</span>
                            </a>
                            <ul class="collapse list-unstyled pl-4 w-100" id="posts">
                                <li class="nav-item">
                                    <a class="nav-link pl-3" href="<?= base_url('posts/all') ?>"><span class="ml-1 item-text text-capitalize">
                                        <i class="mr-2 fe fe-file-text"></i> all posts</span>
                                    </a>
                                </li>
                                <li class="nav-item active">
                                    <a class="nav-link pl-3" href="<?= base_url('posts/new') ?>"><span class="ml-1 item-text text-capitalize">
                                        <i class="mr-2 fe fe-file-plus"></i> add new</span>
                                    </a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </nav>
            </aside>
            <main role="main" class="main-content">
                <?php $this->load->view($konten) ?>
            </main>
        </div>
        <script src="<?= base_url('public/') ?>js/simplebar.min.js"></script>
        <script src='<?= base_url('public/') ?>js/daterangepicker.js'></script>
        <script src='<?= base_url('public/') ?>js/jquery.stickOnScroll.js'></script>
        <script src="<?= base_url('public/') ?>js/tinycolor-min.js"></script>
        <script src="<?= base_url('public/') ?>js/config.js"></script>
        <script>
            /* defind global options */
            Chart.defaults.global.defaultFontFamily = base.defaultFontFamily;
            Chart.defaults.global.defaultFontColor = colors.mutedColor;
        </script>
        <script src="<?= base_url('public/') ?>js/apps.js"></script>
    </body>
</html>