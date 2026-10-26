-- .wpvp is registered as a single command whose handler parses its own subcommands, so the core
-- has no 'wpvp help', 'wpvp spot', ... commands and logs every one of these rows as an error at
-- startup ("Table `command` contains data for non-existant command"). Only the 'wpvp' row is used.
DELETE FROM `command` WHERE `name` LIKE 'wpvp %';
