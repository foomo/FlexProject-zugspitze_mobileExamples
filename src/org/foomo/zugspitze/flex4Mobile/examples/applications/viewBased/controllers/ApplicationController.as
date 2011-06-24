package org.foomo.zugspitze.flex4Mobile.examples.applications.viewBased.controllers
{
	import org.foomo.zugspitze.flex4Mobile.examples.applications.viewBased.models.ApplicationModel;
	import org.foomo.zugspitze.flex4Mobile.examples.applications.viewBased.views.ApplicationView;
	import org.foomo.zugspitze.core.ZugspitzeController;

	public class ApplicationController extends ZugspitzeController
	{
		//-----------------------------------------------------------------------------------------
		// ~ Initialize application
		//-----------------------------------------------------------------------------------------

		public function initialize():void
		{
		}

		//-----------------------------------------------------------------------------------------
		// ~ Private helper methods
		//-----------------------------------------------------------------------------------------

		private function get model():ApplicationModel
		{
			return this.zugspitze.model as ApplicationModel
		}

		private function get view():ApplicationView
		{
			return this.zugspitze.view as ApplicationView
		}
	}
}