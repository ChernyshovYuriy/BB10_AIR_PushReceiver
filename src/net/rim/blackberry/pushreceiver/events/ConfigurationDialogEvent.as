/*
* Copyright (c) 2012 Research In Motion Limited.
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
* http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/

package net.rim.blackberry.pushreceiver.events
{
	import flash.events.Event;
	
	/**
	 * Event dispatched when the configuration settings are set.
	 */
	public class ConfigurationDialogEvent extends Event
	{
		public static const BUTTON_CLICKED:String = "buttonClicked";
		
		public var providerApplicationId:String = null;
		public var usingPublicPushProxyGateway:Boolean = false;
		public var pushProxyGatewayUrl:String = null;
		public var useSDKAsPushInitiator:Boolean = true;
		public var launchApplicationOnPush:Boolean = false;
		public var pushInitiatorUrl:String = null;
		
		public function ConfigurationDialogEvent(type:String, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
		
		override public function toString() : String
		{
			var str:String = super.toString();
			
			str += ", providerApplicationId " + this.providerApplicationId;
			str += ", pushInitiatorUrl " + this.pushInitiatorUrl;
			str += ", pushProxyGatewayUrl " + this.pushProxyGatewayUrl;
			str += ", useSDKAsPushInitiator " + this.useSDKAsPushInitiator;
			str += ", launchApplicationOnPush " + this.launchApplicationOnPush;
			str += ", usingPublicPushProxyGateway " + this.usingPublicPushProxyGateway;
			
			return str;
		}
	}
}