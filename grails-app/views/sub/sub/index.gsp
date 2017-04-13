<!doctype html>
<html>
<head>
    <title><g:if env="development">A Subflow view</g:if><g:else>Error</g:else></title>
    <meta name="layout" content="main">
    <g:if env="development"><asset:stylesheet src="errors.css"/></g:if>
</head>
I am a subflow page - <g:link event="exit" params="${[execution: params.execution]}">Back to the main flow and increment count...</g:link>
<p>
    ${inputVal} was the counter value...
</p>
</body>
</html>