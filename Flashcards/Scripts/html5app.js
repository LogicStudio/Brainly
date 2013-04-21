
var _clickedListItem = null;
var _clickedRow = null;
var _mapDiv = null;
var _mapInstance = null;
var _lastExecutionResult = null;

String.prototype.format = function (args) {
    var str = this;
    return str.replace(String.prototype.format.regex, function (item) {
        var intVal = parseInt(item.substring(1, item.length - 1));
        var replace;
        if (intVal >= 0) {
            replace = args[intVal];
        }
        else if (intVal === -1) {
            replace = "{";
        }
        else if (intVal === -2) {
            replace = "}";
        }
        else {
            replace = "";
        }
        return replace;
    });
};

String.prototype.format.regex = new RegExp("{-?[0-9]+}", "g");

function SetScreen(screenToSet) {
    lastElem = null;
    insertPosition = null;

    var parentDiv = $('div#' + screenToSet.Id);

    parentDiv.find('div[data-role="header"] h1').text(screenToSet.HeaderText);
    parentDiv.find('div[data-role="footer"] h1').text(screenToSet.FooterText);

    parentDiv.find('div[data-role="header"]').removeClass('ui-bar-a ui-bar-b ui-bar-c ui-bar-d ui-bar-e ui-bar-v ui-bar-z').addClass('ui-bar-' + screenToSet.BarsTheme).attr('data-theme', screenToSet.BarsTheme);
    parentDiv.find('div[data-role="footer"]').removeClass('ui-bar-a ui-bar-b ui-bar-c ui-bar-d ui-bar-e ui-bar-v ui-bar-z').addClass('ui-bar-' + screenToSet.BarsTheme).attr('data-theme', screenToSet.BarsTheme);
    parentDiv.find('div[data-role="content"]').removeClass('ui-body-a ui-body-b ui-body-c ui-body-d ui-body-e ui-body-v ui-body-z').addClass('ui-body-' + screenToSet.BodyTheme).attr('data-theme', screenToSet.BodyTheme);

    var content = parentDiv.find('div[data-role="content"]');
    content.empty();
    content.trigger('create');

    $.each(screenToSet.Controls.$values, function (index, control) {
        AddControl(control, content);
    });
}

function AddControl(control, parent) {

    var controlHtml;

    if (control.Type == "Divider") {
        var collapsibleContent = jQuery('<div>');
        var table = jQuery('<table>');

        collapsibleContent.attr('isControlContainer', 'true');
        collapsibleContent.attr('id', control.Id);
        collapsibleContent.attr('class', 'collapsible');

        collapsibleContent.append('<h3>' + control.HeaderText + '</h3>');
        collapsibleContent.append(table);

        if (control.Collapsible) {
            collapsibleContent.attr('data-role', 'collapsible');
            collapsibleContent.attr('data-collapsed', 'false');
        }

        table.attr('isControl', 'true');
        table.attr('cellpadding', '0');
        table.attr('cellspacing', '5');
        table.css('width', '100%');

        parent.append(collapsibleContent);
        parent.trigger('create');

        for (var i = 0; i < control.Rows; i++) {
            var row = jQuery('<tr>');
            table.append(row);
            for (var j = 0; j < control.Cols; j++) {
                var col = jQuery('<td>');
                row.append(col);
                if (control.Panes.$values[j].Width != '') {
                    col.css({ 'width': control.Panes.$values[j].Width + '%' });
                }

                var paneDiv = jQuery('<div>');
                paneDiv.attr('isPane', 'true');
                paneDiv.attr('isControlContainer', 'true');
                paneDiv.css({ 'width': '100%', 'height': '100%' });
                col.append(paneDiv);

                var pane = GetPaneByColAndRow(control, i, j);
                jQuery.each(pane.Controls.$values, function (index, childControl) {
                    AddControl(childControl, paneDiv);
                });
            }
        }
    }
    else {
        if (control.Type == "RawHtml" && control.HtmlContent != undefined && control.HtmlContent != '') {
            controlHtml = "<div id='{0}' isControl='true' controlType='RawHtml' style='width:100%;min-height:20px;'>" + control.HtmlContent + "</div>";
        }
        else if (control.Type == 'Image') {
            var img = $('<img id="' + control.Id + '"/>');
            parent.append(img);
            if (control.DefaultPath != undefined && control.DefaultPath != null) {
                img.attr('src', control.DefaultPath);
            }
            if (control.Heigth != undefined && control.Heigth != null) {
                img.css('heigth', control.Heigth);
            }
            if (control.Width != undefined && control.Width != null) {
                img.css('width', control.Width);
            }
            return;
        }
        else if(control.Type == 'Map') {
            var div = $('<div id="' + control.Id + '" style="height:400px;width:100%;"/>');
            parent.append(div);
            _mapDiv = div[0];

            parent.closest('div[data-role="page"]').on('pageshow', function () {
                var control;
                for (var i = 0; i < currentScreen.Controls.$values.length; i++) {
                    var c = currentScreen.Controls.$values[i];
                    if (c.Id == $(_mapDiv).attr('id')) {
                        control = c;
                        break;
                    }
                }

                if(control == undefined)
                    return;

                var mapOptions = {
                    zoom: 8,
                    center: GetLatLng(control.DefaultLocation),
                    mapTypeId: google.maps.MapTypeId.ROADMAP,
                };
                _mapInstance = new google.maps.Map(_mapDiv, mapOptions);

                var result = $(_mapDiv).data('dsResult');
                var centered = false;
                $.each(result, function (idx, dsItem) {
                    var latLongParts = dsItem[control.LatLngField].split(',');
                    var latLong = new google.maps.LatLng(latLongParts[0], latLongParts[1]);
                    var icon = undefined;
                    if (control.MarkerImageField != '' && control.MarkerImageField != undefined) {
                        icon = new google.maps.MarkerImage(dsItem[control.MarkerImageField]);
                    }

                    var marker = new google.maps.Marker({
                        position: latLong,
                        map: _mapInstance,
                        title: dsItem[control.PointTextField],
                        icon: icon,
                        content: GetBubbleText(control, dsItem)
                    });

                    if(control.CenterAtFirstMarker && !centered) {
                        _mapInstance.panTo(latLong);
                        centered = true;
                    }

                    google.maps.event.addListener(marker, 'click', function () {
                        var _infowindow = new google.maps.InfoWindow();
                        _infowindow.setContent(this.content);
                        _infowindow.open(_mapInstance, this);
                    });
                });
            });

            parent.trigger('create');
            return;
        }
        else {
            controlHtml = $('#template_' + control.Type).val().format([control.Id, control.Label]);
            if (control.Type == 'Button') {
                controlHtml = controlHtml.replace('submit', 'button');
            }
        }

        var controlToAdd = jQuery(controlHtml.format([control.Id, control.Label]));
        ParseRunTimeProperties(controlToAdd, control);

        parent.append(controlToAdd);
        parent.trigger('create');
    }
}

function GetLatLng(value) {

    if(value == null)
        return new google.maps.LatLng(0, 0);

    var values = value.split(',');
    return new google.maps.LatLng(values[0], values[1]);
}

function GetBubbleText(control, dsItem) {
    
    var table = $('<table><tr><td><img src="" style="max-height:75px;"/></td><td><span/></td></tr></table>');
    var ret;

    if (control.PointImageField != '' && control.PointImageField != undefined)
        table.find('img').attr('src', dsItem[control.PointImageField]);

    table.find('span').text(dsItem[control.PointTextField]);

    if (control.PageToCallOnPointClick != '' && control.PageToCallOnPointClick != undefined) {
        var link = $('<a href="#' + control.PageToCallOnPointClick + '"/>');
        link.append(table);
        ret = link;
    }
    else {
        ret = table;
    }

    return $('<div>').append(ret).html();
}

function ParseRunTimeProperties(ui, control) {

    switch (control.Type) {
        case 'Text':
            jQuery(ui.children()[1]).attr('placeholder', control.Hint);
            break;

        case 'Search':
            $(ui[1]).attr('placeholder', control.Hint);
            if(control.NextScreen != null && control.NextScreen != '') {
                $(ui[1]).attr('NextScreen', control.NextScreen);
                $(ui[1]).attr('onchange', 'ChangeScreen(this);');
            }
            break;

        case 'Label':
            if(control.CssClass != null && control.CssClass != '') {
                $(ui).addClass(control.CssClass);
            }
            break;

        case 'Button':
            ui.attr('nextScreen', control.NextScreen);
            ui.click(ChangeScreen);
            break;

        case 'Divider':
            if (control.Collapsible) {
                $(ui.children()[0]).closest('.collapsible').attr('data-role', 'collapsible').attr('data-collapsed', 'false');
            }
            else {
                $(ui.children()[0]).closest('.collapsible').removeAttr('data-role').removeAttr('data-collapsed');
            }
            break;
        case 'List':
            if(control.ItemsSource == 0) {
                $(ui).find('li').remove();
                for (var i = 0; i < control.Items.$values.length; i++) {
                    var listItem = control.Items.$values[i];
                    debugger;
                    var li = $('<li/>');
                    var link = $("<a href='#' onclick='ListItemClick(this)' nextScreen='" + listItem.NextScreen + "'></a>");
                    link.append($("<img src='" + listItem.ImageSrc + "' />"));
                    link.append($("<h3 class='listItem' style='margin-bottom:6px;'>" + listItem.DefaultText + "</h3>"));
                    link.append($("<p class='listItem' style='margin-bottom:6px;'>" + listItem.SubText + "</p>"));
                    li.append(link);

                    $(ui).find('ul').append(li);
                }
                //$(ui).find('ul').listview("refresh");
            }
            break;
    }
}

function ChangeScreen() {
    $.mobile.showPageLoadingMsg();
    if ($(this).attr('nextScreen')) {
        setTimeout('OnChangeScreen("' + $(this).attr('nextScreen') + '")', 75);
    }
}

//function ChangeScreen(elem) {
//}

function ListItemClick(link) {
    $('html, body').animate({
        scrollTop: 0
    }, 250);
    $.mobile.showPageLoadingMsg();
    _clickedListItem = $(link).closest('li');
    var nextScreen = $(link).attr('nextScreen');
    setTimeout('OnChangeScreen("' + nextScreen + '")', 75);
}

function GridRowClick(btn) {
    $.mobile.showPageLoadingMsg();
    _clickedRow = $(btn).closest('tr');
    var nextScreen = $(btn).closest('table').attr('NextScreen');
    setTimeout('OnChangeScreen("' + nextScreen + '")', 75);
}

function OnChangeScreen(nextScreen) {
    var screenData = BuildScreenData(currentScreen.Id);
    localStorage.setItem(screenData.Id, JSON.stringify(screenData));
    $.mobile.changePage('#' + nextScreen);
}

function BuildScreenData(screenId) {
    var screenData = {
        '$type': 'Tracker.Models.DataSources.ScreenRuntimeData, Tracker',
        Id: screenId,
        Controls: {
            '$type': 'Tracker.Models.DataSources.ControlRuntimeData[], Tracker',
            '$values': []
        }
    };

    $('div[data-role="content"] [iscontrol]').each(function () {
        var val = GetControlValues($(this));
        if (val != null) {
            if (Object.prototype.toString.call(val) === '[object Array]') {
                $.each(val, function (i, o) { screenData.Controls.$values.push(o); });
            }
            else {
                screenData.Controls.$values.push(val);
            }
        }
    });

    return screenData;
}

function GetControlValues(control) {
    switch (control.attr('ControlType')) {
        case 'Text':
        case 'DropDownList':
        case 'Search':
            return {
                '$type': 'Tracker.Models.DataSources.ControlRuntimeData, Tracker',
                Id: control.attr('id'),
                Value: control.val()
            };

        case 'Label':
            return {
                '$type': 'Tracker.Models.DataSources.ControlRuntimeData, Tracker',
                Id: control.attr('id'),
                Value: control.text()
            };

        case 'List':
            var ret = [];
            $(_clickedListItem).find('*:[itemid]').each(function (i, v) {
                ret.push({
                    '$type': 'Tracker.Models.DataSources.ControlRuntimeData, Tracker',
                    Id: $(v).attr('itemId'),
                    Value: $(v).text()
                });
            });
            return ret;

        case 'Grid':
            var ret = [];
            $(_clickedRow).find('td').each(function(i, v) {
                ret.push({
                    '$type': 'Tracker.Models.DataSources.ControlRuntimeData, Tracker',
                    Id: $(v).attr('itemId'),
                    Value: $(v).text()
                });
            });
            return ret;
    }
    return null;
}

function SetControlValue(control, result) {

    var currentPageDiv = $('div#' + currentScreen.Id);

    switch (control.$type) {
        case 'Tracker.Models.Controls.TextBoxControl, Tracker':
            currentPageDiv.find('#' + control.Id).val(result[0][control.DataSourceMapping]);
            break;

        case 'Tracker.Models.Controls.LabelControl, Tracker':
            var prefix = '';
            if (control.Prefix != null && control.Prefix != undefined)
                prefix = control.Prefix;

            if(result.length > 0)
                currentPageDiv.find('#' + control.Id).text(prefix + result[0][control.DataSourceMapping]);
            else
                currentPageDiv.find('#' + control.Id).text(prefix);
            break;

        case 'Tracker.Models.Controls.DropDownListControl, Tracker':
            currentPageDiv.find('#' + control.Id).find('option').remove();
            $.each(result, function (idx, item) {
                var id = item[control.ValueMember];
                var text = item[control.DisplayMember];
                currentPageDiv.find('#' + control.Id).append('<option id="' + id + '">' + text + '</option>');
            });
            break;

        case 'Tracker.Models.Controls.ImageControl, Tracker':
            currentPageDiv.find('#' + control.Id).attr('src', result[0][control.DataSourceMapping]);
            break;

        case 'Tracker.Models.Controls.GridControl, Tracker':
            var grid = currentPageDiv.find('#' + control.Id);
            grid.empty();
            grid.css('margin-top', '10px;');

            grid.append('<thead/>');
            var trHeader = $('<tr/>');
            grid.find('thead').append(trHeader);
            grid.attr('NextScreen', control.NextScreen);

            for(var i = 0; i < control.Columns.$values.length; i++) {
                var th = $('<th/>');
                var column = control.Columns.$values[i];

                if(column.Hidden) {
                    th.css('display', 'none');
                }

                if(column.Width != '' && column.Width != null) {
                    th.css('width', column.Width);
                }

                th.text(column.HeaderText);
                trHeader.append(th);
            }

            if(control.NextScreen != '' && control.NextScreen != null) {
                trHeader.append('<th/>');
            }

            $.each(result, function(idx, dsItem) {
                var tr = $('<tr/>');
                for(var i = 0; i < control.Columns.$values.length; i++) {
                    var column = control.Columns.$values[i];
                    var td = $('<td/>');
                    td.attr('itemId', column.Name);

                    if(column.Hidden) {
                        td.css('display', 'none');
                    }

                    if(column.Width != '' && column.Width != null) {
                        td.css('width', column.Width);
                    }

                    td.text(dsItem[column.Name]);
                    tr.append(td);
                }

                if(control.NextScreen != '' && control.NextScreen != null) {
                    tr.append("<td isButtonColumn='true'><input type='button' data-role='button' data-inline='true' data-mini='true' onclick='GridRowClick(this);' value='Details'/></td>");
                }

                grid.append(tr);
            });

            grid.trigger('create');
            break;

        case 'Tracker.Models.Controls.ListControl, Tracker':
            currentPageDiv.find('#' + control.Id + ' ul').find('li').remove();
            $.each(result, function(idx, dsItem) {
                var li = $('<li/>');
                var container;

                if (control.NextScreen != null && control.NextScreen != undefined) {
                    var link = $("<a href='#' onclick='ListItemClick(this)' nextScreen='" + control.NextScreen + "'></a>");
                    currentPageDiv.find('#' + control.Id + ' ul').append(li);
                    li.append(link);
                    container = link;
                } else {
                    container = li;
                }

                currentPageDiv.find('#' + control.Id + ' ul').append(li);

                for (var i = 0; i < control.Items.$values.length; i++) {
                    var listItem = control.Items.$values[i];
                    if (listItem.Format == 5)
                        container.append(GetListItem(listItem, dsItem[listItem.Id]));
                }

                for (var i = 0; i < control.Items.$values.length; i++) {
                    var listItem = control.Items.$values[i];
                    if (listItem.Format != 5 && listItem.Weight == 1)
                        container.append(GetListItem(listItem, dsItem[listItem.Id]));
                }

                for (var i = 0; i < control.Items.$values.length; i++) {
                    var listItem = control.Items.$values[i];
                    if (listItem.Format != 5 && listItem.Weight != 1)
                        container.append(GetListItem(listItem, dsItem[listItem.Id]));
                }
            });
            currentPageDiv.find('#' + control.Id + ' ul').listview("refresh");
            break;

        case 'Tracker.Models.Controls.MapControl, Tracker':
            currentPageDiv.find('#' + control.Id).data('dsResult', result);
            break;
    }
}

function GetListItem(listItem, value) {

    if (listItem.Hidden) {
        return $("<p class='listItem' itemId='" + listItem.Id + "' style='display:none;'>" + value + "</p>");
    }
    else {
        switch (listItem.Format) {
            case 5:
                if (listItem.ImageType == 'Icon') {
                    return $('<img src="' + value + '" class="listItem ui-li-icon" itemId="' + listItem.Id + '"/>');
                }
                else {
                    return $('<img src="' + value + '" class="listItem" itemId="' + listItem.Id + '"/>');
                }
            default:
                if (listItem.Weight == 1) {
                    return $("<h3 class='listItem' style='margin-bottom:6px;' itemId='" + listItem.Id + "'>" + value + "</h3>");
                }
                else {
                    if (listItem.Label != null && listItem.Label != '') {

                        return $("<p class='listItem' itemId='" + listItem.Id + "'>" +
                                "<table style='width:100%;' cellspacing=0 cellpadding=0>" +
                                "<tr>" +
                                "<td style='width:40%;text-align:left;'><p style='margin-top:0px;'><strong>" + listItem.Label + "</strong></p></td>" +
                                "<td style='width:60%;text-align:left;'><p style='margin-top:0px;'>" + value + "</p></td>" +
                                "</tr></table>" +
                                "</p>");
                    }
                    else {
                        return $("<p class='listItem' style='margin-bottom:6px;' itemId='" + listItem.Id + "'>" + value + "</p>");
                    }
                }
        }
    }
}

function LogException(err) {
    var vDebug = "";
    for (var prop in err) {
        vDebug += "property: " + prop + " value: [" + err[prop] + "]\n";
    }
    vDebug += "toString(): " + " value: [" + err.toString() + "]";
    console.log(vDebug);
}
