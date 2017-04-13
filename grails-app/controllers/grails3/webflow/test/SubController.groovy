package grails3.webflow.test

class SubController {

    def subFlow = {

        input {
            inputVal(required: true, type: Number.class)
        }

        index {
            on("exit") {
            }.to("exit")
        }
        exit {
            output {
                returnValues {
                    [increment:100]
                }
            }
        }
    }
}
