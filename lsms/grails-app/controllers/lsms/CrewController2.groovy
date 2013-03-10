package lsms

import org.springframework.dao.DataIntegrityViolationException

class CrewController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [crewInstanceList: Crew.list(params), crewInstanceTotal: Crew.count()]
    }

    def create() {
        [crewInstance: new Crew(params)]
    }

    def save() {
        def crewInstance = new Crew(params)
        if (!crewInstance.save(flush: true)) {
            render(view: "create", model: [crewInstance: crewInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'crew.label', default: 'Crew'), crewInstance.id])
        redirect(action: "show", id: crewInstance.id)
    }

    def show() {
        def crewInstance = Crew.get(params.id)
        if (!crewInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'crew.label', default: 'Crew'), params.id])
            redirect(action: "list")
            return
        }

        [crewInstance: crewInstance]
    }

    def edit() {
        def crewInstance = Crew.get(params.id)
        if (!crewInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'crew.label', default: 'Crew'), params.id])
            redirect(action: "list")
            return
        }

        [crewInstance: crewInstance]
    }

    def update() {
        def crewInstance = Crew.get(params.id)
        if (!crewInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'crew.label', default: 'Crew'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (crewInstance.version > version) {
                crewInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'crew.label', default: 'Crew')] as Object[],
                          "Another user has updated this Crew while you were editing")
                render(view: "edit", model: [crewInstance: crewInstance])
                return
            }
        }

        crewInstance.properties = params

        if (!crewInstance.save(flush: true)) {
            render(view: "edit", model: [crewInstance: crewInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'crew.label', default: 'Crew'), crewInstance.id])
        redirect(action: "show", id: crewInstance.id)
    }

    def delete() {
        def crewInstance = Crew.get(params.id)
        if (!crewInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'crew.label', default: 'Crew'), params.id])
            redirect(action: "list")
            return
        }

        try {
            crewInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'crew.label', default: 'Crew'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'crew.label', default: 'Crew'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
