<?php
/**
 * The main template file
 *
 * This is the most generic template file in a WordPress theme
 * and one of the two required files for a theme (the other being style.css).
 * It is used to display a page when nothing more specific matches a query.
 * e.g., it puts together the home page when no home.php file exists.
 *
 * Learn more: {@link https://codex.wordpress.org/Template_Hierarchy}
 *
 * @package Hestia
 * @since Hestia 1.0
 */

$hestia_alternative_blog_layout = get_theme_mod( 'hestia_alternative_blog_layout', false );
$hestia_remove_sidebar_on_index = get_theme_mod( 'hestia_sidebar_on_index', false );

$default_blog_layout = hestia_sidebar_on_single_post_get_default();
$hestia_blog_sidebar_layout = get_theme_mod( 'hestia_blog_sidebar_layout', $default_blog_layout );

$args = array(
	'sidebar-right' => 'col-md-8 blog-posts-wrap',
	'sidebar-left' => 'col-md-offset-1 col-md-8 blog-posts-wrap',
	'full-width' => 'col-md-10 col-md-offset-1 blog-posts-wrap',
);
$class_to_add = hestia_get_content_classes( $hestia_blog_sidebar_layout, 'sidebar-1', $args );

get_header();

?>
<div id="primary" class="page-header header-filter header-small" data-parallax="active" style="background-image: url('<?php echo( esc_url( get_header_image() ) ); ?>');">
	<div class="container">
		<div class="row">
			<div class="col-md-8 col-md-offset-2 text-center">
				<h2 class="title"><?php bloginfo( 'description' ); ?></h2>
			</div>
		</div>
	</div>
</div>
</header>
<div class="<?php echo hestia_layout(); ?>">
	<div class="blogs">
		<div class="container">
			<div class="row">
				<?php
				if ( $hestia_blog_sidebar_layout === 'sidebar-left' ) {
					get_sidebar();
				}
				?>
				<div class="<?php echo esc_attr( $class_to_add ); ?>">
					<?php

					if ( have_posts() ) :

						while ( have_posts() ) : the_post();
							if ( ( $hestia_alternative_blog_layout == true ) && ( $wp_query->current_post % 2 == 0 ) ) {
								get_template_part( 'template-parts/content', 'alternative' );
							} else {
								get_template_part( 'template-parts/content' );
							}

						endwhile;
						the_posts_pagination();
					else :
						get_template_part( 'template-parts/content', 'none' );
					endif;
					?>
				</div>
				<?php
				if ( $hestia_blog_sidebar_layout === 'sidebar-right' ) {
					get_sidebar();
				}
				?>
			</div>
		</div>
	</div>
	<?php do_action( 'hestia_after_archive_content' ) ?>

	<?php get_footer(); ?>
