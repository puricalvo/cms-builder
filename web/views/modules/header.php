<?php

$route = trim(parse_url($_SERVER['REQUEST_URI'], PHP_URL_PATH), '/');
$segment = explode('/', $route)[0];

?>

<!--================= header ================-->
<header class="main-header">
    <div class="header-contacts">
        <ul>
            <li><a href="#"> <span>Call :</span> +<?php echo $profile->phone_profile ?></a></li>
            <li><a href="#"> <span>Write :</span> <?php echo $profile->email_profile ?></a></li>
        </ul>
    </div>
    <a class="logo-holder" href="/"><img src="<?php echo $profile->logo_profile ?>" alt=""></a>

    <!-- search button--> 	 
    <div class="show-sibedar vissidebar"></div>
    <!-- search button end --> 
    <!-- sidebar-button --> 
    <div class="sidebar-button-wrap vis-m"></div>
    <!-- sidebar-button end-->                 
  
    <!-- mobile nav --> 
    <div class="nav-button-wrap">
        <div class="nav-button vis-main-menu"><span></span><span></span><span></span></div>
    </div>
    <!-- mobile nav end--> 
    <!--  navigation --> 
    <div class="nav-holder">
        <nav>
            <ul>
                <li>
                    <a href="/" class="<?php echo ($segment == "") ? "act-link" : ""; ?>">Home</a>    
                </li>

                <li>
                    <a href="/portfolio" class="<?php echo ($segment == "portfolio") ? "act-link" : ""; ?>">Portfolio</a>                         
                </li>

                <li>
                    <a href="/blog" class="<?php echo ($segment == "blog") ? "act-link" : ""; ?>">Blog</a>                         
                </li>
            </ul>
        </nav>
    </div>
    <!-- navigation  end -->
</header>