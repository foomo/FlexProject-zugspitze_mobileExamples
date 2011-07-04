import org.foomo.zugspitze.mobile.applications.viewBased.Application;
import org.foomo.zugspitze.mobile.applications.viewBased.controllers.ApplicationController;
import org.foomo.zugspitze.mobile.applications.viewBased.models.ApplicationModel;
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