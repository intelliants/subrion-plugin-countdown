<?php
//##copyright##

if (iaView::REQUEST_HTML == $iaView->getRequestType())
{
	$iaView->disableLayout();
	$iaView->display('index');
}