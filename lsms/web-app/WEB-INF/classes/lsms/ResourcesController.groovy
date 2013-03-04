package lsms

import org.springframework.dao.DataIntegrityViolationException

class ResourcesController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [resourcesInstanceList: Resources.list(params), resourcesInstanceTotal: Resources.count()]
    }

    def create() {
        [resourcesInstance: new Resources(params)]
    }

    def save() {
        def resourcesInstance = new Resources(params)
        if (!resourcesInstance.save(flush: true)) {
            render(view: "create", model: [resourcesInstance: resourcesInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'resources.label', default: 'Resources'), resourcesInstance.id])
        redirect(action: "show", id: resourcesInstance.id)
    }

    def show() {
        def resourcesInstance = Resources.get(params.id)
        if (!resourcesInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'resources.label', default: 'Resources'), params.id])
            redirect(action: "list")
            return
        }

        [resourcesInstance: resourcesInstance]
    }

    def edit() {
        def resourcesInstance = Resources.get(params.id)
        if (!resourcesInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'resources.label', default: 'Resources'), params.id])
            redirect(action: "list")
            return
        }

        [resourcesInstance: resourcesInstance]
    }

    def update() {
        def resourcesInstance = Resources.get(params.id)
        if (!resourcesInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'resources.label', default: 'Resources'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (resourcesInstance.version > version) {
                resourcesInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'resources.label', default: 'Resources')] as Object[],
                          "Another user has updated this Resources while you were editing")
                render(view: "edit", model: [resourcesInstance: resourcesInstance])
                return
            }
        }

        resourcesInstance.properties = params

        if (!resourcesInstance.save(flush: true)) {
            render(view: "edit", model: [resourcesInstance: resourcesInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'resources.label', default: 'Resources'), resourcesInstance.id])
        redirect(action: "show", id: resourcesInstance.id)
    }

    def delete() {
        def resourcesInstance = Resources.get(params.id)
        if (!resourcesInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'resources.label', default: 'Resources'), params.id])
            redirect(action: "list")
            return
        }

        try {
            resourcesInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'resources.label', default: 'Resources'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'resources.label', default: 'Resources'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
