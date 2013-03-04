package lsms

import org.springframework.dao.DataIntegrityViolationException

class InventoryController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [inventoryInstanceList: Inventory.list(params), inventoryInstanceTotal: Inventory.count()]
    }

    def create() {
        [inventoryInstance: new Inventory(params)]
    }

    def save() {
        def inventoryInstance = new Inventory(params)
        if (!inventoryInstance.save(flush: true)) {
            render(view: "create", model: [inventoryInstance: inventoryInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'inventory.label', default: 'Inventory'), inventoryInstance.id])
        redirect(action: "show", id: inventoryInstance.id)
    }

    def show() {
        def inventoryInstance = Inventory.get(params.id)
        if (!inventoryInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'inventory.label', default: 'Inventory'), params.id])
            redirect(action: "list")
            return
        }

        [inventoryInstance: inventoryInstance]
    }

    def edit() {
        def inventoryInstance = Inventory.get(params.id)
        if (!inventoryInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'inventory.label', default: 'Inventory'), params.id])
            redirect(action: "list")
            return
        }

        [inventoryInstance: inventoryInstance]
    }

    def update() {
        def inventoryInstance = Inventory.get(params.id)
        if (!inventoryInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'inventory.label', default: 'Inventory'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (inventoryInstance.version > version) {
                inventoryInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'inventory.label', default: 'Inventory')] as Object[],
                          "Another user has updated this Inventory while you were editing")
                render(view: "edit", model: [inventoryInstance: inventoryInstance])
                return
            }
        }

        inventoryInstance.properties = params

        if (!inventoryInstance.save(flush: true)) {
            render(view: "edit", model: [inventoryInstance: inventoryInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'inventory.label', default: 'Inventory'), inventoryInstance.id])
        redirect(action: "show", id: inventoryInstance.id)
    }

    def delete() {
        def inventoryInstance = Inventory.get(params.id)
        if (!inventoryInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'inventory.label', default: 'Inventory'), params.id])
            redirect(action: "list")
            return
        }

        try {
            inventoryInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'inventory.label', default: 'Inventory'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'inventory.label', default: 'Inventory'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
