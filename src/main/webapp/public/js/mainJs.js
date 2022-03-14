let n = +$('#totalCat').val();
for (let i = 1; i <= n; i++) {
    $('#mainCat' + i).click(function () {
        if ($('.subCat' + i).hasClass('subCat')) {
            $('.subCat' + i).removeClass('subCat')
        } else {
            $('.subCat' + i).addClass('subCat')
        }
    });
};

