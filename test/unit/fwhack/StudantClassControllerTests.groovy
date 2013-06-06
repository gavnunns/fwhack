package fwhack



import org.junit.*
import grails.test.mixin.*

@TestFor(StudantClassController)
@Mock(StudantClass)
class StudantClassControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/studantClass/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.studantClassInstanceList.size() == 0
        assert model.studantClassInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.studantClassInstance != null
    }

    void testSave() {
        controller.save()

        assert model.studantClassInstance != null
        assert view == '/studantClass/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/studantClass/show/1'
        assert controller.flash.message != null
        assert StudantClass.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/studantClass/list'

        populateValidParams(params)
        def studantClass = new StudantClass(params)

        assert studantClass.save() != null

        params.id = studantClass.id

        def model = controller.show()

        assert model.studantClassInstance == studantClass
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/studantClass/list'

        populateValidParams(params)
        def studantClass = new StudantClass(params)

        assert studantClass.save() != null

        params.id = studantClass.id

        def model = controller.edit()

        assert model.studantClassInstance == studantClass
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/studantClass/list'

        response.reset()

        populateValidParams(params)
        def studantClass = new StudantClass(params)

        assert studantClass.save() != null

        // test invalid parameters in update
        params.id = studantClass.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/studantClass/edit"
        assert model.studantClassInstance != null

        studantClass.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/studantClass/show/$studantClass.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        studantClass.clearErrors()

        populateValidParams(params)
        params.id = studantClass.id
        params.version = -1
        controller.update()

        assert view == "/studantClass/edit"
        assert model.studantClassInstance != null
        assert model.studantClassInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/studantClass/list'

        response.reset()

        populateValidParams(params)
        def studantClass = new StudantClass(params)

        assert studantClass.save() != null
        assert StudantClass.count() == 1

        params.id = studantClass.id

        controller.delete()

        assert StudantClass.count() == 0
        assert StudantClass.get(studantClass.id) == null
        assert response.redirectedUrl == '/studantClass/list'
    }
}
