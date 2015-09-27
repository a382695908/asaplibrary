﻿package demo.SimpleSite.event {
	import flash.events.Event;

	public class NavigationEvent extends Event {
		public static const _EVENT : String = "onNavigation";
		public var state : String;
		public var sender : Object;

		function NavigationEvent(inState : String, inSender : Object) {
			super(_EVENT, true, false);
			state = inState;
			sender = inSender;
		}
	}
}