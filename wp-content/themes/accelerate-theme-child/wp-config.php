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
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'joybubbl_WPAMR');

/** MySQL database username */
define('DB_USER', 'joybubbl_WPAMR');

/** MySQL database password */
define('DB_PASSWORD', 'BOZmIwtE!WCLuC4d#');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY', '2cc3367c06639bfa4cdbdbcba983d6341d642aa698f4073bc731ece090791fa3');
define('SECURE_AUTH_KEY', '9e307c89d1f54f432519076b228d4e91fbbd161c8e87b096b7cac013d314ce8b');
define('LOGGED_IN_KEY', 'c2da8e0a36a8b0b874a7d0d8a9cc73639fb5660c6915d65ceb7dc0dea115d3ea');
define('NONCE_KEY', '74f48128a8f85feddaa52302976cb06175d145d26d59d8b3a9b3a037201c6fc3');
define('AUTH_SALT', '470949ca41249c70fd2576ae8ee87b3bdda351f81113e27544b3a10c3f601019');
define('SECURE_AUTH_SALT', 'c6acb161752b59fb6d612e3b943c1131a778e8dac3e93d005f08ebf3e092a80b');
define('LOGGED_IN_SALT', '93531a288e145c9cd752e84499371fc6ab3426761ac4fd1101a5007b10e47139');
define('NONCE_SALT', 'fd63a0aea044a9f1a1c875f7d50c9edcc5c482d73c3018f78feecc2a9592c874');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'aFq_';
define('WP_CRON_LOCK_TIMEOUT', 120);
define('AUTOSAVE_INTERVAL', 300);
define('WP_POST_REVISIONS', 5);
define('EMPTY_TRASH_DAYS', 7);
define('WP_AUTO_UPDATE_CORE', true);

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
