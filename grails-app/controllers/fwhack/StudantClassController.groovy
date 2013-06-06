package fwhack

import org.springframework.dao.DataIntegrityViolationException

class StudantClassController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [studantClassInstanceList: StudantClass.list(params), studantClassInstanceTotal: StudantClass.count()]
    }

    def create() {
        [studantClassInstance: new StudantClass(params)]
    }

    def save() {
        def studantClassInstance = new StudantClass(params)
        if (!studantClassInstance.save(flush: true)) {
            render(view: "create", model: [studantClassInstance: studantClassInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'studantClass.label', default: 'StudantClass'), studantClassInstance.id])
        redirect(action: "show", id: studantClassInstance.id)
    }

    def show(Long id) {
        def studantClassInstance = StudantClass.get(id)
        if (!studantClassInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'studantClass.label', default: 'StudantClass'), id])
            redirect(action: "list")
            return
        }

        [studantClassInstance: studantClassInstance]
    }

    def edit(Long id) {
        def studantClassInstance = StudantClass.get(id)
        if (!studantClassInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'studantClass.label', default: 'StudantClass'), id])
            redirect(action: "list")
            return
        }

        [studantClassInstance: studantClassInstance]
    }

    def update(Long id, Long version) {
        def studantClassInstance = StudantClass.get(id)
        if (!studantClassInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'studantClass.label', default: 'StudantClass'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (studantClassInstance.version > version) {
                studantClassInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'studantClass.label', default: 'StudantClass')] as Object[],
                        "Another user has updated this StudantClass while you were editing")
                render(view: "edit", model: [studantClassInstance: studantClassInstance])
                return
            }
        }

        studantClassInstance.properties = params

        if (!studantClassInstance.save(flush: true)) {
            render(view: "edit", model: [studantClassInstance: studantClassInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'studantClass.label', default: 'StudantClass'), studantClassInstance.id])
        redirect(action: "show", id: studantClassInstance.id)
    }

    def delete(Long id) {
        def studantClassInstance = StudantClass.get(id)
        if (!studantClassInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'studantClass.label', default: 'StudantClass'), id])
            redirect(action: "list")
            return
        }

        try {
            studantClassInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'studantClass.label', default: 'StudantClass'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'studantClass.label', default: 'StudantClass'), id])
            redirect(action: "show", id: id)
        }
    }
}
