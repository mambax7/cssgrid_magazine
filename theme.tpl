<!--
  Please enable "Experimental Web Platform Features" in chrome for the css grid layout module to actually work.
  See more here: https://drafts.csswg.org/css-grid-1/
  Theme based on: https://codepen.io/hbuchel/pen/qOxGzW/
-->

<!doctype html>
<html lang="<{$xoops_langcode}>">
<head>
    <{assign var=theme_name value=$xoTheme->folderName}>

    <title><{$xoops_sitename}><{if $xoops_pagetitle !=''}> - <{$xoops_pagetitle}><{/if}></title>
    <!-- Meta Tags -->
    <meta name="Description" content="<{$xoops_meta_description}>"/>
    <meta http-equiv="content-type" content="text/html; charset=<{$xoops_charset}>"/>
    <meta http-equiv="content-language" content="<{$xoops_langcode}>"/>
    <meta name="keywords" content="<{$xoops_pagetitle}>,<{$xoops_meta_keywords}>"/>
    <meta name="rating" content="<{$xoops_meta_rating}>"/>
    <meta name="author" content="<{$xoops_meta_author}>"/>
    <meta name="copyright" content="<{$xoops_meta_copyright}>"/>
    <meta name="generator" content="<{$smarty.const.META_GENER}>"/>
    <meta name="robots" content="<{$xoops_meta_robots}>"/>
    <meta name="revisit-after" content="<{$smarty.const.META_REV_AFT}>"/>
    <meta name="viewport" content="width=device-width"/>
    <link rel="stylesheet" href="<{xoImgUrl}>style.css">
    <link rel="stylesheet" href="<{xoImgUrl}>cssgrid.css">

    <{$xoops_module_header}>

</head>

<body class="main-grid">

<div class="page">

    <{if $homepage}>
    <{includeq file="$theme_name/pages/home.tpl"}>

    <{else}>

    <{*======================================================*}>

    <div class="container header">
        <{*<span class="text-element">Header</span>*}>
        <div class="grid_4"><h1><a href="<{xoAppUrl}>"><{$xoops_sitename}></a></h1></div>
        <div class="grid_8"><{$xoops_banner}></div>
        <{*<div class="clear"></div>*}>
    </div>

    <div class="grid">
       <div class="item article-body2">


            <!-- Center Blocks -->
            <{if $xoBlocks.canvas_left and $xoBlocks.canvas_right}>
            <div class="grid_6">
                <{else}>
                <{if $xoBlocks.canvas_left or $xoBlocks.canvas_right}>
                <div class="grid_9">
                    <{else}>
                    <div class="grid_12">
                        <{/if}>
                        <{/if}>


                        <{if $xoBlocks.page_topleft or $xoBlocks.page_topcenter or $xoBlocks.page_topright}>
                            <!-- Center Top Left -->
                            <div class="center-top-left">
                                <{foreach item=block from=$xoBlocks.page_topleft}>
                                    <div class="center-top-left-block">
                                        <h2><{$block.title}></h2>
                                        <{$block.content}>
                                    </div>
                                <{/foreach}>
                            </div>
                            <!-- Center Top Right -->
                            <div class="center-top-right">
                                <{foreach item=block from=$xoBlocks.page_topright}>
                                    <div class="center-top-right-block">
                                        <h2><{$block.title}></h2>
                                        <{$block.content}>
                                    </div>
                                <{/foreach}>
                            </div>
                            <!-- Center Top Center -->
                            <div class="center-top-center">
                                <{foreach item=block from=$xoBlocks.page_topcenter}>
                                    <div class="center-top-center-block">
                                        <h2><{$block.title}></h2>
                                        <{$block.content}>
                                    </div>
                                <{/foreach}>
                            </div>
                        <{/if}>


                        <!-- Content -->
                        <{if $xoops_contents && ($xoops_contents != '') }>
                            <div class="xo-content">
                                <{$xoops_contents}>
                            </div>
                        <{/if}>
                        <{if $xoBlocks.page_bottomleft or $xoBlocks.page_bottomcenter or $xoBlocks.page_bottomright}>


                            <!-- Center Bottom Left -->
                            <div class="center-bottom-left">
                                <{foreach item=block from=$xoBlocks.page_bottomleft}>
                                    <div class="center-bottom-left-block">
                                        <h2><{$block.title}></h2>
                                        <{$block.content}>
                                    </div>
                                <{/foreach}>
                            </div>
                            <!-- Center Bottom Right -->
                            <div class="center-bottom-right">
                                <{foreach item=block from=$xoBlocks.page_bottomright}>
                                    <div class="center-bottom-block">
                                        <h2><{$block.title}></h2>
                                        <{$block.content}>
                                    </div>
                                <{/foreach}>
                            </div>
                            <!-- Center Bottom Center -->
                            <div class="center-bottom-center">
                                <{foreach item=block from=$xoBlocks.page_bottomcenter}>
                                    <div class="center-bottom-center-block">
                                        <h2><{$block.title}></h2>
                                        <{$block.content}>
                                    </div>
                                <{/foreach}>
                            </div>
                        <{/if}>
                    </div>
                </div>
                <{/if}>

                <{*======================================*}>


                <div class="item community">
                    <div class="community-header">
                        <h2 class="title-block-small">Our <span class="serif block italic">Community</span></h2>
                        <h3 class="title-block-small">Powered by You!</h3>
                    </div>
                    <div class="img-grid">
                        <a href=""><img src="https://source.unsplash.com/random/150x150"/></a>
                        <a href=""><img src="https://source.unsplash.com/random/151x150"/></a>
                        <a href=""><img src="https://source.unsplash.com/random/152x150"/></a>
                        <a href=""><img src="https://source.unsplash.com/random/153x150"/></a>
                    </div>
                </div>

                <div class="item menu">
                    <h2 class="title-small">Shop By</h2>
                    <{if $xoBlocks.canvas_left}>
                        <!-- Left Blocks -->
                        <{*<div class="grid_3">*}>
                            <{foreach item=block from=$xoBlocks.canvas_left}>
                                <div class="left-block-content">
                                    <h2><{$block.title}></h2>
                                    <{$block.content}>
                                </div>
                            <{/foreach}>
                        <{*</nav>*}>
                        <{*</div>*}>
                    <{/if}>

                    <{if $xoBlocks.canvas_right}>
                        <!-- Right Blocks -->
                        <{*<div class="grid_3">*}>
                        <{foreach item=block from=$xoBlocks.canvas_right}>
                            <div class="right-block-content">
                                <h2><{$block.title}></h2>
                                <{$block.content}>
                            </div>
                        <{/foreach}>
                        <{*</div>*}>
                        <{*</div>*}>
                    <{/if}>
                </div>

            </div>
        </div>
    </div>
    <div class="clear"></div>
    <div class="container footer">
        <div class="footer"><{$xoops_footer}></div>
    </div>

</div>
<script src="<{$xoops_url}>/browse.php?Frameworks/jquery/jquery.js"></script>

</body>

</html>
