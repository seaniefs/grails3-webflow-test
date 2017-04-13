package grails3.webflow.test

class DummyController {

    def dummyFlow = {
        start {
            action {
                flow.count = 0
                return success()
            }
            on("success").to( "dummy" )
        }
        dummy {
            onRender {
                flow.count = flow.count + 1
            }
            on("toSecond") {
            }.to("dummy2")
            on("toSubflow") {
            }.to("toSubflow")
        }
        dummy2 {
            onRender {
                flow.count = flow.count + 1
            }
            on("toFirst") {
            }.to("dummy")
        }
        toSubflow {
            subflow(controller: 'sub', action: 'sub', input: [inputVal: {flow.count}])
            on("exit") {
                flow.count += currentEvent.attributes.returnValues.increment
            }.to("dummy")
        }
    }
}
