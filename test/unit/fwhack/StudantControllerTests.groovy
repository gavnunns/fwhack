package fwhack



import org.junit.*
import grails.test.mixin.*

@TestFor(StudantController)
@Mock(Studant)
class StudantControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/studant/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.studantInstanceList.size() == 0
        assert model.studantInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.studantInstance != null
    }

    void testSave() {
        controller.save()

        assert model.studantInstance != null
        assert view == '/studant/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/studant/show/1'
        assert controller.flash.message != null
        assert Studant.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/studant/list'

        populateValidParams(params)
        def studant = new Studant(params)

        assert studant.save() != null

        params.id = studant.id

        def model = controller.show()

        assert model.studantInstance == studant
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/studant/list'

        populateValidParams(params)
        def studant = new Studant(params)

        assert studant.save() != null

        params.id = studant.id

        def model = controller.edit()

        assert model.studantInstance == studant
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/studant/list'

        response.reset()

        populateValidParams(params)
        def studant = new Studant(params)

        assert studant.save() != null

        // test invalid parameters in update
        params.id = studant.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/studant/edit"
        assert model.studantInstance != null

        studant.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/studant/show/$studant.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        studant.clearErrors()

        populateValidParams(params)
        params.id = studant.id
        params.version = -1
        controller.update()

        assert view == "/studant/edit"
        assert model.studantInstance != null
        assert model.studantInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/studant/list'

        response.reset()

        populateValidParams(params)
        def studant = new Studant(params)

        assert studant.save() != null
        assert Studant.count() == 1

        params.id = studant.id

        controller.delete()

        assert Studant.count() == 0
        assert Studant.get(studant.id) == null
        assert response.redirectedUrl == '/studant/list'
    }
}
