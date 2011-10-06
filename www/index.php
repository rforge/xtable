
<!-- This is the project specific website template -->
<!-- It can be changed as liked or replaced by other content -->

<?php

$domain=ereg_replace('[^\.]*\.(.*)$','\1',$_SERVER['HTTP_HOST']);
$group_name=ereg_replace('([^\.]*)\..*$','\1',$_SERVER['HTTP_HOST']);
$themeroot='r-forge.r-project.org/themes/rforge/';

echo '<?xml version="1.0" encoding="UTF-8"?>';
?>
<!DOCTYPE html
	PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en   ">

  <head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<title><?php echo $group_name; ?></title>
	<link href="http://<?php echo $themeroot; ?>styles/estilo1.css" rel="stylesheet" type="text/css" />
  </head>

<body>

<!-- R-Forge Logo -->
<table border="0" width="100%" cellspacing="0" cellpadding="0">
<tr><td>
<a href="http://r-forge.r-project.org/"><img src="http://<?php echo $themeroot; ?>/imagesrf/logo.png" border="0" alt="R-Forge Logo" /> </a> </td> </tr>
</table>


<!-- get project title  -->
<!-- own website starts here, the following may be changed as you like -->

<H1>Overview</H1>

<?php if ($handle=fopen('http://'.$domain.'/export/projtitl.php?group_name='.$group_name,'r')){
$contents = '';
while (!feof($handle)) {
	$contents .= fread($handle, 8192);
}
fclose($handle);
echo $contents; } ?>

<p> The <strong>project summary page</strong> is <a href="http://<?php echo $domain; ?>/projects/<?php echo $group_name; ?>/"><strong>here</strong></a>. </p>

<P> The <strong>CRAN package page</strong> is <a href="http://cran.r-project.org/web/packages/xtable/index.html"><strong>here</strong></a>.

<!-- end of project description -->

<H1>Feature Requests, Bugs, and Support</H1>

<P>
The <b>xtable</b> project is hosted on <a href="http://r-forge.r-project.org/projects/xtable/">R-Forge</a>.
</P>

<P>
The project web site includes a <a href="https://r-forge.r-project.org/tracker/?group_id=1228">Tracker</a>
issue tracking system with sections for:
</P>

<ul>
	<li><a href="https://r-forge.r-project.org/tracker/?atid=4862&group_id=1228&func=browse">Support</a></li>
	<li><a href="https://r-forge.r-project.org/tracker/?atid=4864&group_id=1228&func=browse">Feature Requests</a></li>
	<li><a href="https://r-forge.r-project.org/tracker/?atid=4861&group_id=1228&func=browse">Bugs</a></li>
	<li><a href="https://r-forge.r-project.org/tracker/?atid=4863&group_id=1228&func=browse">Patches</a></li>
</ul>

<P>
If you are logged into R-Forge you will be able to create new items.
</P>

<H2>Change Policy</H2>

<P>
The <b>xtable</b> package is a dependency of other packages, and is also used in clinical reporting scenarios where reproducibility is necessary.  Hence stability and backwards compatibility are key criteria when assessing changes.  Changes that break backwards compatibility will not be considered for inclusion.
</P>

</body>
</html>
