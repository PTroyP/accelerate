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
define('DB_NAME', "accelerate");

/** MySQL database username */
define('DB_USER', "root");

/** MySQL database password */
define('DB_PASSWORD', "root");

/** MySQL hostname */
define('DB_HOST', "localhost");

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
define('AUTH_KEY', '895d31d4c212bb072259984323abf8f21e0b21d0390995872ef61f1e95841a54');
define('SECURE_AUTH_KEY', '090aeea557722a2c5201369cc5b5d3d53126a72a6d1c28154d6c74cc7dfa4615');
define('LOGGED_IN_KEY', '892b5620440055b1785ccab3b59b559af8726ba0053ec256c656aa0e4cfd8d16');
define('NONCE_KEY', 'f67978573ddbff3334bd1d3b2d6b873242b01ec9d0697c3a1085864df155d403');
define('AUTH_SALT', 'da1484df154422f793b98ec53bfa428484e4f04ca95e97dd57c2f5210d5b3d17');
define('SECURE_AUTH_SALT', '186dc18946ac14091ace68c30a331704a8b5d1fa26b9d13df6de1f0a92ddbcf4');
define('LOGGED_IN_SALT', '87a94758b2e522c28306f386f12692c75e37e3ab16c389a1c0139e10484bf6a4');
define('NONCE_SALT', '3e7e22deed5f03199affdac44f54ef94db8239bfc25f650939fbe47dc8eb97f1');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';
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
