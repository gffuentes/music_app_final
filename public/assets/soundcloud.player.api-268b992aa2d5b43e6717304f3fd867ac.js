!function(){{var e=/msie (6|7|8)/i.test(navigator.userAgent)&&!/opera/i.test(navigator.userAgent);window.soundcloud={version:"0.1",debug:!1,_listeners:[],_redispatch:function(e,t,n){var i,o=this._listeners[e]||[],r="soundcloud:"+e;try{i=this.getPlayer(t)}catch(s){return void(this.debug&&window.console&&console.error("unable to dispatch widget event "+e+" for the widget id "+t,n,s))}window.jQuery?jQuery(i).trigger(r,[n]):window.Prototype&&$(i).fire(r,n);for(var d=0,a=o.length;a>d;d+=1)o[d].apply(i,[i,n]);this.debug&&window.console&&console.log(r,e,t,n)},addEventListener:function(e,t){this._listeners[e]||(this._listeners[e]=[]),this._listeners[e].push(t)},removeEventListener:function(e,t){for(var n=this._listeners[e]||[],i=0,o=n.length;o>i;i+=1)n[i]===t&&n.splice(i,1)},getPlayer:function(t){var n;try{if(!t)throw"The SoundCloud Widget DOM object needs an id atribute, please refer to SoundCloud Widget API documentation.";if(n=e?window[t]:document[t]){if(n.api_getFlashId)return n;throw"The SoundCloud Widget External Interface is not accessible. Check that allowscriptaccess is set to 'always' in embed code"}throw"The SoundCloud Widget with an id "+t+" couldn't be found"}catch(i){throw console&&console.error&&console.error(i),i}},onPlayerReady:function(e,t){this._redispatch("onPlayerReady",e,t)},onMediaStart:function(e,t){this._redispatch("onMediaStart",e,t)},onMediaEnd:function(e,t){this._redispatch("onMediaEnd",e,t)},onMediaPlay:function(e,t){this._redispatch("onMediaPlay",e,t)},onMediaPause:function(e,t){this._redispatch("onMediaPause",e,t)},onMediaBuffering:function(e,t){this._redispatch("onMediaBuffering",e,t)},onMediaSeek:function(e,t){this._redispatch("onMediaSeek",e,t)},onMediaDoneBuffering:function(e,t){this._redispatch("onMediaDoneBuffering",e,t)},onPlayerError:function(e,t){this._redispatch("onPlayerError",e,t)}}}}();