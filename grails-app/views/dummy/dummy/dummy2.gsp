<!doctype html>
<html>
<head>
    <title><g:if env="development">A Second Dummy view</g:if><g:else>Error</g:else></title>
    <meta name="layout" content="main">
    <g:if env="development"><asset:stylesheet src="errors.css"/></g:if>
</head>
<body>
I am a second dummy page - <g:link event="toFirst" params="${[execution: params.execution]}">To the first...</g:link>

We have been here ${count} times...
</body>
</html>