<!-- HEADER
	================================================== -->
<header class="header-type-24">
	<div class="background-header"></div>
	<div class="slider-header">
		<!-- Top of pages -->
		<div id="top" class="<?php if($theme_options->get( 'header_layout' ) == 1) { echo 'full-width'; } elseif($theme_options->get( 'header_layout' ) == 4) { echo 'fixed3 fixed2'; } elseif($theme_options->get( 'header_layout' ) == 3) { echo 'fixed2';  } else { echo 'fixed'; } ?>">
			<div class="background-top"></div>
			<div class="background">
				<div class="shadow"></div>
				<div class="pattern">
					<div class="container">
						<div class="row">		
						     <?php if ($logo) { ?>
						     <!-- Header Left -->
						     <div class="col-md-3" id="header-left">
						          <!-- Logo -->
						          <div class="logo"><a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" /></a></div>
						     </div>
						     <?php } ?>

							<!-- Header Right -->
							<div class="col-md-9 text-right" id="header-right">
							     <?php 
							     $top_block = $modules->getModules('top_block');
							     if( count($top_block) ) { 
							     	foreach ($top_block as $module) {
							     		echo $module;
							     	}
							     } ?>
							     
							     <div class="overflow-change-menu">
							          <?php echo $currency.$language; ?>
							          
							          <!-- Links -->
							          <ul class="menu">
							          	<li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
							          	<li><a href="<?php echo $wishlist; ?>" id="wishlist-total"><?php echo $text_wishlist; ?></a></li>
							          	<li><a href="<?php echo $shopping_cart; ?>"><?php echo $text_shopping_cart; ?></a></li>
							          	<li><a href="<?php echo $checkout; ?>"><?php echo $text_checkout; ?></a></li>
							          </ul>
							     </div>
							     
							     <div class="clear"></div>
							     
							     <?php 
							     $menu = $modules->getModules('menu');
							     if( count($menu) ) { ?>
							          <div class="megamenu-background">
							               <div class="">
							                    <div class="overflow-megamenu container">
							     				<?php 
							     				if(count($menu) > 1) echo '<div class="row mega-menu-modules">';
							     				$i = 0;
							     				    
							     				foreach ($menu as $module) {
							     				     if($i == 0 && count($menu) > 1) echo '<div class="col-md-3">';
							     				     if($i == 1 && count($menu) > 1) echo '<div class="col-md-9">';
							     					     echo $module;
							     					if(count($menu) > 1 && ($i == 0 || $i == 1)) echo '</div>';
							     					if(count($menu) > 1 && $i == 1) echo '</div>';
							     					$i++;
							     				} ?>
							     			</div>
							     		</div>
							     	</div>
							     <?php } elseif($categories) { ?>
							     <div class="megamenu-background">
							          <div class="">
							               <div class="overflow-megamenu container">
							     			<div class="container-megamenu horizontal">
							     				<div class="megaMenuToggle">
							     					<div class="megamenuToogle-wrapper">
							     						<div class="megamenuToogle-pattern">
							     							<div class="container">
							     								<div><span></span><span></span><span></span></div>
							     								Navigation
							     							</div>
							     						</div>
							     					</div>
							     				</div>
							     				
							     				<div class="megamenu-wrapper">
							     					<div class="megamenu-pattern">
							     						<div class="container">
							     							<ul class="megamenu shift-up">
							     								<?php foreach ($categories as $category) { ?>
							     								<?php if ($category['children']) { ?>
							     								<li class="with-sub-menu hover"><p class="close-menu"></p><p class="open-menu"></p>
							     									<a href="<?php echo $category['href'];?>"><span><strong><?php echo $category['name']; ?></strong></span></a>
							     								<?php } else { ?>
							     								<li>
							     									<a href="<?php echo $category['href']; ?>"><span><strong><?php echo $category['name']; ?></strong></span></a>
							     								<?php } ?>
							     									<?php if ($category['children']) { ?>
							     									<?php 
							     										$width = '100%';
							     										$row_fluid = 3;
							     										if($category['column'] == 1) { $width = '220px'; $row_fluid = 12; }
							     										if($category['column'] == 2) { $width = '500px'; $row_fluid = 6; }
							     										if($category['column'] == 3) { $width = '700px'; $row_fluid = 4; }
							     									?>
							     									<div class="sub-menu" style="width: <?php echo $width; ?>">
							     										<div class="content">
							     											<p class="arrow"></p>
							     											<div class="row hover-menu">
							     												<?php for ($i = 0; $i < count($category['children']);) { ?>
							     												<div class="col-sm-<?php echo $row_fluid; ?> mobile-enabled">
							     													<div class="menu">
							     														<ul>
							     														  <?php $j = $i + ceil(count($category['children']) / $category['column']); ?>
							     														  <?php for (; $i < $j; $i++) { ?>
							     														  <?php if (isset($category['children'][$i])) { ?>
							     														  <li><a href="<?php echo $category['children'][$i]['href']; ?>" class="main-menu"><?php echo $category['children'][$i]['name']; ?></a></li>
							     														  <?php } ?>
							     														  <?php } ?>
							     														</ul>
							     													</div>
							     												</div>
							     												<?php } ?>
							     											</div>
							     										</div>
							     									</div>
							     									<?php } ?>
							     								</li>
							     								<?php } ?>
							     							</ul>
							     						</div>
							     					</div>
							     				</div>
							     			</div>
							     		</div>
							     	</div>
							     </div>
							     <?php
							     }
							     ?>
							     
							     <a href="<?php echo $account; ?>" class="my-account"><i class="fa fa-user"></i></a>
								<?php echo $cart; ?>
							</div>
						</div>
					</div>
					
					<div class="megamenu-background">
					     <div class="">
					          <div class="overflow-megamenu container">
								<div class="row mega-menu-modules">
								     <div class="col-md-3">
								          <?php 
								          $menu2 = $modules->getModules('menu2');
								          if( count($menu2) ) { 
								          	foreach ($menu2 as $module) {
								          		echo $module;
								          	}
								          } ?>
								     </div>
								     
								     <div class="col-md-9">
								          <?php
								          $search_cats = $theme_options->getAllCategories();
								          $category_id = $theme_options->getCurrentCategory();
								          ?>
								          
								          <div class="search_form">     
								               <div class="button-search"></div>

								               <div class="search-cat">
								                   <select name="category_id" class="form-control">
								                     <option value="0"><?php echo $theme_options->get( 'all_categories_text', $config->get( 'config_language_id' ) ) != '' ? $theme_options->get( 'all_categories_text', $config->get( 'config_language_id' ) ) : 'All categories';  ?></option>
								                     <?php foreach ($search_cats as $category_1) { ?>
								                     <?php if ($category_1['category_id'] == $category_id) { ?>
								                     <option value="<?php echo $category_1['category_id']; ?>" selected="selected"><?php echo $category_1['name']; ?></option>
								                     <?php } else { ?>
								                     <option value="<?php echo $category_1['category_id']; ?>"><?php echo $category_1['name']; ?></option>
								                     <?php } ?>
								                     <?php foreach ($category_1['children'] as $category_2) { ?>
								                     <?php if ($category_2['category_id'] == $category_id) { ?>
								                     <option value="<?php echo $category_2['category_id']; ?>" selected="selected">&nbsp;&nbsp;<?php echo $category_2['name']; ?></option>
								                     <?php } else { ?>
								                     <option value="<?php echo $category_2['category_id']; ?>">&nbsp;&nbsp;<?php echo $category_2['name']; ?></option>
								                     <?php } ?>
								                     <?php foreach ($category_2['children'] as $category_3) { ?>
								                     <?php if ($category_3['category_id'] == $category_id) { ?>
								                     <option value="<?php echo $category_3['category_id']; ?>" selected="selected">&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_3['name']; ?></option>
								                     <?php } else { ?>
								                     <option value="<?php echo $category_3['category_id']; ?>">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_3['name']; ?></option>
								                     <?php } ?>
								                     <?php } ?>
								                     <?php } ?>
								                     <?php } ?>
								                   </select>
								               </div>
								               							         
								              <div class="overflow-input"><input type="text" class="input-block-level search-query" name="search" placeholder="<?php echo $search; ?>" id="search_query" value="" /></div>
								              
								              <?php if($theme_options->get( 'quick_search_autosuggest' ) != '0') { ?>
								                  <div id="autocomplete-results" class="autocomplete-results"></div>
								           
								                  <script type="text/javascript">
								                  $(document).ready(function() {
								           
								                      $('#search_query').autocomplete({
								                          delay: 0,
								                          appendTo: "#autocomplete-results",
								                          source: function(request, response) {  
								           
								                              var category_filter = $('header select[name=\'category_id\']').val();
								                              var category_filter_url = '';
								                              if (category_filter) {
								                                  category_filter_url = '&filter_category_id=' + encodeURIComponent(category_filter);
								                              }
								                              $.ajax({
								                                  url: 'index.php?route=search/autocomplete&filter_name=' +  encodeURIComponent(request.term) + category_filter_url,
								                                  dataType: 'json',
								                                  success: function(json) {
								                                      response($.map(json, function(item) {
								                                          return {
								                                              label: item.name,
								                                              value: item.product_id,
								                                              href: item.href,
								                                              thumb: item.thumb,
								                                              desc: item.desc,
								                                              price: item.price
								                                          }
								                                      }));
								                                  }
								                              });
								                          },
								                          select: function(event, ui) {
								                              document.location.href = ui.item.href;
								           
								                              return false;
								                          },
								                          focus: function(event, ui) {
								                              return false;
								                          },
								                          minLength: 2
								                      })
								                      .data( "ui-autocomplete" )._renderItem = function( ul, item ) {
								                        return $( "<li>" )
								                          .append( "<a>" + item.label + "</a>" )
								                          .appendTo( ul );
								                      };
								                  });
								                  </script>
								              <?php } ?>
								          </div>
								     </div>
								</div>
							</div>
						</div>
					</div><!-- End megamenu-background -->
				</div>
			</div>
		</div>
	</div>
	
	<?php $slideshow = $modules->getModules('slideshow'); ?>
	<?php  if(count($slideshow)) { ?>
	<!-- Slider -->
	<div id="slider" class="<?php if($theme_options->get( 'slideshow_layout' ) == 1) { echo 'full-width'; } elseif($theme_options->get( 'slideshow_layout' ) == 4) { echo 'fixed3 fixed2'; } elseif($theme_options->get( 'slideshow_layout' ) == 3) { echo 'fixed2'; } else { echo 'fixed'; } ?>">
		<div class="background-slider"></div>
		<div class="background">
			<div class="shadow"></div>
			<div class="pattern">
				<?php foreach($slideshow as $module) { ?>
				<?php echo $module; ?>
				<?php } ?>
			</div>
		</div>
	</div>
	<?php } ?>
</header>