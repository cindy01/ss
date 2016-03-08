<?php

class ArticlePage extends Page{

	private static $db = array(
		'Date' => 'Date',
		'Teaser' => 'Text',
		'Author' => 'Varchar'

		);

	private static $has_one = array(

		);

	public function getCMSFields(){

		$fields = parent::getCMSFields();
		 $fields->addFieldToTab('Root.Main', DateField::create('Date','Date of article')
          ->setConfig('showcalendar', true)->setConfig('datavalueformat', 'dd/MM/yyyy'),'Content');
		$fields -> addFieldToTab('Root.Main', TextareaField::create('Teaser')->setDescription('Display in the section'),'Content');
		$fields -> addFieldToTab('Root.Main', TextField::create('Author','Articl of author'),'Content');

		return $fields;




	}

	private static $can_be_root = false;

}

class ArticlePage_Controller extends Page_Controller{

}