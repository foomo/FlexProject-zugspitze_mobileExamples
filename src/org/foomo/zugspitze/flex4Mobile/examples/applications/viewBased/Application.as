package org.foomo.zugspitze.flex4Mobile.examples.applications.viewBased
{
	import flash.events.Event;

	import mx.events.FlexEvent;

	import org.foomo.zugspitze.apps.ZugspitzeViewNavigatorApplication;
	import org.foomo.zugspitze.flex4Mobile.examples.applications.viewBased.controllers.ApplicationController;
	import org.foomo.zugspitze.flex4Mobile.examples.applications.viewBased.models.ApplicationModel;
	import org.foomo.zugspitze.flex4Mobile.examples.applications.viewBased.views.ApplicationView;

	public class Application extends ZugspitzeViewNavigatorApplication
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