<?php

class ArticlePage extends Page{
	private static $db = array(
		'Date' => 'Date',
		'Teaser' => 'Text',
		'Author' => 'Varchar'
		);

	private static $has_one = array(
		'Photo' => 'Image',
		'Brochure' => 'File'
		);
	
		private static $can_be_root = false;

	public function getCMSValidator(){
		return new RequiredFields(array('Date'));
	}

	public function getCMSFields(){
		$fields = parent::getCMSFields();
		 $fields->addFieldToTab('Root.Main', DateField::create('Date','Date of article')
          ->setConfig('showcalendar', true)->setConfig('datavalueformat', 'dd/MM/yyyy'),'Content');
		$fields->addFieldToTab('Root.Main', TextareaField::create('Teaser')->setDescription('Display in the section'),'Content');
		$fields->addFieldToTab('Root.Main', TextField::create('Author','Articl of author'),'Content');

		$fields->addFieldToTab('Root.Attachment',$Photo = UploadField::create('Photo', 'Thumbnail Image'));
		$fields->addFieldToTab('Root.Attachment',$Brochure = UploadField::create('Brochure'));
		$Photo
			->setFolderName('Article-Images')
			->getValidator()->setAllowedExtensions(array('jpg','gif','jpeg','png'));
			//->setFolderName($this->URLSegment.'-Images')
			//->setFolderName('Images/'.$this->URLSegment.'-Images')
		$Brochure
			->setFolderName('Article-Brochure')
			->getValidator()->setAllowedExtensions(array('pdf','docx','doc'));
		return $fields;
	}



}


