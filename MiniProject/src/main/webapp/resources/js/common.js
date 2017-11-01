/**
 * 공통 모듈
 * @returns
 */
function Common() { 
}

/**
 * 도메인과 context path가 포함된 경로를 돌려준다.
 */
Common.getLocationPath = function(url, query) {
	return location.protocol + '//' + location.host + Common.getContextPath();
}

/**
 * context path를 구한다
 */
Common.getContextPath = function(){
	var hostIndex = location.href.indexOf( location.host ) + location.host.length;
	return location.href.substring( hostIndex, location.href.indexOf('/', hostIndex + 1) );
}

/**
 * 콘솔에 log를 남긴다.
 */
Common.consoleLog = function(msg) {
	if ( window.console && console.log ) {
		console.log(msg);
	}
}

/**
 * URL로 이동시킨다.
 */
Common.goUrl = function(url) {
	var temp = url;
	if(!url)
	{
		if(url.charAt(0) != '/')
		{
			temp = "/" + temp;
		}
	}
	location.href = Common.getContextPath() + temp;
}

/**
 * encoding된 url를 반환한다.
 */
Common.encode = function(value) {
	return encodeURIComponent(value);
}

/**
 * ajax 호출 json
 */
Common.ajax = function(url) {
	var obj = null;
	$.ajax({'url':url, 
			'dataType':'json', 
			'async':true, 
			'success':function(data, status) { obj = data; },
			'error':function(xhr) {
				if (agent.indexOf("msie") != -1){
					window.status = 'json error: ' + url;
				} else{
					Common.consoleLog('JSON load Error :'+url);
				}
			}
	});
	return obj;
}
