<?php

class Region extends Dataobject(){
	

	private static $db = array(
		'Title' =>'Varchar',
		'Description'= 'Text'
		);

	private static $has_one = array(
		'Photo' => 'Image',
		'RegionsPage' => 'RegionsPage'
		);

	public functon getCMSFields(){
		$fields = FieldList::create(
			TextField::create('Title'), TextareaField::creat('Description'),$uploader = UploadField::create('Photo')
			);
		$uploader->setFolderName('region-image')->getValidator()->setAllowedExtentions(array('png','jpg','gif','jpeg'));
		return $fields;
	}

}