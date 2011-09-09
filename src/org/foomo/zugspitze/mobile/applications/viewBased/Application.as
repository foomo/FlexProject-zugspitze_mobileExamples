/*
 * This file is part of the foomo Opensource Framework.
 *
 * The foomo Opensource Framework is free software: you can redistribute it
 * and/or modify it under the terms of the GNU Lesser General Public License as
 * published  by the Free Software Foundation, either version 3 of the
 * License, or (at your option) any later version.
 *
 * The foomo Opensource Framework is distributed in the hope that it will
 * be useful, but WITHOUT ANY WARRANTY; without even the implied warranty
 * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License along with
 * the foomo Opensource Framework. If not, see <http://www.gnu.org/licenses/>.
 */
package org.foomo.zugspitze.mobile.applications.viewBased
{
	import flash.events.Event;

	import mx.events.FlexEvent;

	import org.foomo.zugspitze.mobile.applications.viewBased.controllers.ApplicationController;
	import org.foomo.zugspitze.mobile.applications.viewBased.models.ApplicationModel;
	import org.foomo.zugspitze.mobile.applications.viewBased.views.ApplicationView;
	import org.foomo.zugspitze.mobile.core.ZugspitzeViewNavigatorApplication;

	/**
	 * @link    http://www.foomo.org
	 * @license http://www.gnu.org/licenses/lgpl.txt
	 * @author  franklin <franklin@weareinteractive.com>
	 */
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
			this.addEventListener(ZugspitzeEvent.ZUGSPITZE_COMPLETE, this.zugspitzeCompleteHandler);
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

		private function zugspitzeCompleteHandler(event:ZugspitzeEvent):void
		{
			ApplicationController(this.controller).initialize();
		}
	}
}