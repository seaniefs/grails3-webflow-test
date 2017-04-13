<!doctype html>
<html>
<head>
    <title><g:if env="development">A Dummy view</g:if><g:else>Error</g:else></title>
    <meta name="layout" content="main">
    <g:if env="development"><asset:stylesheet src="errors.css"/></g:if>
</head>
I am a dummy page - go to the <g:link event="toSecond" params="${[execution: params.execution]}">To the second...</g:link>

We have been here ${count} times...

<g:link event="toSubflow" params="${[execution: params.execution]}">Let's go to the subflow...</g:link>

</body>
</html>