use strict;
use warnings;
use Test::More;
use HTML::OGP;

my $html = do { local $/; <DATA> };

my $res = HTML::OGP->parse($html);
my $expected = {
	'twitter' => {
		'card' => 'summary',
		'description' => 'Uniform Resource Identifiers (absolute and relative)',
		'site' => 'metacpan',
		'title' => 'URI',
		'url' => 'https://metacpan.org/pod/URI'
	}
};

is_deeply $res, $expected;

done_testing;

__DATA__


<html lang="en-US">
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=5">
        <title>URI - Uniform Resource Identifiers (absolute and relative) - metacpan.org</title>
        <link rel="alternate" type="application/rss+xml" title="Recent CPAN Uploads of URI - MetaCPAN" href="/dist/URI/releases.rss" />
        <link href="/_assets/dd939318225a0cf923ff244bc524c412899d1ce1.css" rel="stylesheet" type="text/css">
        <link rel="search" href="/static/opensearch.xml" type="application/opensearchdescription+xml" title="MetaCPAN">
        <link rel="canonical" href="https://metacpan.org/pod/URI" />
        <meta name="description" content="Uniform Resource Identifiers (absolute and relative)" />
        <link rel="shortcut icon" href="/static/icons/favicon.ico">
        <link rel="apple-touch-icon" sizes="152x152" href="/static/icons/apple-touch-icon.png">
        <script src="/_assets/7687a783e620d8a8417b8d7121a0cae845d4b7c0.js" type="text/javascript" defer></script>
        <script>
          (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
          (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
          m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
          })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

          (function(skey, ga_id){
            ga('create', ga_id, {
              siteSpeedSampleRate : 100,
              storage             : 'none',
              clientId            : localStorage.getItem(skey)
            });
            ga(function(tracker) {
              localStorage.setItem(skey, tracker.get('clientId'));
            });
            ga('send', 'pageview');
          })('ga:clientId', 'UA-27829474-1');
        </script>
<meta name="twitter:card"        content="summary" />
<meta name="twitter:url"         content="https://metacpan.org/pod/URI" />
<meta name="twitter:title"       content="URI" />
<meta name="twitter:description" content="Uniform Resource Identifiers (absolute and relative)" />
<meta name="twitter:site"        content="metacpan" />
    </head>
    <body>