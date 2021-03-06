@EventSchema = new SimpleSchema
  title:
    type: String
    label: "Название"
  description:
    type: String
    label: "Описание"
    optional: true
    autoform:
      rows: 3
  tags:
    type: [String]
    label: 'Теги события'
    optional: true
  categoryId:
    type: String
    label: 'Категория'
    autoform:
      firstOption: "(Выберите)"
      type: "select2"
      options: ->
        Categories.find().map (doc) ->
          value: doc._id
          label: doc.title
  address:
    type: String
    label: "Место проведения"
  datetime:
    type: Date
    optional: true
    label: "Время"
    autoform:
      afFieldInput:
        type: "bootstrap-datetimepicker"
      dateTimePickerOptions:
        format: 'DD.MM.YY HH:mm'
        language: 'ru'
