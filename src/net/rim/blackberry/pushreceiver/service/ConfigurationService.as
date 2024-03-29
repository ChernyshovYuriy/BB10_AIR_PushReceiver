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

package net.rim.blackberry.pushreceiver.service
{
	import net.rim.blackberry.pushreceiver.vo.Configuration;
	
	/**
	 * Offers services related to the configuration settings of the application.
	 * Note: In our application, we expose the configuration settings to the user.
	 * However, in an actual push application, you would likely have these settings
	 * hard coded under the covers.  We expose them in our application for testing /
	 * debugging purposes.
	 */
	public interface ConfigurationService
	{
		/**
		 * Stores the configuration in the persistent store
		 */
		function storeConfiguration(config:Configuration):void;

		/**
		 * Deletes the configuration in the persistent store
		 */
		function deleteConfiguration():void;
		
		/**
		 * Returns whether there is the configuration already in the persistent store
		 */
		function hasConfiguration():Boolean;
		
		/**
		 * Returns the configuration in the persistent store
		 */
		function getConfiguration():Configuration;
	}
}