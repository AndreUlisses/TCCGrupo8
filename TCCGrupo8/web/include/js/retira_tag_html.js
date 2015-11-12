
var thumbnail_mode = "no-float"; 
summary_noimg = 500;
summary_img = 430;
img_thumb_height = 160;
img_thumb_width = 200;

//<![CDATA[
//var _0xff47 = ["\x3C", "\x69\x6E\x64\x65\x78\x4F\x66", "\x73\x70\x6C\x69\x74", "\x6C\x65\x6E\x67\x74\x68", "\x3E", "\x73\x75\x62\x73\x74\x72\x69\x6E\x67", "", "\x6A\x6F\x69\x6E", "\x63\x68\x61\x72\x41\x74", "\x20", "\x2E\x2E\x2E", "\x67\x65\x74\x45\x6C\x65\x6D\x65\x6E\x74\x42\x79\x49\x64", "\x69\x6D\x67", "\x67\x65\x74\x45\x6C\x65\x6D\x65\x6E\x74\x73\x42\x79\x54\x61\x67\x4E\x61\x6D\x65", "\x3C\x73\x70\x61\x6E\x20\x73\x74\x79\x6C\x65\x3D\x22\x66\x6C\x6F\x61\x74\x3A\x6C\x65\x66\x74\x3B\x70\x61\x64\x64\x69\x6E\x67\x3A\x30\x20\x31\x38\x70\x78\x20\x35\x70\x78\x20\x30\x3B\x22\x3E\x3C\x69\x6D\x67\x20\x63\x6C\x61\x73\x73\x3D\x22\x72\x65\x73\x70\x6F\x6E\x73\x69\x2D\x69\x6D\x61\x67\x65\x22\x20\x73\x72\x63\x3D\x22", "\x73\x72\x63", "\x22\x20\x77\x69\x64\x74\x68\x3D\x22", "\x70\x78\x22\x20\x68\x65\x69\x67\x68\x74\x3D\x22", "\x70\x78\x22\x2F\x3E\x3C\x2F\x73\x70\x61\x6E\x3E", "\x3C\x64\x69\x76\x3E", "\x69\x6E\x6E\x65\x72\x48\x54\x4D\x4C", "\x3C\x2F\x64\x69\x76\x3E", "\x3C\x61\x20\x68\x72\x65\x66\x3D\x22\x68\x74\x74\x70\x3A\x2F\x2F\x77\x77\x77\x2E\x62\x6C\x6F\x67\x67\x65\x72\x6D\x6F\x74\x69\x6F\x6E\x2E\x63\x6F\x6D\x2F\x22\x3E\x42\x6C\x6F\x67\x67\x65\x72\x4D\x6F\x74\x69\x6F\x6E\x3C\x2F\x61\x3E", "\x68\x74\x6D\x6C", "\x23\x63\x72\x65\x64\x69\x74\x2D\x6C\x69\x6E\x6B", "\x23\x63\x72\x65\x64\x69\x74\x2D\x6C\x69\x6E\x6B\x3A\x76\x69\x73\x69\x62\x6C\x65", "\x68\x72\x65\x66", "\x6C\x6F\x63\x61\x74\x69\x6F\x6E", "\x68\x74\x74\x70\x3A\x2F\x2F\x77\x77\x77\x2E\x62\x6C\x6F\x67\x67\x65\x72\x6D\x6F\x74\x69\x6F\x6E\x2E\x63\x6F\x6D\x2F", "\x72\x65\x61\x64\x79"];
//0 < | 1 indexOf | 2 split | 3 | 4 | 5 substring | 6 | 7 | 8 | 9 | 10 ... | 11 getElementById | 12 img | 13 getElementsByTagName | 14 <span style="float:left;padding:0 18px 5px 0;"><img class="responsi-image" src="
var _0xff47 = [/*00*/ "\x3C", //<
               /*01*/ "\x69\x6E\x64\x65\x78\x4F\x66", //indexOf
               /*02*/ "\x73\x70\x6C\x69\x74", //split
               /*03*/ "\x6C\x65\x6E\x67\x74\x68", 
               /*04*/ "\x3E", 
               /*05*/ "\x73\x75\x62\x73\x74\x72\x69\x6E\x67", //substring
               /*06*/ "", 
               /*07*/ "\x6A\x6F\x69\x6E", 
               /*08*/ "\x63\x68\x61\x72\x41\x74", 
               /*09*/ "\x20", 
               /*10*/ "\x2E\x2E\x2E", //...
               /*11*/ "\x67\x65\x74\x45\x6C\x65\x6D\x65\x6E\x74\x42\x79\x49\x64", //getElementById
               /*12*/ "\x69\x6D\x67", //img
               /*13*/ "\x67\x65\x74\x45\x6C\x65\x6D\x65\x6E\x74\x73\x42\x79\x54\x61\x67\x4E\x61\x6D\x65", //getElementsByTagName
               /*14*/ "\x3C\x73\x70\x61\x6E\x20\x73\x74\x79\x6C\x65\x3D\x22\x66\x6C\x6F\x61\x74\x3A\x6C\x65\x66\x74\x3B\x70\x61\x64\x64\x69\x6E\x67\x3A\x30\x20\x31\x38\x70\x78\x20\x35\x70\x78\x20\x30\x3B\x22\x3E\x3C\x69\x6D\x67\x20\x63\x6C\x61\x73\x73\x3D\x22\x72\x65\x73\x70\x6F\x6E\x73\x69\x2D\x69\x6D\x61\x67\x65\x22\x20\x73\x72\x63\x3D\x22", 
               /*15*/ "\x73\x72\x63", //src
               /*16*/ "\x22\x20\x77\x69\x64\x74\x68\x3D\x22", 
               /*17*/ "\x70\x78\x22\x20\x68\x65\x69\x67\x68\x74\x3D\x22", 
               /*18*/ "\x70\x78\x22\x2F\x3E\x3C\x2F\x73\x70\x61\x6E\x3E", 
               /*19*/ "\x3C\x64\x69\x76\x3E", 
               /*20*/ "\x69\x6E\x6E\x65\x72\x48\x54\x4D\x4C", 
               /*21*/ "\x3C\x2F\x64\x69\x76\x3E", 
               /*22*/ "\x3C\x61\x20\x68\x72\x65\x66\x3D\x22\x68\x74\x74\x70\x3A\x2F\x2F\x77\x77\x77\x2E\x62\x6C\x6F\x67\x67\x65\x72\x6D\x6F\x74\x69\x6F\x6E\x2E\x63\x6F\x6D\x2F\x22\x3E\x42\x6C\x6F\x67\x67\x65\x72\x4D\x6F\x74\x69\x6F\x6E\x3C\x2F\x61\x3E", 
               /*23*/ "\x68\x74\x6D\x6C", 
               /*24*/ "\x23\x63\x72\x65\x64\x69\x74\x2D\x6C\x69\x6E\x6B", 
               /*25*/ "\x23\x63\x72\x65\x64\x69\x74\x2D\x6C\x69\x6E\x6B\x3A\x76\x69\x73\x69\x62\x6C\x65", 
               /*26*/ "\x68\x72\x65\x66", 
               /*27*/ "\x6C\x6F\x63\x61\x74\x69\x6F\x6E", 
               /*28*/ "\x68\x74\x74\x70\x3A\x2F\x2F\x77\x77\x77\x2E\x62\x6C\x6F\x67\x67\x65\x72\x6D\x6F\x74\x69\x6F\x6E\x2E\x63\x6F\x6D\x2F", 
               /*29*/ "\x72\x65\x61\x64\x79"];



function createSummaryAndThumb(id) {
    //alert(_0xff47[4]);

    var corpoHtml = document.getElementById(id); //...
    var imagem = ""; //substring
    var corpoImg = corpoHtml.getElementsByTagName('img'); //getElementById img
    var tamanho = summary_noimg;
    /*
    if (corpoImg.length >= 1) {
        imagem = '<span style="float:left;padding:0 18px 5px 0;"><img class="responsi-image" src="'+ corpoImg[0].src + '" width="200px" height="160px"/></span>' ;
        tamanho = summary_img;
    };*/
    var corpo = imagem + '<div>' + novo(corpoHtml.innerHTML, tamanho) + '</div>';
    corpoHtml.innerHTML = corpo;
};

function novo(html, tamanho) {
    
    if (html.indexOf('<') != -1) {
        var tag = html.split('<');

        for (var i=0; i < tag.length; i++) {
            if (tag[i].indexOf('>') != -1) {
                tag[i] = tag[i].substring(tag[i].indexOf('>') + 1, tag[i].length);
            };
        };
        html = tag.join('');
    };
    tamanho = (tamanho < html.length - 1) ? tamanho: html.length - 2;
    while (html.charAt(tamanho - 1) != " " && html.indexOf(" ", tamanho) != -1) {
        tamanho++;
    };
    html = html.substring(0, tamanho - 1);
    return html + '...';
        
};


/*
function createSummaryAndThumb(_0x9c63x7) {
    var _0x9c63x8 = document[_0xff47[11]](_0x9c63x7);
    var _0x9c63x9 = _0xff47[6];
    var _0x9c63xa = _0x9c63x8[_0xff47[13]](_0xff47[12]);
    var _0x9c63xb = summary_noimg;
    if (_0x9c63xa[_0xff47[3]] >= 1) {
        _0x9c63x9 = _0xff47[14] + _0x9c63xa[0][_0xff47[15]] + _0xff47[16] + img_thumb_width + _0xff47[17] + img_thumb_height + _0xff47[18];
        _0x9c63xb = summary_img;
    };
    //alert(_0x9c63x8[_0xff47[20]]);
    //var _0x9c63xc = _0x9c63x9 + _0xff47[19] + removeHtmlTag(_0x9c63x8[_0xff47[20]], _0x9c63xb) + _0xff47[21];
    var _0x9c63xc = _0x9c63x9 + _0xff47[19] + novo(_0x9c63x8[_0xff47[20]], _0x9c63xb) + _0xff47[21];
    _0x9c63x8[_0xff47[20]] = _0x9c63xc;
};

function removeHtmlTag(_0x9c63x2, _0x9c63x3) {
    
    if (_0x9c63x2[_0xff47[1]](_0xff47[0]) != -1) {
        var _0x9c63x4 = _0x9c63x2[_0xff47[2]](_0xff47[0]);

        for (var _0x9c63x5 = 0; _0x9c63x5 < _0x9c63x4[_0xff47[3]]; _0x9c63x5++) {
            if (_0x9c63x4[_0x9c63x5][_0xff47[1]](_0xff47[4]) != -1) {
                _0x9c63x4[_0x9c63x5] = _0x9c63x4[_0x9c63x5][_0xff47[5]](_0x9c63x4[_0x9c63x5][_0xff47[1]](_0xff47[4]) + 1, _0x9c63x4[_0x9c63x5][_0xff47[3]]);
            };
        };
        _0x9c63x2 = _0x9c63x4[_0xff47[7]](_0xff47[6]);
    };
    _0x9c63x3 = (_0x9c63x3 < _0x9c63x2[_0xff47[3]] - 1) ? _0x9c63x3: _0x9c63x2[_0xff47[3]] - 2;
    while (_0x9c63x2[_0xff47[8]](_0x9c63x3 - 1) != _0xff47[9] && _0x9c63x2[_0xff47[1]](_0xff47[9], _0x9c63x3) != -1) {
        _0x9c63x3++;
    };
    _0x9c63x2 = _0x9c63x2[_0xff47[5]](0, _0x9c63x3 - 1);
    return _0x9c63x2 + _0xff47[10];
};
*/