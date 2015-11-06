<!DOCTYPE html>
<html lang="{$core.language.iso}" dir="{$core.language.direction}">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=Edge">
		<title>{ia_print_title}</title>
		<meta name="description" content="{$core.page['meta-description']}">
		<meta name="keywords" content="{$core.page['meta-keywords']}">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta name="generator" content="Subrion CMS {$core.config.version} - Open Source Content Management System">
		<meta name="robots" content="index">
		<meta name="robots" content="follow">
		<meta name="revisit-after" content="1 day">
		<base href="{$smarty.const.IA_URL}">

		<!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
		<!--[if lt IE 9]>
			<script src="{$core.page.nonProtocolUrl}js/utils/shiv.js"></script>
		<![endif]-->

		<link href='//fonts.googleapis.com/css?family=Roboto+Condensed:400,700&subset=latin,cyrillic-ext' rel='stylesheet' type='text/css'>
		<link href="{$core.page.nonProtocolUrl}plugins/countdown/templates/front/css/style.css" rel="stylesheet" type="text/css">
	</head>
	<body>
		<div class="wrapper">
			<div class="content">
				<h1>{$core.config.countdown_page_title}</h1>
				<p class="description">{$core.config.countdown_page_description}</p>

				<div class="countdown countdown-container">
					<div class="clock row">
						<div class="clock-item clock-days countdown-time-value">
							<div class="wrap">
								<div class="inner">
									<div id="canvas-days" class="clock-canvas"></div>

									<div class="text">
										<p class="val">0</p>
										<p class="type-days type-time">DAYS</p>
									</div><!-- /.text -->
								</div><!-- /.inner -->
							</div><!-- /.wrap -->
						</div><!-- /.clock-item -->

						<div class="clock-item clock-hours countdown-time-value">
							<div class="wrap">
								<div class="inner">
									<div id="canvas-hours" class="clock-canvas"></div>

									<div class="text">
										<p class="val">0</p>
										<p class="type-hours type-time">HOURS</p>
									</div><!-- /.text -->
								</div><!-- /.inner -->
							</div><!-- /.wrap -->
						</div><!-- /.clock-item -->

						<div class="clock-item clock-minutes countdown-time-value">
							<div class="wrap">
								<div class="inner">
									<div id="canvas-minutes" class="clock-canvas"></div>

									<div class="text">
										<p class="val">0</p>
										<p class="type-minutes type-time">MINUTES</p>
									</div><!-- /.text -->
								</div><!-- /.inner -->
							</div><!-- /.wrap -->
						</div><!-- /.clock-item -->

						<div class="clock-item clock-seconds countdown-time-value">
							<div class="wrap">
								<div class="inner">
									<div id="canvas-seconds" class="clock-canvas"></div>

									<div class="text">
										<p class="val">0</p>
										<p class="type-seconds type-time">SECONDS</p>
									</div><!-- /.text -->
								</div><!-- /.inner -->
							</div><!-- /.wrap -->
						</div><!-- /.clock-item -->
					</div><!-- /.clock -->
				</div><!-- /.countdown-wrapper -->
			</div>
		</div>

		<script src="{$core.page.nonProtocolUrl}js/jquery/jquery.js"></script>
		<script src="{$core.page.nonProtocolUrl}plugins/countdown/js/front/kinetic.js"></script>
		<script src="{$core.page.nonProtocolUrl}plugins/countdown/js/front/jquery.final-countdown.min.js"></script>

		<script type="text/javascript">
$(function()
{
	$('.countdown').final_countdown({
		'start': {$core.config.countdown_start_date|@strtotime},
		'end': {$core.config.countdown_end_date|@strtotime},
		'now': {$smarty.now}
	});
});
		</script>
	</body>
</html>