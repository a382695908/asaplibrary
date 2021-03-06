/*
Copyright 2009 by the authors of asaplibrary, http://asaplibrary.org

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

   	http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
 */
package org.asaplibrary.ui.video {
	import flash.events.Event;

	public class CustomNetStreamEvent extends Event {
		/** Generic event type */
		public static const _EVENT : String = "onNetStreamEvent";
		public static const METADATA : String = "onMetaData";
		public static const CUEPOINT : String = "onCuePoint";
		public static const PLAYSTATUS : String = "onPlayStatus";
		/** specific type of event */
		public var subtype : String;
		/** data for event */
		public var data : Object;

		public function CustomNetStreamEvent(inSubtype : String, inData : Object = null) {
			super(_EVENT);

			subtype = inSubtype;
			data = inData;
		}

		/**
		Creates a copy
		 */
		public override function clone() : Event {
			return new CustomNetStreamEvent(subtype, data);
		}
	}
}