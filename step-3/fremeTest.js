/**
 * Created by bjdmeest on 17/11/2015.
 */

var path = require('path'),
    async = require('async'),
    fs = require('fs');

var basePath = path.resolve(__dirname, '../');
var htmlPath = path.resolve(basePath, './step-2/out/');
var nifPath = path.resolve(basePath, './step-3/nif/');
var outPath = path.resolve(basePath, './step-3/out/');

fs.readdir(htmlPath, function (err, files) {
    if (err) {
        throw err;
    }
    var idCounter = 0;
    async.each(files, function (file, done) {
        if (!file.match(/\.html$/)) {
            return done();
        }
        fs.readFile(path.resolve(htmlPath, file), 'utf8', function (readErr, html) {
            if (readErr) {
                return done(readErr);
            }
            fs.readFile(path.resolve(nifPath, file), 'utf8', function (readNifErr, nif) {
                if (readNifErr) {
                    return done(readNifErr);
                }
                var graph = JSON.parse(nif)['@graph'].sort(function (a, b) {
                    return b.endIndex - a.endIndex;
                });

                var lastOffset = html.length - 1;
                var stripped = strip(html);

                for (var j = 0; j < graph.length; j++) {
                    var val = graph[j];
                    var add = {
                        url: val['nif:taIdentRef'] || val.taIdentRef || '',
                        selection: val['nif:anchorOf'] || val.anchorOf || ''
                    };
                    if (!add.url || !add.selection) {
                        continue;
                    }
                    var start = getLastOffset(stripped.middle, add.selection, lastOffset);
                    if (start === -1) {
                        continue;
                    }
                    var end = start + add.selection.length;
                    lastOffset = graph[j + 1] && graph[j + 1].endIndex < start ? start : end;

                    //var newId = encodeURIComponent(val['@id'].substring(val['@id'].indexOf('#') + 1));
                    var newId = 'sembook-' + idCounter;
                    idCounter++;
                    graph[j]["@id"] = 'epub://' + file.replace('.html', '.xhtml') + '#' + newId;
                    var idPart = 'id="' + newId + '"';
                    var rdfPart = 'about="' + add.url.replace(/&/g, '%26') + '"';
                    // replacement for RDFa
                    var annotatedContent = rdfPart.length > 0 ? '<span ' + idPart + ' ' + rdfPart + '>' + add.selection + "</span>" : add.selection;
                    stripped.middle = stripped.middle.slice(0, start) + annotatedContent + stripped.middle.slice(end);
                }
                if (stripped.begin.indexOf('prefix="dbpedia:"') === -1) {
                    stripped.begin = stripped.begin.slice(0, -1) + ' prefix="dbpedia: http://dbpedia.org/resource/">';
                }

                // write changed NIF
                var changedNif = JSON.parse(nif);
                changedNif['@graph'] = graph;
                changedNif = JSON.stringify(changedNif);
                var nifFile = file + '.json';
                fs.writeFile(path.resolve(outPath, nifFile), changedNif, 'utf8');

                // write changed HTML
                fs.writeFile(path.resolve(outPath, file), stripped.begin + stripped.middle + stripped.end, 'utf8', function (writeErr) {
                    if (writeErr) {
                        return done(writeErr);
                    }
                    console.log('done with ' + path.resolve(outPath, file));
                    done();
                });
            });
        });
    }, function () {
        console.log('done!');
    });
});

function strip(html) {
    var bodyIndex = html.indexOf('<body') > 0 ? html.indexOf('>', html.indexOf('<body')) + 1 : 0;
    var bodyEndIndex = html.indexOf('</body>') > 0 ? html.indexOf('</body>') : html.length;

    return {
        begin: html.slice(0, bodyIndex),
        middle: html.slice(bodyIndex, bodyEndIndex).trim(),
        end: html.slice(bodyEndIndex)
    };
}

function getLastOffset(html, text, end) {
    if (!html) {
        throw new Error('no html specified!');
    }
    if (!text) {
        throw new Error('no text specified!');
    }
    end = end || html.length;

    // get last occurrence
    var offset = html.slice(0, end).lastIndexOf(text);
    if (offset === -1) {
        return -1;
    }

    // see if end was in middle of occurrence
    var next = html.indexOf(text, offset + 1);
    if (next >= 0 && next < end) {
        offset = next;
    }

    // see if occurencs was part of html-tag
    if (html.slice(0, offset).indexOf('>') !== -1) {
        while (!html.slice(0, offset).match(/>[^<>]*$/)) {
            offset = html.lastIndexOf(text, offset - 1);
            if (offset === -1) {
                return -1;
            }
        }
    }

    return offset;
}
