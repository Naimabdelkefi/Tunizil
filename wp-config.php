<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'wpp');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', '');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'I,3]ppuzv5 [sG=O]n(}?+m1u_Ok~3jS=awvquNv=.PMH)$MLRw;StD)~%/t@aD]');
define('SECURE_AUTH_KEY',  '`l}{zyF=|UU&73.DV$>?U~`~0>SkFrI;|mk0gV(?Q:-(e~m?Ze9(;fa*KTzKw?2t');
define('LOGGED_IN_KEY',    'mfwNM>QXzZ.{]p(~rM.1,H<jV[=/L]9G3jo``;~3v:a**=0-|H1JZ3o1(oa%+]cj');
define('NONCE_KEY',        '7FZ!i5j PYO*hpyUOlPi738yiT3.SJ4Rz1lBx`-Uok.W~/Np<n>6!`t#;X][=<W4');
define('AUTH_SALT',        '7Q*%LZ_AqfRigZE+9Gie ^Zx_*CwxdbGys){md#jdc3uV#e&7mlsbM5`@IQ 8@],');
define('SECURE_AUTH_SALT', '%{X/yjg@#nrq1TnN~9:XzVj5Of;l?llgN6#Ukzl1+)#fNdJO@!v0d!9Hr<6g/U+t');
define('LOGGED_IN_SALT',   'Q,u2RKdbVyuk?(0b^akhRGd%-AM=$ZA9>+?>WyVYtq5FSepJ8x-VWL SjwC_~C(i');
define('NONCE_SALT',       'c^t&p;?eoAWwyh~C=+z#;lNb3e@]uI.sU?qT+s#ulj=kOy!e,W#B|7XH/H(Xm#.X');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
