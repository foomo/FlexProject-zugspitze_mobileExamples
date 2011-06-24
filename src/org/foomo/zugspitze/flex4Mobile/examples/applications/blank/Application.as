package org.foomo.zugspitze.flex4Mobile.examples.applications.blank
{
	import flash.events.Event;

	import mx.events.FlexEvent;

	import org.foomo.zugspitze.apps.ZugspitzeApplication;
	import org.foomo.zugspitze.flex4Mobile.examples.applications.blank.controllers.ApplicationController;
	import org.foomo.zugspitze.flex4Mobile.examples.applications.blank.models.ApplicationModel;
	import org.foomo.zugspitze.flex4Mobile.examples.applications.blank.views.ApplicationView;

	public class Application extends ZugspitzeApplication
	{
		//-----------------------------------------------------------------------------------------
		// ~ Constructor
		//-----------------------------------------------------------------------------------------

		public function Application()
		{
			super();
			this.viewClass = ApplicationView;
			this.modelClass = ApplicationModel;
			this.controllerClass = ApplicationController;
			this.addEventListener(FlexEvent.CREATION_COMPLETE, this.creationCompleteHandler);
		}

		//-----------------------------------------------------------------------------------------
		// ~ Public static application singleton
		//-----------------------------------------------------------------------------------------

		public static function get application():Application
		{
			return Application(_zugspitze.application)
		}

		//-----------------------------------------------------------------------------------------
		// ~ Private Eventhandler
		//-----------------------------------------------------------------------------------------

		private function creationCompleteHandler(event:Event):void
		{
			ApplicationController(this.controller).initialize();
		}
	}
}