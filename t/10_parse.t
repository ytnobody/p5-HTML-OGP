use strict;
use warnings;
use Test::More;
use HTML::OGP;

my $html = do { local $/; <DATA> };

my $res = HTML::OGP->parse($html);
my $expected = {
    'article' => {
        'modified_time' => '2020-08-24JST10:22:0132400',
        'published_time' => '2020-08-24JST10:22:0132400'
    },
    'og' => {
        'description' => 'OGPとはWebサイトの内容をSNS上でシェアするための仕組みです。OGPにはWebの記事がSNSにシェアされた際に表示する情報を記述しておく必要がありますが、どのような項目をどこに記述すればいいのかがわからなかったり、シェアされた際のサムネイルとなるOGP画像のサイズが適切でないためにぼやけてしまうなどの経験のある人は多いのではないでしょうか。Webサイトの記事やページをSNSでシェアされることは、新しいユーザーを獲得するきっかけになります。初めて自社サイトをみるSNSユーザーに、OGPの設定ミスでマイナスイメージを与えないように、今回はOGP設定で大切なポイントを解説していますので、ぜひご覧ください。',
        'image' => 'https://www.itra.co.jp/uploads/media/2020/08/20200820155940.jpg',
        'site_name' => 'WebMedia',
        'title' => 'OGPとは？OGPの基本からOGP画像のサイズや設定方法を分かりやすく解説',
        'type' => 'website',
        'updated_time' => '2020-08-24JST10:22:0132400',
        'url' => 'https://www.itra.co.jp/webmedia/what-is-ogp.html'
    },
    'twitter' => {
        'card' => 'summary_large_image',
        'description' => 'OGPとはWebサイトの内容をSNS上でシェアするための仕組みです。OGPにはWebの記事がSNSにシェアされた際に表示する情報を記述しておく必要がありますが、どのような項目をどこに記述すればいいのかがわからなかったり、シェアされた際のサムネイルとなるOGP画像のサイズが適切でないためにぼやけてしまうなどの経験のある人は多いのではないでしょうか。Webサイトの記事やページをSNSでシェアされることは、新しいユーザーを獲得するきっかけになります。初めて自社サイトをみるSNSユーザーに、OGPの設定ミスでマイナスイメージを与えないように、今回はOGP設定で大切なポイントを解説していますので、ぜひご覧ください。',
        'image' => 'https://www.itra.co.jp/uploads/media/2020/08/20200820155940.jpg',
        'site' => 'WebMedia',
        'title' => 'OGPとは？OGPの基本からOGP画像のサイズや設定方法を分かりやすく解説',
        'url' => 'https://www.itra.co.jp/webmedia/what-is-ogp.html'
    }
};

is_deeply $res, $expected;

done_testing;

__DATA__


<!DOCTYPE html>
<html lang="ja">
<head>
	<meta charset="utf-8">
	<meta http-equiv="x-ua-compatible" content="ie=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
		 <title>OGPとは？OGPの基本からOGP画像のサイズや設定方法を分かりやすく解説 | Webmedia </title>
		<meta name="title" content="OGPとは？OGPの基本からOGP画像のサイズや設定方法を分かりやすく解説"/>
	<meta name="description" content="OGPとはWebサイトの内容をSNS上でシェアするための仕組みです。OGPにはWebの記事がSNSにシェアされた際に表示する情報を記述しておく必要がありますが、どのような項目をどこに記述すればいいのかがわからなかったり、シェアされた際のサムネイルとなるOGP画像のサイズが適切でないためにぼやけてしまうなどの経験のある人は多いのではないでしょうか。

Webサイトの記事やページをSNSでシェアされることは、新しいユーザーを獲得するきっかけになります。初めて自社サイトをみるSNSユーザーに、OGPの設定ミスでマイナスイメージを与えないように、今回はOGP設定で大切なポイントを解説していますので、ぜひご覧ください。"/>
	<meta name="keywords" content="ITRA, CMS, itra, cms, content, management, system, iCMS, icms"/>
	<meta name="robots" content="index,follow"/>
	
		
	<meta property="article:published_time" content="2020-08-24JST10:22:0132400" />
	<meta property="article:modified_time" content="2020-08-24JST10:22:0132400" />
	<meta property="og:updated_time" content="2020-08-24JST10:22:0132400" />
	<meta property="og:image" content="https://www.itra.co.jp/uploads/media/2020/08/20200820155940.jpg" />

	<!-- Facebook:カード用-->
	 <meta property="og:url" content="https://www.itra.co.jp/webmedia/what-is-ogp.html"/>
	 <meta property="og:type" content="website"/>
	 <meta property="og:site_name" content="WebMedia"/>
	 <meta property="og:title" content="OGPとは？OGPの基本からOGP画像のサイズや設定方法を分かりやすく解説"/>
	 <meta property="og:description" content="OGPとはWebサイトの内容をSNS上でシェアするための仕組みです。OGPにはWebの記事がSNSにシェアされた際に表示する情報を記述しておく必要がありますが、どのような項目をどこに記述すればいいのかがわからなかったり、シェアされた際のサムネイルとなるOGP画像のサイズが適切でないためにぼやけてしまうなどの経験のある人は多いのではないでしょうか。

Webサイトの記事やページをSNSでシェアされることは、新しいユーザーを獲得するきっかけになります。初めて自社サイトをみるSNSユーザーに、OGPの設定ミスでマイナスイメージを与えないように、今回はOGP設定で大切なポイントを解説していますので、ぜひご覧ください。"/>

    <!-- twitter:カード用-->
    <meta name="twitter:card" content="summary_large_image">
    <meta name="twitter:site" content="WebMedia">
    <meta name="twitter:title" content="OGPとは？OGPの基本からOGP画像のサイズや設定方法を分かりやすく解説">
    <meta name="twitter:description" content="OGPとはWebサイトの内容をSNS上でシェアするための仕組みです。OGPにはWebの記事がSNSにシェアされた際に表示する情報を記述しておく必要がありますが、どのような項目をどこに記述すればいいのかがわからなかったり、シェアされた際のサムネイルとなるOGP画像のサイズが適切でないためにぼやけてしまうなどの経験のある人は多いのではないでしょうか。

Webサイトの記事やページをSNSでシェアされることは、新しいユーザーを獲得するきっかけになります。初めて自社サイトをみるSNSユーザーに、OGPの設定ミスでマイナスイメージを与えないように、今回はOGP設定で大切なポイントを解説していますので、ぜひご覧ください。">
    <meta name="twitter:image" content="https://www.itra.co.jp/uploads/media/2020/08/20200820155940.jpg">
    <meta name="twitter:url" content="https://www.itra.co.jp/webmedia/what-is-ogp.html">

	<link type="text/css" rel="stylesheet" href="/front/webmedia/common/fonts/font-awesome/css/font-awesome.min.css">
	<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-6jHF7Z3XI3fF4XZixAuSu0gGKrXwoX/w3uFPxC56OtjChio7wtTGJWRW53Nhx6Ev" crossorigin="anonymous">
	<link type="text/css" rel="stylesheet" href="/front/webmedia/common/css/styles.css?v=20200609">

	<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=G-PCSK1ZDQBF"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'G-PCSK1ZDQBF');
</script>
<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-284257-1"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-284257-1');
</script>

<!-- User Heat Tag -->
<script type="text/javascript">
(function(add, cla){window['UserHeatTag']=cla;window[cla]=window[cla]||function(){(window[cla].q=window[cla].q||[]).push(arguments)},window[cla].l=1*new Date();var ul=document.createElement('script');var tag = document.getElementsByTagName('script')[0];ul.async=1;ul.src=add;tag.parentNode.insertBefore(ul,tag);})('//uh.nakanohito.jp/uhj2/uh.js', '_uhtracker');_uhtracker({id:'uhA5dLzigI'});
</script>
<!-- End User Heat Tag -->

</head>
<body>
    <div style="display:none">
