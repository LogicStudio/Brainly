/*
Valida que el nombre de un control no esté repetido al cambiarlo.
*/
function ValidateIdOnBlur(txtId)
{
   var nameCount = 0;
    var id = jQuery.trim(jQuery(txtId).val());
    jQuery(txtId).val(id);

    if (id == '')
    {
        jAlert('The control id cannot be empty');
    }
    else
    {
        jQuery.each(currentScreen.Controls.$values, function (index, control)
        {
            if (control.Id == id)
                nameCount++;
        });

        if (nameCount < 1)
            return true;

        if (nameCount == 1 && currentControl.Id == id)
            return true;

        jAlert('There is another control named ' + id, 'Invalid Data', function ()
        {
            txtId.focus();
            jQuery(txtId).select();
        });
    }

    return false;
}

function ValidateDataSourceId(newId, currentDataSource)
{
    var nameCount = 0;

    if (newId == '')
    {
        jAlert('The dataSource id cannot be empty.', 'Invalid Data', function ()
        {
            $('txtDsId').focus();
            jQuery('txtDsId').select();
        });
    }
    else
    {
        jQuery.each(currentScreen.DataSources.$values, function (index, dataSource)
        {
            if (dataSource.Id == newId)
                nameCount++;
        });

        if (nameCount < 1)
            return true;

        if (nameCount == 1 && currentDataSource.Id == newId)
            return true;

        jAlert('There is another Data Source named ' + newId, 'Invalid Data',
        function ()
        {
            $('txtDsId').focus();
        });
    }

    return false;
}

function ValidateScreenId(newId)
{
    var nameCount = 0;

    if (newId == '')
    {
        jAlert('The screen id cannot be empty.', 'Invalid Data', function ()
        {
            $('txtScreenId').focus();
        });
    }
    else
    {
        jQuery.each(screens.$values, function (index, screen)
        {
            if (screen.Id == newId)
                nameCount++;
        });

        if (nameCount < 1)
            return true;

        if (nameCount == 1 && currentScreen.Id == newId)
            return true;

        jAlert('There is another screen named ' + newId, 'Invalid Data',
        function ()
        {
            $('txtScreenId').focus();
        });
    }

    return false;
}

/*
Obtiene un datasource por su Id.
*/
function GetDataSource(dataSourceId)
{
    var ret = null;
    jQuery.each(currentScreen.DataSources.$values, function (index, dataSource)
    {
        if (dataSource.Id == dataSourceId)
        {
            ret = dataSource;
        }
    });

    return ret;
}

/*
Carga todos los datasources en de la pantalla actual en un drop down.
*/
function LoadDataSourcesOnDropDown(cbx, selectedValue)
{
    jQuery(cbx).empty();
    jQuery(cbx).append('<option value="">Select a Data Source</option>');

    jQuery.each(currentScreen.DataSources.$values, function (index, dataSource)
    {
        var option = jQuery('<option value="' + dataSource.Id + '">' + dataSource.Id + '</option>');
        if (selectedValue == dataSource.Id)
        {
            option.attr('selected', 'selected');
        }

        jQuery(cbx).append(option);
    });
}

function LoadDataSourceMappingDropDown(cbx, dataSource, selectedValue, addEmptyItem)
{
    jQuery(cbx).empty();

    if (addEmptyItem)
    {
        jQuery(cbx).append(jQuery('<option value="">Select a field</option>'));
    }

    jQuery.each(dataSource.ResultSchema.$values, function (index, colName)
    {
        var option = jQuery('<option value="' + colName.Field + '">' + colName.Field + '</option>');
        if (colName == selectedValue)
            option.attr('selected', 'selected');

        jQuery(cbx).append(option);
    });
}

function LoadScreens(cbx, selectedValue)
{
    cbx.empty();
    cbx.append(jQuery('<option value="">Select a screen</option>'));
    jQuery.each(screens.$values, function (index, screen)
    {
        var option = jQuery('<option value="' + screen.Id + '">' + screen.Id + '</option>');
        if (selectedValue == screen.Id)
        {
            option.attr('selected', 'selected');
        }
        cbx.append(option);
    });
}

function showProgress()
{
    jQuery.blockUI({
        message: '<p>We are processing your request.  Please be patient.</p><img src="../Styles/images/processing.gif" /> <br>',
        css: {
            width: '20%',
            border: '1px solid #000000',
            left: '40%'
        }
    });
}

function hideProgress()
{
    jQuery.unblockUI();
}

function AddOptionToDropDownList(select, id, text, selectedValue)
{
    var option = jQuery('<option value="' + id + '">' + text + '</option>');
    if (id == selectedValue)
        option.attr('selected', 'selected');

    select.append(option);
}

function GetControl(controlId, values)
{
    for (var i = 0; i < values.length; i++)
    {
        var control = values[i];

        if (control.Id == controlId)
        {
            return control;
        }
        else if (control.Type == "Divider")
        {
            for (var j = 0; j < control.Panes.$values.length; j++)
            {
                var ret = GetControl(controlId, control.Panes.$values[j].Controls.$values);
                if (ret)
                {
                    return ret;
                }
            }
        }
    }
}

/*
Obtiene todos los controles de una pantalla en el parámetro outCollection.
*/
function GetAllControls(controlCollection, outCollection)
{
    for (var i = 0; i < controlCollection.length; i++)
    {
        var control = controlCollection[i];

        outCollection.push(control);

        if (control.Type == "Divider")
        {
            for (var j = 0; j < control.Panes.$values.length; j++)
            {
                GetAllControls(control.Panes.$values[j].Controls.$values, outCollection);
            }
        }
    }    
}

function GetControlParentArray(controlId, values)
{
    for (var i = 0; i < values.length; i++)
    {
        var control = values[i];

        if (control.Id == controlId)
        {
            return values;
        }
        else if (control.Type == "Divider")
        {
            for (var j = 0; j < control.Panes.$values.length; j++)
            {
                var ret = GetControlParentArray(controlId, control.Panes.$values[j].Controls.$values);
                if (ret)
                {
                    return ret;
                }
            }
        }
    }
}

function GetPaneByColAndRow(divider, row, col)
{
    for (var i = 0; i < divider.Panes.$values.length; i++)
    {
        var pane = divider.Panes.$values[i];
        if (pane.Row == row && pane.Col == col)
        {
            return pane;
        }
    }
}

function LoadScreenControlsOnDropDown(screen, cbx)
{
    cbx.empty();

    var controls = [];
    GetAllControls(screen.Controls.$values, controls);

    jQuery.each(controls, function (index, control)
    {
        if (control.Type == 'Grid')
        {
            jQuery.each(control.Columns.$values, function (index, column)
            {
                var option = jQuery('<option value="' + column.Name + '">' + column.Name + '</option>');
                cbx.append(option);
            });
        }
        else if (control.Type == 'ChartArea')
        {
            AddOptionToDropDownList(cbx, 'ChartSerie', 'ChartSerie', '');
            AddOptionToDropDownList(cbx, 'ChartX', 'ChartX', '');
            AddOptionToDropDownList(cbx, 'ChartY', 'ChartY', '');
        }
        else if (control.Type == "List")
        {
            jQuery.each(control.Items.$values, function (index, item)
            {
                AddOptionToDropDownList(cbx, item.Id, item.Id, '');
            });
        }
        else
        {
            var option = jQuery('<option value="' + control.Id + '">' + control.Id + '</option>');
            cbx.append(option);
        }
    });
}

function GetScreenById(id)
{
    var ret = null;
    jQuery.each(screens.$values, function (index, screen)
    {
        if (screen.Id == id)
        {
            ret = screen;
        }
    });

    return ret;
}

/*Maneja el cambio del dropdown de DataSource de un editor.*/
function EditorDataSource_Change(cbxDataSource, mappingId) {
    var cbxMapping = jQuery('#' + mappingId);
    Control_OnBlur('DataSourceId', cbxDataSource);

    var dataSource = GetDataSource(jQuery(cbxDataSource).val());
    if (dataSource == null) {
        cbxMapping.empty();
    }
    else {
        LoadDataSourceMappingDropDown(cbxMapping, dataSource, currentControl.DataSourceMapping);
    }

    Control_OnBlur('DataSourceMapping', cbxMapping);
}

function SetCheckbox(chkId, val) {
    if(val) {
        jQuery('#' + chkId).attr('checked', 'checked');
    }
    else {
        jQuery('#' + chkId).removeAttr('checked');
    }
}