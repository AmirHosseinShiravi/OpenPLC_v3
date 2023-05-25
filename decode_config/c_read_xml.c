#include <stdio.h>
#include <libxml/parser.h>
#include <libxml/tree.h>
#include <libxml/xpath.h>



int main(int argc, char* argv[]) {
    xmlDocPtr doc;
    xmlXPathContextPtr xpathCtx;
    xmlXPathObjectPtr xpathObj;
    xmlNodeSetPtr nodes;
    int i;

    if (argc != 2) {
        fprintf(stderr, "Usage: %s <filename>\n", argv[0]);
        return 1;
    }

    doc = xmlReadFile(argv[1], NULL, 0);
    if (doc == NULL) {
        fprintf(stderr, "Failed to parse %s\n", argv[1]);
        return 1;
    }

    xpathCtx = xmlXPathNewContext(doc);
    if (xpathCtx == NULL) {
        fprintf(stderr, "Failed to create XPath context\n");
        xmlFreeDoc(doc);
        return 1;
    }

    xpathObj = xmlXPathEvalExpression((const xmlChar *) "//book/title", xpathCtx);
    if (xpathObj == NULL) {
        fprintf(stderr, "Failed to evaluate XPath expression\n");
        xmlXPathFreeContext(xpathCtx);
        xmlFreeDoc(doc);
        return 1;
    }

    nodes = xpathObj->nodesetval;
    for (i = 0; i < nodes->nodeNr; i++) {
        printf("Title: %s\n", xmlNodeGetContent(nodes->nodeTab[i]));
    }

    xmlXPathFreeObject(xpathObj);
    xmlXPathFreeContext(xpathCtx);
    xmlFreeDoc(doc);
    xmlCleanupParser();
    return 0;
}