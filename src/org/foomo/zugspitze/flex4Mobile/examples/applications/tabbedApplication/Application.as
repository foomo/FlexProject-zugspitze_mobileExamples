package org.foomo.zugspitze.flex4Mobile.examples.applications.tabbedApplication
{
	import flash.events.Event;

	import mx.events.FlexEvent;

	import org.foomo.zugspitze.apps.ZugspitzeTabbedViewNavigatorApplication;
	import org.foomo.zugspitze.flex4Mobile.examples.applications.tabbedApplication.controllers.ApplicationController;
	import org.foomo.zugspitze.flex4Mobile.examples.applications.tabbedApplication.models.ApplicationModel;
	import org.foomo.zugspitze.flex4Mobile.examples.applications.tabbedApplication.views.ApplicationView;

	public class Application extends ZugspitzeTabbedViewNavigatorApplication
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