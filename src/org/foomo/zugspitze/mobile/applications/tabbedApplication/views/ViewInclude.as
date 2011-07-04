import org.foomo.zugspitze.mobile.applications.tabbedApplication.Application;
import org.foomo.zugspitze.mobile.applications.tabbedApplication.controllers.ApplicationController;
import org.foomo.zugspitze.mobile.applications.tabbedApplication.models.ApplicationModel;
import org.foomo.zugspitze.core.ZugspitzeView;

import flash.display.DisplayObject;

/**
 * @private
 */
[Bindable]
public var application:Application = Application(ZugspitzeView.init(DisplayObject(this)));

/**
 * @private
 */
[Bindable]
public var view:ApplicationView;

/**
 * @private
 */
[Bindable]
public var model:ApplicationModel;

/**
 * @private
 */
[Bindable]
public var controller:ApplicationController;