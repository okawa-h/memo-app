package view;

import js.jquery.JQuery;
import js.jquery.Event;
import view.*;
import view.page.*;

class Page {

	private var _pagename:String;
	private var _jParent :JQuery;

	/* =======================================================================
		Constoractor
	========================================================================== */
	public function new(pagename:String):Void {

		_pagename = pagename;
		setHTML();
		_jParent  = new JQuery('[data-content="${_pagename}"]');

		_jParent.find('.button-save').on({ 'click':save });

	}

	/* =======================================================================
		Set HTML
	========================================================================== */
	private function setHTML():Void {}

		/* =======================================================================
			Save
		========================================================================== */
		public function save():Void {}

		/* =======================================================================
			Set
		========================================================================== */
		public function set(data:Dynamic):Void {}

		/* =======================================================================
			Show
		========================================================================== */
		public function show():Void {

			_jParent.show().addClass('current');
			focus();

		}

		/* =======================================================================
			Hide
		========================================================================== */
		public function hide():Void {

			_jParent.hide().removeClass('current');

		}

		/* =======================================================================
			On Keyup
		========================================================================== */
		public function onKeyup():Void {}

		/* =======================================================================
			Is Current
		========================================================================== */
		public function isCurrent():Bool {

			return _jParent.hasClass('current');

		}

		/* =======================================================================
			Get Pagename
		========================================================================== */
		public function getPagename():String {

			return _pagename;

		}

		/* =======================================================================
			Get JParent
		========================================================================== */
		public function getJParent():JQuery {

			return _jParent;

		}

		/* =======================================================================
			On Enter Key
		========================================================================== */
		public function onEnterKey():Void {}

	/* =======================================================================
		Focus
	========================================================================== */
	private function focus():Void {}

	/* =======================================================================
		Get Data
	========================================================================== */
	private function getData(data:Dynamic):Dynamic {

		return Reflect.getProperty(data,_pagename);

	}

}
