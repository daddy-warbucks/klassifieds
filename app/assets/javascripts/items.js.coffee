jQuery ->
  $('#item_subcategory_id').parent().hide()
  subcategories = $('#item_subcategory_id').html()
  $('#item_category_id').change ->
    category = $('#item_category_id :selected').text()
    escaped_category = category.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1')
    options = $(subcategories).filter("optgroup[label='#{escaped_category}']").html()
    if options
      $('#item_subcategory_id').html(options)
      $('#item_subcategory_id').parent().show()
    else
      $('#item_subcategory_id').empty()
      $('#item_subcategory_id').parent().hide()
