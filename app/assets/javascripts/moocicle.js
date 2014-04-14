/*
mooCicle
Javascript image cicle slideshow
*/
var zindex=300;
var duration=600; //скорость
var topadd=40; //вверх - вниз перестановка картинки
var leftadd=20; //?


var moocicle = {
	init: function(){
		var images=$$('ul#moocircle li img');
		$('moocircle').setStyles({
			'margin':0,
			'padding':0,
			'height':images[0].getStyle('height'),
			'width':images[0].getStyle('width'),
			'list-style':'none',
			'display':'block',
			'position':'relative'
		});
		var listet=$$('ul#moocircle li');
		listet.setStyles({
			'top':0,
			'left':0,
			'position':'absolute'
		});
		nlist=listet.length;
		var slidefxs = [];
		var slidefxs1 = [];
		listet.each(function(el, i){
			zindex++;
			el.setStyle('z-index',zindex);
			el.addEvent('click', function(e){
			
				$$('body').setStyle('overflow-x', 'hidden');
				slidefxs[i] = new Fx.Style(el, 'left', {
					duration: duration,
					transition: Fx.Transitions.linear,
					wait: true
				});
				slidefxs[i].start.delay(0, slidefxs[i], (el.getStyle('width')+leftadd));
				
				slidefxs1[i] = new Fx.Style(el, 'top', {
					duration: duration,
					transition: Fx.Transitions.linear,
					wait: true
				});
				slidefxs1[i].start.delay(0, slidefxs1[i], topadd);
				
				moocicle.nextimage.pass([el, listet]).delay(duration);
				
				slidefxs[i] = new Fx.Style(el, 'left', {
					duration: duration,
					transition: Fx.Transitions.backOut,
					wait: true
				});
				slidefxs[i].start.delay(duration, slidefxs[i], 0);
				
				slidefxs1[i] = new Fx.Style(el, 'top', {
					duration: duration,
					transition: Fx.Transitions.backOut,
					wait: true
				});
				slidefxs1[i].start.delay(duration, slidefxs1[i], 0);
				moocicle.reactive.delay((duration*2)+1);
			});	
			
		});
	},
	nextimage: function(el,listet){
		el.setStyle('z-index',((el.getStyle('z-index').toInt()-nlist)+1));
		listet.each(function(other, j){
			if (other != el){
				other.setStyle('z-index',(other.getStyle('z-index').toInt()+1));					
			}
		});
	},
	reactive: function(){
		$$('body').setStyle('overflow-x', 'visible');
	}

}
window.addEvent("load",moocicle.init);
