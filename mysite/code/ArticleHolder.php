<?php

class ArticleHolder extends Page{

		private static $has_many = array(

		);
		private static $allowed_children = array('ArticlePage');

}

class ArticleHolder_Controller extends Page_Controller{

}