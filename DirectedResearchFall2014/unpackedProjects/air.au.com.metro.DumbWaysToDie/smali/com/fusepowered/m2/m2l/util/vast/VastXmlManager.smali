.class Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager;
.super Ljava/lang/Object;
.source "VastXmlManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementAttributeName;,
        Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementAttributeValue;,
        Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementName;
    }
.end annotation


# static fields
.field private static final ROOT_TAG:Ljava/lang/String; = "MPMoVideoXMLDocRoot"

.field private static final ROOT_TAG_CLOSE:Ljava/lang/String; = "</MPMoVideoXMLDocRoot>"

.field private static final ROOT_TAG_OPEN:Ljava/lang/String; = "<MPMoVideoXMLDocRoot>"


# instance fields
.field private mVastDoc:Lorg/w3c/dom/Document;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getStringDataAsList(Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementName;)Ljava/util/List;
    .locals 1
    .parameter "elementName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementName;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 144
    invoke-direct {p0, p1, v0, v0}, Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager;->getStringDataAsList(Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementName;Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementAttributeName;Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementAttributeValue;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getStringDataAsList(Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementName;Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementAttributeName;Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementAttributeValue;)Ljava/util/List;
    .locals 8
    .parameter "elementName"
    .parameter "attributeName"
    .parameter "attributeValue"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementName;",
            "Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementAttributeName;",
            "Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementAttributeValue;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 148
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 150
    .local v3, results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager;->mVastDoc:Lorg/w3c/dom/Document;

    if-nez v6, :cond_1

    .line 175
    :cond_0
    return-object v3

    .line 154
    :cond_1
    iget-object v6, p0, Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager;->mVastDoc:Lorg/w3c/dom/Document;

    invoke-virtual {p1}, Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementName;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 156
    .local v2, nodes:Lorg/w3c/dom/NodeList;
    if-eqz v2, :cond_0

    .line 160
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-ge v0, v6, :cond_0

    .line 161
    invoke-interface {v2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 163
    .local v1, node:Lorg/w3c/dom/Node;
    if-eqz v1, :cond_2

    invoke-direct {p0, v1, p2, p3}, Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager;->nodeMatchesFilter(Lorg/w3c/dom/Node;Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementAttributeName;Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementAttributeValue;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 165
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v4

    .line 166
    .local v4, textChild:Lorg/w3c/dom/Node;
    if-eqz v4, :cond_2

    .line 167
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    .line 168
    .local v5, textValue:Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 169
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    .end local v4           #textChild:Lorg/w3c/dom/Node;
    .end local v5           #textValue:Ljava/lang/String;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getVideoTrackerByAttribute(Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementAttributeValue;)Ljava/util/List;
    .locals 2
    .parameter "attributeValue"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementAttributeValue;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 140
    sget-object v0, Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementName;->VIDEO_TRACKER:Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementName;

    sget-object v1, Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementAttributeName;->EVENT:Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementAttributeName;

    invoke-direct {p0, v0, v1, p1}, Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager;->getStringDataAsList(Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementName;Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementAttributeName;Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementAttributeValue;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private nodeMatchesFilter(Lorg/w3c/dom/Node;Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementAttributeName;Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementAttributeValue;)Z
    .locals 5
    .parameter "node"
    .parameter "attributeName"
    .parameter "attributeValue"

    .prologue
    const/4 v4, 0x1

    .line 179
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    move v2, v4

    .line 191
    :goto_0
    return v2

    .line 183
    :cond_1
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    .line 184
    .local v0, attrMap:Lorg/w3c/dom/NamedNodeMap;
    if-eqz v0, :cond_2

    .line 185
    invoke-virtual {p2}, Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementAttributeName;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 186
    .local v1, attrNode:Lorg/w3c/dom/Node;
    if-eqz v1, :cond_2

    invoke-virtual {p3}, Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementAttributeValue;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v4

    .line 187
    goto :goto_0

    .line 191
    .end local v1           #attrNode:Lorg/w3c/dom/Node;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method getClickThroughUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 126
    sget-object v1, Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementName;->CLICK_THROUGH:Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementName;

    invoke-direct {p0, v1}, Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager;->getStringDataAsList(Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementName;)Ljava/util/List;

    move-result-object v0

    .line 127
    .local v0, clickUrlWrapper:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v1, p0

    :goto_0
    return-object v1

    .restart local p0
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getClickTrackers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 131
    sget-object v0, Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementName;->CLICK_TRACKER:Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementName;

    invoke-direct {p0, v0}, Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager;->getStringDataAsList(Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementName;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getImpressionTrackers()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 99
    sget-object v1, Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementName;->IMPRESSION_TRACKER:Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementName;

    invoke-direct {p0, v1}, Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager;->getStringDataAsList(Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementName;)Ljava/util/List;

    move-result-object v0

    .line 100
    .local v0, impressionTrackers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    sget-object v1, Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementName;->MP_IMPRESSION_TRACKER:Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementName;

    invoke-direct {p0, v1}, Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager;->getStringDataAsList(Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementName;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 102
    return-object v0
.end method

.method getMediaFileUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 135
    sget-object v1, Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementName;->MEDIA_FILE:Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementName;

    invoke-direct {p0, v1}, Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager;->getStringDataAsList(Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementName;)Ljava/util/List;

    move-result-object v0

    .line 136
    .local v0, urlWrapper:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v1, p0

    :goto_0
    return-object v1

    .restart local p0
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getVastAdTagURI()Ljava/lang/String;
    .locals 2

    .prologue
    .line 94
    sget-object v1, Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementName;->VAST_AD_TAG:Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementName;

    invoke-direct {p0, v1}, Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager;->getStringDataAsList(Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementName;)Ljava/util/List;

    move-result-object v0

    .line 95
    .local v0, uriWrapper:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v1, p0

    :goto_0
    return-object v1

    .restart local p0
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getVideoCompleteTrackers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 122
    sget-object v0, Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementAttributeValue;->COMPLETE:Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementAttributeValue;

    invoke-direct {p0, v0}, Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager;->getVideoTrackerByAttribute(Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementAttributeValue;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getVideoFirstQuartileTrackers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 110
    sget-object v0, Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementAttributeValue;->FIRST_QUARTILE:Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementAttributeValue;

    invoke-direct {p0, v0}, Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager;->getVideoTrackerByAttribute(Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementAttributeValue;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getVideoMidpointTrackers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 114
    sget-object v0, Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementAttributeValue;->MIDPOINT:Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementAttributeValue;

    invoke-direct {p0, v0}, Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager;->getVideoTrackerByAttribute(Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementAttributeValue;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getVideoStartTrackers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 106
    sget-object v0, Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementAttributeValue;->START:Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementAttributeValue;

    invoke-direct {p0, v0}, Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager;->getVideoTrackerByAttribute(Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementAttributeValue;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getVideoThirdQuartileTrackers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 118
    sget-object v0, Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementAttributeValue;->THIRD_QUARTILE:Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementAttributeValue;

    invoke-direct {p0, v0}, Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager;->getVideoTrackerByAttribute(Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager$VastElementAttributeValue;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method parseVastXml(Ljava/lang/String;)V
    .locals 5
    .parameter "xmlString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;,
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 81
    const-string v3, "<\\?.*\\?>"

    const-string v4, ""

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 85
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "<MPMoVideoXMLDocRoot>"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</MPMoVideoXMLDocRoot>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 87
    .local v2, documentString:Ljava/lang/String;
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    .line 88
    .local v1, documentBuilderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->setCoalescing(Z)V

    .line 89
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 90
    .local v0, documentBuilder:Ljavax/xml/parsers/DocumentBuilder;
    new-instance v3, Lorg/xml/sax/InputSource;

    new-instance v4, Ljava/io/StringReader;

    invoke-direct {v4, v2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v0, v3}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v3

    iput-object v3, p0, Lcom/fusepowered/m2/m2l/util/vast/VastXmlManager;->mVastDoc:Lorg/w3c/dom/Document;

    .line 91
    return-void
.end method
