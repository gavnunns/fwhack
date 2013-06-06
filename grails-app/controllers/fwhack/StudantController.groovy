package fwhack

import org.springframework.dao.DataIntegrityViolationException

class StudantController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [studantInstanceList: Studant.list(params), studantInstanceTotal: Studant.count()]
    }

    def create() {
        [studantInstance: new Studant(params)]
    }

    def save() {
        def studantInstance = new Studant(params)
        if (!studantInstance.save(flush: true)) {
            render(view: "create", model: [studantInstance: studantInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'studant.label', default: 'Studant'), studantInstance.id])
        redirect(action: "show", id: studantInstance.id)
    }

    def show(Long id) {
        def studantInstance = Studant.get(id)
        if (!studantInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'studant.label', default: 'Studant'), id])
            redirect(action: "list")
            return
        }

        [studantInstance: studantInstance]
    }

    def edit(Long id) {
        def studantInstance = Studant.get(id)
        if (!studantInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'studant.label', default: 'Studant'), id])
            redirect(action: "list")
            return
        }

        [studantInstance: studantInstance]
    }

    def update(Long id, Long version) {
        def studantInstance = Studant.get(id)
        if (!studantInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'studant.label', default: 'Studant'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (studantInstance.version > version) {
                studantInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'studant.label', default: 'Studant')] as Object[],
                          "Another user has updated this Studant while you were editing")
                render(view: "edit", model: [studantInstance: studantInstance])
                return
            }
        }

        studantInstance.properties = params

        if (!studantInstance.save(flush: true)) {
            render(view: "edit", model: [studantInstance: studantInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'studant.label', default: 'Studant'), studantInstance.id])
        redirect(action: "show", id: studantInstance.id)
    }

    def delete(Long id) {
        def studantInstance = Studant.get(id)
        if (!studantInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'studant.label', default: 'Studant'), id])
            redirect(action: "list")
            return
        }

        try {
            studantInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'studant.label', default: 'Studant'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'studant.label', default: 'Studant'), id])
            redirect(action: "show", id: id)
        }
    }
}
