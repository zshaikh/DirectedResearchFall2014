.class public Lcom/fusepowered/util/XMLParser;
.super Ljava/lang/Object;
.source "XMLParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/util/XMLParser$1;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "XMLParser"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    return-void
.end method

.method private static getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "attributes"    # Lorg/w3c/dom/NamedNodeMap;
    .param p1, "attributeName"    # Ljava/lang/String;

    .prologue
    .line 1698
    const/4 v0, 0x0

    .line 1699
    .local v0, "attributeValue":Ljava/lang/String;
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1700
    invoke-interface {p0, p1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {p0, p1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1701
    invoke-interface {p0, p1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    .line 1704
    :cond_0
    return-object v0
.end method

.method private static parseAdContent(Lcom/fusepowered/util/ResponseValues;Lorg/w3c/dom/NodeList;)V
    .locals 9
    .param p0, "responseValues"    # Lcom/fusepowered/util/ResponseValues;
    .param p1, "items"    # Lorg/w3c/dom/NodeList;

    .prologue
    .line 750
    new-instance v0, Lcom/fusepowered/util/Ad;

    invoke-direct {v0}, Lcom/fusepowered/util/Ad;-><init>()V

    .line 752
    .local v0, "ad":Lcom/fusepowered/util/Ad;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fusepowered/util/Ad;->setHtmlBody(Ljava/lang/String;)V

    .line 753
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fusepowered/util/Ad;->setDisplayed(Z)V

    .line 755
    const/4 v1, 0x0

    .local v1, "i":I
    move v3, v1

    .end local v1    # "i":I
    .local v3, "i":I
    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v3, v1, :cond_e

    .line 756
    invoke-interface {p1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 758
    .local v4, "item":Lorg/w3c/dom/Node;
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    .line 760
    .local v1, "adAttributes":Lorg/w3c/dom/NamedNodeMap;
    const-string v2, "t"

    invoke-interface {v1, v2}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 761
    .local v2, "type":Lorg/w3c/dom/Node;
    if-nez v2, :cond_1

    .line 762
    const/4 v2, 0x1

    iput v2, v0, Lcom/fusepowered/util/Ad;->type:I

    .line 766
    .end local v2    # "type":Lorg/w3c/dom/Node;
    :goto_1
    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v6, "1"

    aput-object v6, v5, v2

    .line 767
    .local v5, "waterfallList":[Ljava/lang/String;
    const-string v2, "w"

    invoke-interface {v1, v2}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 769
    .local v2, "waterfall":Lorg/w3c/dom/Node;
    if-eqz v2, :cond_3

    .line 772
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x2c

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_2

    .line 774
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    .end local v2    # "waterfall":Lorg/w3c/dom/Node;
    const-string v5, ","

    .end local v5    # "waterfallList":[Ljava/lang/String;
    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .local v2, "waterfallList":[Ljava/lang/String;
    move-object v7, v2

    .line 784
    .end local v2    # "waterfallList":[Ljava/lang/String;
    .local v7, "waterfallList":[Ljava/lang/String;
    :goto_2
    const-string v2, "tl"

    invoke-interface {v1, v2}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 786
    .local v2, "valtl":Lorg/w3c/dom/Node;
    if-eqz v2, :cond_4

    .line 788
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    .line 789
    .local v2, "tl":Ljava/lang/String;
    iput-object v2, v0, Lcom/fusepowered/util/Ad;->tabletLandscape:Ljava/lang/String;

    .line 796
    .end local v2    # "tl":Ljava/lang/String;
    :goto_3
    const-string v2, "tp"

    invoke-interface {v1, v2}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 798
    .local v2, "valtp":Lorg/w3c/dom/Node;
    if-eqz v2, :cond_5

    .line 800
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    .line 801
    .local v2, "tp":Ljava/lang/String;
    iput-object v2, v0, Lcom/fusepowered/util/Ad;->tabletPortrait:Ljava/lang/String;

    .line 808
    .end local v2    # "tp":Ljava/lang/String;
    :goto_4
    const-string v2, "pl"

    invoke-interface {v1, v2}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 810
    .local v2, "valpl":Lorg/w3c/dom/Node;
    if-eqz v2, :cond_6

    .line 812
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    .line 813
    .local v2, "pl":Ljava/lang/String;
    iput-object v2, v0, Lcom/fusepowered/util/Ad;->phoneLandscape:Ljava/lang/String;

    .line 820
    .end local v2    # "pl":Ljava/lang/String;
    :goto_5
    const-string v2, "pp"

    invoke-interface {v1, v2}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 822
    .local v2, "valpp":Lorg/w3c/dom/Node;
    if-eqz v2, :cond_7

    .line 824
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    .line 825
    .local v2, "pp":Ljava/lang/String;
    iput-object v2, v0, Lcom/fusepowered/util/Ad;->phonePortrait:Ljava/lang/String;

    .line 832
    .end local v2    # "pp":Ljava/lang/String;
    :goto_6
    const/4 v2, 0x0

    .local v2, "j":I
    const/4 v5, 0x0

    .local v5, "k":I
    move v6, v5

    .end local v5    # "k":I
    .local v6, "k":I
    move v5, v2

    .end local v2    # "j":I
    .local v5, "j":I
    :goto_7
    const/4 v2, 0x5

    if-ge v6, v2, :cond_8

    array-length v2, v7

    if-ge v5, v2, :cond_8

    .line 834
    aget-object v2, v7, v5

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 835
    .local v2, "currentAdType":I
    invoke-static {v2}, Lcom/fusepowered/util/Ad;->isValidAdType(I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 837
    iget-object v8, v0, Lcom/fusepowered/util/Ad;->waterfall:[I

    aput v2, v8, v6

    .line 838
    add-int/lit8 v2, v6, 0x1

    .end local v6    # "k":I
    .local v2, "k":I
    move v6, v2

    .line 832
    .end local v2    # "k":I
    .restart local v6    # "k":I
    :cond_0
    add-int/lit8 v2, v5, 0x1

    .end local v5    # "j":I
    .local v2, "j":I
    move v5, v2

    .end local v2    # "j":I
    .restart local v5    # "j":I
    goto :goto_7

    .line 764
    .end local v5    # "j":I
    .end local v6    # "k":I
    .end local v7    # "waterfallList":[Ljava/lang/String;
    .local v2, "type":Lorg/w3c/dom/Node;
    :cond_1
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    .end local v2    # "type":Lorg/w3c/dom/Node;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/fusepowered/util/Ad;->type:I

    goto/16 :goto_1

    .line 778
    .local v2, "waterfall":Lorg/w3c/dom/Node;
    .local v5, "waterfallList":[Ljava/lang/String;
    :cond_2
    const/4 v6, 0x0

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    .end local v2    # "waterfall":Lorg/w3c/dom/Node;
    aput-object v2, v5, v6

    :cond_3
    move-object v7, v5

    .end local v5    # "waterfallList":[Ljava/lang/String;
    .restart local v7    # "waterfallList":[Ljava/lang/String;
    goto :goto_2

    .line 793
    .local v2, "valtl":Lorg/w3c/dom/Node;
    :cond_4
    const-string v2, ""

    .end local v2    # "valtl":Lorg/w3c/dom/Node;
    iput-object v2, v0, Lcom/fusepowered/util/Ad;->tabletLandscape:Ljava/lang/String;

    goto :goto_3

    .line 805
    .local v2, "valtp":Lorg/w3c/dom/Node;
    :cond_5
    const-string v2, ""

    .end local v2    # "valtp":Lorg/w3c/dom/Node;
    iput-object v2, v0, Lcom/fusepowered/util/Ad;->tabletPortrait:Ljava/lang/String;

    goto :goto_4

    .line 817
    .local v2, "valpl":Lorg/w3c/dom/Node;
    :cond_6
    const-string v2, ""

    .end local v2    # "valpl":Lorg/w3c/dom/Node;
    iput-object v2, v0, Lcom/fusepowered/util/Ad;->phoneLandscape:Ljava/lang/String;

    goto :goto_5

    .line 829
    .local v2, "valpp":Lorg/w3c/dom/Node;
    :cond_7
    const-string v2, ""

    .end local v2    # "valpp":Lorg/w3c/dom/Node;
    iput-object v2, v0, Lcom/fusepowered/util/Ad;->phonePortrait:Ljava/lang/String;

    goto :goto_6

    .line 843
    .local v5, "j":I
    .restart local v6    # "k":I
    :cond_8
    const-string v2, "pw"

    invoke-interface {v1, v2}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    if-eqz v2, :cond_9

    const-string v2, "pw"

    invoke-interface {v1, v2}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_9

    .line 845
    const-string v2, "pw"

    invoke-interface {v1, v2}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/fusepowered/util/Ad;->pw:I

    .line 846
    const-string v2, "ph"

    invoke-interface {v1, v2}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/fusepowered/util/Ad;->ph:I

    .line 847
    const-string v2, "lw"

    invoke-interface {v1, v2}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/fusepowered/util/Ad;->lw:I

    .line 848
    const-string v2, "lh"

    invoke-interface {v1, v2}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/fusepowered/util/Ad;->lh:I

    .line 849
    const-string v2, "o"

    invoke-interface {v1, v2}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/fusepowered/util/Ad;->o:I

    .line 854
    :cond_9
    const-string v2, "id"

    invoke-static {v1, v2}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 855
    .local v1, "attrValue":Ljava/lang/String;
    invoke-static {v1}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 856
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .end local v1    # "attrValue":Ljava/lang/String;
    invoke-virtual {v0, v1}, Lcom/fusepowered/util/Ad;->setId(I)V

    .line 858
    :cond_a
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    .line 859
    .local v4, "properties":Lorg/w3c/dom/NodeList;
    const/4 v1, 0x0

    .end local v5    # "j":I
    .local v1, "j":I
    move v2, v1

    .end local v1    # "j":I
    .end local v6    # "k":I
    .local v2, "j":I
    :goto_8
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v2, v1, :cond_d

    .line 860
    invoke-interface {v4, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 861
    .local v5, "property":Lorg/w3c/dom/Node;
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    .line 862
    .local v1, "name":Ljava/lang/String;
    const-string v6, "HTMLBODY"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 863
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    .line 864
    .local v1, "adNode":Lorg/w3c/dom/Node;
    if-eqz v1, :cond_b

    .line 865
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    .end local v1    # "adNode":Lorg/w3c/dom/Node;
    invoke-virtual {v0, v1}, Lcom/fusepowered/util/Ad;->setHtmlBody(Ljava/lang/String;)V

    .line 859
    :cond_b
    :goto_9
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "j":I
    .local v1, "j":I
    move v2, v1

    .end local v1    # "j":I
    .restart local v2    # "j":I
    goto :goto_8

    .line 867
    .local v1, "name":Ljava/lang/String;
    :cond_c
    const-string v6, "ACTION"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    .end local v1    # "name":Ljava/lang/String;
    if-eqz v1, :cond_b

    .line 868
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    .line 869
    .local v1, "adNode":Lorg/w3c/dom/Node;
    if-eqz v1, :cond_b

    .line 870
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    .end local v1    # "adNode":Lorg/w3c/dom/Node;
    invoke-virtual {v0, v1}, Lcom/fusepowered/util/Ad;->setAction(Ljava/lang/String;)V

    goto :goto_9

    .line 874
    .end local v5    # "property":Lorg/w3c/dom/Node;
    :cond_d
    invoke-virtual {p0, v0}, Lcom/fusepowered/util/ResponseValues;->setAd(Lcom/fusepowered/util/Ad;)V

    .line 755
    add-int/lit8 v1, v3, 0x1

    .end local v3    # "i":I
    .local v1, "i":I
    move v3, v1

    .end local v1    # "i":I
    .restart local v3    # "i":I
    goto/16 :goto_0

    .line 876
    .end local v2    # "j":I
    .end local v4    # "properties":Lorg/w3c/dom/NodeList;
    .end local v7    # "waterfallList":[Ljava/lang/String;
    :cond_e
    return-void
.end method

.method private static parseFetchDlcList(Ljava/lang/String;Lcom/fusepowered/util/ResponseValues;)V
    .locals 11
    .param p0, "xmlStr"    # Ljava/lang/String;
    .param p1, "responseValues"    # Lcom/fusepowered/util/ResponseValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1010
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    .line 1011
    .local v0, "f":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 1012
    .local v0, "b":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v1, Ljava/io/ByteArrayInputStream;

    const-string v2, "UTF-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    .end local p0    # "xmlStr":Ljava/lang/String;
    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object p0

    .line 1013
    .local p0, "doc":Lorg/w3c/dom/Document;
    const-string v0, "dlc"

    .end local v0    # "b":Ljavax/xml/parsers/DocumentBuilder;
    invoke-interface {p0, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v9

    .line 1015
    .local v9, "items":Lorg/w3c/dom/NodeList;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1017
    .local v6, "dlcs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/DLC;>;"
    const/4 p0, 0x0

    .local p0, "i":I
    move v8, p0

    .end local p0    # "i":I
    .local v8, "i":I
    :goto_0
    invoke-interface {v9}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result p0

    if-ge v8, p0, :cond_13

    .line 1018
    invoke-interface {v9, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 1020
    .local v2, "item":Lorg/w3c/dom/Node;
    new-instance v1, Lcom/fusepowered/util/DLC;

    invoke-direct {v1}, Lcom/fusepowered/util/DLC;-><init>()V

    .line 1022
    .local v1, "dlc":Lcom/fusepowered/util/DLC;
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    .line 1023
    .local v0, "attributes":Lorg/w3c/dom/NamedNodeMap;
    const-string p0, "bytes"

    invoke-static {v0, p0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1024
    .local p0, "attrValue":Ljava/lang/String;
    invoke-static {p0}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1025
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .end local p0    # "attrValue":Ljava/lang/String;
    invoke-virtual {v1, p0}, Lcom/fusepowered/util/DLC;->setBytes(I)V

    .line 1026
    :cond_0
    const-string p0, "content_id"

    invoke-static {v0, p0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1027
    .restart local p0    # "attrValue":Ljava/lang/String;
    invoke-static {p0}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1028
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .end local p0    # "attrValue":Ljava/lang/String;
    invoke-virtual {v1, p0}, Lcom/fusepowered/util/DLC;->setContentId(I)V

    .line 1029
    :cond_1
    const-string p0, "id"

    invoke-static {v0, p0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1030
    .restart local p0    # "attrValue":Ljava/lang/String;
    invoke-static {p0}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1031
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .end local p0    # "attrValue":Ljava/lang/String;
    invoke-virtual {v1, p0}, Lcom/fusepowered/util/DLC;->setId(I)V

    .line 1032
    :cond_2
    const-string p0, "num_files"

    invoke-static {v0, p0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1033
    .restart local p0    # "attrValue":Ljava/lang/String;
    invoke-static {p0}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1034
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .end local p0    # "attrValue":Ljava/lang/String;
    invoke-virtual {v1, p0}, Lcom/fusepowered/util/DLC;->setNumFiles(I)V

    .line 1035
    :cond_3
    const-string p0, "product_id"

    invoke-static {v0, p0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1036
    .restart local p0    # "attrValue":Ljava/lang/String;
    invoke-static {p0}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1037
    invoke-virtual {v1, p0}, Lcom/fusepowered/util/DLC;->setProductId(Ljava/lang/String;)V

    .line 1038
    :cond_4
    const-string p0, "update"

    .end local p0    # "attrValue":Ljava/lang/String;
    invoke-static {v0, p0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1039
    .restart local p0    # "attrValue":Ljava/lang/String;
    invoke-static {p0}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    .end local v0    # "attributes":Lorg/w3c/dom/NamedNodeMap;
    if-nez v0, :cond_5

    .line 1040
    const-string v0, "0"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Lcom/fusepowered/util/DLC;->setUpdate(Z)V

    .line 1042
    :cond_5
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    .line 1044
    .local v4, "dlcNodeList":Lorg/w3c/dom/NodeList;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1046
    .local v3, "dlcContents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/DlcContent;>;"
    const/4 v0, 0x0

    .local v0, "h":I
    move v7, v0

    .end local v0    # "h":I
    .end local v2    # "item":Lorg/w3c/dom/Node;
    .local v7, "h":I
    :goto_2
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge v7, v0, :cond_12

    .line 1047
    new-instance v2, Lcom/fusepowered/util/DlcContent;

    invoke-direct {v2}, Lcom/fusepowered/util/DlcContent;-><init>()V

    .line 1048
    .local v2, "dlcContent":Lcom/fusepowered/util/DlcContent;
    invoke-interface {v4, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 1049
    .local v0, "dlcProperty":Lorg/w3c/dom/Node;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    .line 1050
    .local v5, "dlcPropertyName":Ljava/lang/String;
    const-string v10, "dlc_content"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    .end local v5    # "dlcPropertyName":Ljava/lang/String;
    if-eqz v5, :cond_e

    .line 1051
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    .line 1052
    .local v0, "dlcAttributes":Lorg/w3c/dom/NamedNodeMap;
    const-string p0, "bytes"

    .end local p0    # "attrValue":Ljava/lang/String;
    invoke-static {v0, p0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1053
    .restart local p0    # "attrValue":Ljava/lang/String;
    invoke-static {p0}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 1054
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .end local p0    # "attrValue":Ljava/lang/String;
    invoke-virtual {v2, p0}, Lcom/fusepowered/util/DlcContent;->setBytes(I)V

    .line 1055
    :cond_6
    const-string p0, "content_id"

    invoke-static {v0, p0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1056
    .restart local p0    # "attrValue":Ljava/lang/String;
    invoke-static {p0}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 1057
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .end local p0    # "attrValue":Ljava/lang/String;
    invoke-virtual {v2, p0}, Lcom/fusepowered/util/DlcContent;->setContentId(I)V

    .line 1058
    :cond_7
    const-string p0, "downloadpath"

    invoke-static {v0, p0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1059
    .restart local p0    # "attrValue":Ljava/lang/String;
    invoke-static {p0}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 1060
    invoke-virtual {v2, p0}, Lcom/fusepowered/util/DlcContent;->setDownloadPath(Ljava/lang/String;)V

    .line 1061
    :cond_8
    const-string p0, "id"

    .end local p0    # "attrValue":Ljava/lang/String;
    invoke-static {v0, p0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1062
    .restart local p0    # "attrValue":Ljava/lang/String;
    invoke-static {p0}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 1063
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .end local p0    # "attrValue":Ljava/lang/String;
    invoke-virtual {v2, p0}, Lcom/fusepowered/util/DlcContent;->setId(I)V

    .line 1064
    :cond_9
    const-string p0, "md5"

    invoke-static {v0, p0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1065
    .restart local p0    # "attrValue":Ljava/lang/String;
    invoke-static {p0}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 1066
    invoke-virtual {v2, p0}, Lcom/fusepowered/util/DlcContent;->setMd5(Ljava/lang/String;)V

    .line 1067
    :cond_a
    const-string p0, "parent_id"

    .end local p0    # "attrValue":Ljava/lang/String;
    invoke-static {v0, p0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1068
    .restart local p0    # "attrValue":Ljava/lang/String;
    invoke-static {p0}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 1069
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .end local p0    # "attrValue":Ljava/lang/String;
    invoke-virtual {v2, p0}, Lcom/fusepowered/util/DlcContent;->setParentId(I)V

    .line 1070
    :cond_b
    const-string p0, "purchased"

    invoke-static {v0, p0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1071
    .restart local p0    # "attrValue":Ljava/lang/String;
    invoke-static {p0}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_c

    .line 1072
    const-string v5, "0"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    .end local p0    # "attrValue":Ljava/lang/String;
    if-nez p0, :cond_10

    const/4 p0, 0x1

    :goto_3
    invoke-virtual {v2, p0}, Lcom/fusepowered/util/DlcContent;->setPurchased(Z)V

    .line 1073
    :cond_c
    const-string p0, "auto_download"

    invoke-static {v0, p0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1074
    .restart local p0    # "attrValue":Ljava/lang/String;
    invoke-static {p0}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_d

    .line 1075
    const-string v5, "0"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    .end local p0    # "attrValue":Ljava/lang/String;
    if-nez p0, :cond_11

    const/4 p0, 0x1

    :goto_4
    invoke-virtual {v2, p0}, Lcom/fusepowered/util/DlcContent;->setAutoDownload(Z)V

    .line 1076
    :cond_d
    const-string p0, "product_id"

    invoke-static {v0, p0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1077
    .restart local p0    # "attrValue":Ljava/lang/String;
    invoke-static {p0}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    .end local v0    # "dlcAttributes":Lorg/w3c/dom/NamedNodeMap;
    if-nez v0, :cond_e

    .line 1078
    invoke-virtual {v2, p0}, Lcom/fusepowered/util/DlcContent;->setProductId(Ljava/lang/String;)V

    .line 1080
    :cond_e
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1046
    add-int/lit8 v0, v7, 0x1

    .end local v7    # "h":I
    .local v0, "h":I
    move v7, v0

    .end local v0    # "h":I
    .restart local v7    # "h":I
    goto/16 :goto_2

    .line 1040
    .end local v3    # "dlcContents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/DlcContent;>;"
    .end local v4    # "dlcNodeList":Lorg/w3c/dom/NodeList;
    .end local v7    # "h":I
    .local v2, "item":Lorg/w3c/dom/Node;
    :cond_f
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 1072
    .end local p0    # "attrValue":Ljava/lang/String;
    .local v0, "dlcAttributes":Lorg/w3c/dom/NamedNodeMap;
    .local v2, "dlcContent":Lcom/fusepowered/util/DlcContent;
    .restart local v3    # "dlcContents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/DlcContent;>;"
    .restart local v4    # "dlcNodeList":Lorg/w3c/dom/NodeList;
    .restart local v7    # "h":I
    :cond_10
    const/4 p0, 0x0

    goto :goto_3

    .line 1075
    :cond_11
    const/4 p0, 0x0

    goto :goto_4

    .line 1082
    .end local v0    # "dlcAttributes":Lorg/w3c/dom/NamedNodeMap;
    .end local v2    # "dlcContent":Lcom/fusepowered/util/DlcContent;
    .restart local p0    # "attrValue":Ljava/lang/String;
    :cond_12
    invoke-virtual {v1, v3}, Lcom/fusepowered/util/DLC;->setDlcContents(Ljava/util/ArrayList;)V

    .line 1084
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1017
    add-int/lit8 p0, v8, 0x1

    .end local v8    # "i":I
    .local p0, "i":I
    move v8, p0

    .end local p0    # "i":I
    .restart local v8    # "i":I
    goto/16 :goto_0

    .line 1087
    .end local v1    # "dlc":Lcom/fusepowered/util/DLC;
    .end local v3    # "dlcContents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/DlcContent;>;"
    .end local v4    # "dlcNodeList":Lorg/w3c/dom/NodeList;
    .end local v7    # "h":I
    :cond_13
    invoke-virtual {p1, v6}, Lcom/fusepowered/util/ResponseValues;->setDlc(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1094
    return-void

    .line 1090
    .end local v6    # "dlcs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/DLC;>;"
    .end local v8    # "i":I
    .end local v9    # "items":Lorg/w3c/dom/NodeList;
    :catch_0
    move-exception p0

    .line 1091
    .local p0, "e":Ljava/lang/Exception;
    throw p0
.end method

.method private static parseFriendAction(Ljava/lang/String;Lcom/fusepowered/util/ResponseValues;)V
    .locals 10
    .param p0, "response"    # Ljava/lang/String;
    .param p1, "responseValues"    # Lcom/fusepowered/util/ResponseValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1639
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v5

    .line 1640
    .local v5, "f":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v5}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    .line 1641
    .local v2, "b":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v8, Ljava/io/ByteArrayInputStream;

    const-string v9, "UTF-8"

    invoke-virtual {p0, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v2, v8}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v3

    .line 1642
    .local v3, "doc":Lorg/w3c/dom/Document;
    const-string v8, "friend_action"

    invoke-interface {v3, v8}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    .line 1643
    .local v7, "items":Lorg/w3c/dom/NodeList;
    const/4 v8, 0x0

    invoke-interface {v7, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    .line 1644
    .local v6, "item":Lorg/w3c/dom/Node;
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    .line 1646
    .local v1, "attributes":Lorg/w3c/dom/NamedNodeMap;
    const-string v8, "fuse_id"

    invoke-static {v1, v8}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1647
    .local v0, "attrValue":Ljava/lang/String;
    invoke-static {v0}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1648
    invoke-virtual {p1, v0}, Lcom/fusepowered/util/ResponseValues;->setFuseId(Ljava/lang/String;)V

    .line 1651
    :cond_0
    const-string v8, "error"

    invoke-static {v1, v8}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1652
    invoke-static {v0}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 1653
    invoke-virtual {p1, v0}, Lcom/fusepowered/util/ResponseValues;->setError(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1658
    :cond_1
    return-void

    .line 1655
    .end local v0    # "attrValue":Ljava/lang/String;
    .end local v1    # "attributes":Lorg/w3c/dom/NamedNodeMap;
    .end local v2    # "b":Ljavax/xml/parsers/DocumentBuilder;
    .end local v3    # "doc":Lorg/w3c/dom/Document;
    .end local v5    # "f":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v6    # "item":Lorg/w3c/dom/Node;
    .end local v7    # "items":Lorg/w3c/dom/NodeList;
    :catch_0
    move-exception v8

    move-object v4, v8

    .line 1656
    .local v4, "e":Ljava/lang/Exception;
    throw v4
.end method

.method private static parseGetAd(Ljava/lang/String;Lcom/fusepowered/util/ResponseValues;)Z
    .locals 13
    .param p0, "xmlStr"    # Ljava/lang/String;
    .param p1, "responseValues"    # Lcom/fusepowered/util/ResponseValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 728
    const/4 v2, 0x0

    .line 730
    .local v2, "displayAdRequired":Z
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v6

    .line 731
    .local v6, "f":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v6}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 732
    .local v0, "b":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v9, Ljava/io/ByteArrayInputStream;

    const-string v10, "UTF-8"

    invoke-virtual {p0, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v9}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v3

    .line 733
    .local v3, "doc":Lorg/w3c/dom/Document;
    const-string v9, "AD_REQUEST"

    invoke-interface {v3, v9}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    .line 735
    .local v7, "items":Lorg/w3c/dom/NodeList;
    invoke-virtual {p1}, Lcom/fusepowered/util/ResponseValues;->peekAd()Lcom/fusepowered/util/Ad;

    move-result-object v1

    .line 736
    .local v1, "cachedAd":Lcom/fusepowered/util/Ad;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/fusepowered/util/Ad;->hasHtmlBody()Z

    move-result v9

    if-nez v9, :cond_1

    :cond_0
    move v5, v12

    .line 737
    .local v5, "emptyCacheBefore":Z
    :goto_0
    invoke-static {p1, v7}, Lcom/fusepowered/util/XMLParser;->parseAdContent(Lcom/fusepowered/util/ResponseValues;Lorg/w3c/dom/NodeList;)V

    .line 738
    invoke-virtual {p1}, Lcom/fusepowered/util/ResponseValues;->peekAd()Lcom/fusepowered/util/Ad;

    move-result-object v1

    .line 739
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/fusepowered/util/Ad;->hasHtmlBody()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    if-eqz v9, :cond_2

    move v8, v12

    .line 741
    .local v8, "nonEmptyCacheAfter":Z
    :goto_1
    if-eqz v5, :cond_3

    if-eqz v8, :cond_3

    move v2, v12

    .line 746
    :goto_2
    return v2

    .end local v5    # "emptyCacheBefore":Z
    .end local v8    # "nonEmptyCacheAfter":Z
    :cond_1
    move v5, v11

    .line 736
    goto :goto_0

    .restart local v5    # "emptyCacheBefore":Z
    :cond_2
    move v8, v11

    .line 739
    goto :goto_1

    .restart local v8    # "nonEmptyCacheAfter":Z
    :cond_3
    move v2, v11

    .line 741
    goto :goto_2

    .line 743
    .end local v0    # "b":Ljavax/xml/parsers/DocumentBuilder;
    .end local v1    # "cachedAd":Lcom/fusepowered/util/Ad;
    .end local v3    # "doc":Lorg/w3c/dom/Document;
    .end local v5    # "emptyCacheBefore":Z
    .end local v6    # "f":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v7    # "items":Lorg/w3c/dom/NodeList;
    .end local v8    # "nonEmptyCacheAfter":Z
    :catch_0
    move-exception v9

    move-object v4, v9

    .line 744
    .local v4, "e":Ljava/lang/Exception;
    throw v4
.end method

.method private static parseGetEnemiesList(Ljava/lang/String;Lcom/fusepowered/util/ResponseValues;)V
    .locals 8
    .param p0, "xmlStr"    # Ljava/lang/String;
    .param p1, "responseValues"    # Lcom/fusepowered/util/ResponseValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1527
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    .line 1528
    .local v0, "f":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 1529
    .local v0, "b":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v1, Ljava/io/ByteArrayInputStream;

    const-string v2, "UTF-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    .end local p0    # "xmlStr":Ljava/lang/String;
    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object p0

    .line 1530
    .local p0, "doc":Lorg/w3c/dom/Document;
    const-string v0, "enemies_list"

    .end local v0    # "b":Ljavax/xml/parsers/DocumentBuilder;
    invoke-interface {p0, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v5

    .line 1532
    .local v5, "items":Lorg/w3c/dom/NodeList;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1534
    .local v1, "enemiesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/Player;>;"
    const/4 p0, 0x0

    .local p0, "i":I
    move v4, p0

    .end local p0    # "i":I
    .local v4, "i":I
    :goto_0
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result p0

    if-ge v4, p0, :cond_9

    .line 1535
    invoke-interface {v5, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 1537
    .local v0, "item":Lorg/w3c/dom/Node;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object p0

    .line 1538
    .local p0, "listAttributes":Lorg/w3c/dom/NamedNodeMap;
    const-string v2, "error"

    invoke-static {p0, v2}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1539
    .local p0, "attrValue":Ljava/lang/String;
    invoke-static {p0}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1540
    invoke-virtual {p1, p0}, Lcom/fusepowered/util/ResponseValues;->setError(Ljava/lang/String;)V

    .line 1542
    :cond_0
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 1543
    .local v2, "enemiesNodeList":Lorg/w3c/dom/NodeList;
    const/4 v0, 0x0

    .local v0, "j":I
    move v6, v0

    .end local v0    # "j":I
    .local v6, "j":I
    :goto_1
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result p0

    .end local p0    # "attrValue":Ljava/lang/String;
    if-ge v6, p0, :cond_8

    .line 1544
    new-instance v3, Lcom/fusepowered/util/Player;

    invoke-direct {v3}, Lcom/fusepowered/util/Player;-><init>()V

    .line 1545
    .local v3, "friend":Lcom/fusepowered/util/Player;
    invoke-interface {v2, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p0

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    .line 1546
    .local v0, "attributes":Lorg/w3c/dom/NamedNodeMap;
    const-string p0, "account_id"

    invoke-static {v0, p0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1547
    .restart local p0    # "attrValue":Ljava/lang/String;
    invoke-static {p0}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1548
    invoke-virtual {v3, p0}, Lcom/fusepowered/util/Player;->setAccountId(Ljava/lang/String;)V

    .line 1549
    :cond_1
    const-string p0, "alias"

    .end local p0    # "attrValue":Ljava/lang/String;
    invoke-static {v0, p0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1550
    .restart local p0    # "attrValue":Ljava/lang/String;
    invoke-static {p0}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 1551
    invoke-static {p0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p0

    .end local p0    # "attrValue":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Lcom/fusepowered/util/Player;->setAlias(Ljava/lang/String;)V

    .line 1552
    :cond_2
    const-string p0, "fuse_id"

    invoke-static {v0, p0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1553
    .restart local p0    # "attrValue":Ljava/lang/String;
    invoke-static {p0}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 1554
    invoke-virtual {v3, p0}, Lcom/fusepowered/util/Player;->setFuseId(Ljava/lang/String;)V

    .line 1555
    :cond_3
    const-string p0, "type"

    .end local p0    # "attrValue":Ljava/lang/String;
    invoke-static {v0, p0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1556
    .restart local p0    # "attrValue":Ljava/lang/String;
    invoke-static {p0}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 1557
    invoke-virtual {v3, p0}, Lcom/fusepowered/util/Player;->setType(Ljava/lang/String;)V

    .line 1558
    :cond_4
    const-string p0, "level"

    .end local p0    # "attrValue":Ljava/lang/String;
    invoke-static {v0, p0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1559
    .restart local p0    # "attrValue":Ljava/lang/String;
    invoke-static {p0}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 1560
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .end local p0    # "attrValue":Ljava/lang/String;
    invoke-virtual {v3, p0}, Lcom/fusepowered/util/Player;->setLevel(I)V

    .line 1561
    :cond_5
    const-string p0, "can_attack"

    invoke-static {v0, p0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1562
    .local v0, "attrValue":Ljava/lang/String;
    invoke-static {v0}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_6

    .line 1563
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 1564
    .local p0, "attackFlag":I
    const/4 v7, 0x1

    if-ne p0, v7, :cond_7

    const/4 p0, 0x1

    .end local p0    # "attackFlag":I
    :goto_2
    invoke-virtual {v3, p0}, Lcom/fusepowered/util/Player;->setCanAttack(Z)V

    .line 1567
    :cond_6
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1543
    add-int/lit8 p0, v6, 0x1

    .end local v6    # "j":I
    .local p0, "j":I
    move v6, p0

    .end local p0    # "j":I
    .restart local v6    # "j":I
    move-object p0, v0

    .end local v0    # "attrValue":Ljava/lang/String;
    .local p0, "attrValue":Ljava/lang/String;
    goto/16 :goto_1

    .line 1564
    .restart local v0    # "attrValue":Ljava/lang/String;
    .local p0, "attackFlag":I
    :cond_7
    const/4 p0, 0x0

    goto :goto_2

    .line 1534
    .end local v0    # "attrValue":Ljava/lang/String;
    .end local v3    # "friend":Lcom/fusepowered/util/Player;
    .end local p0    # "attackFlag":I
    :cond_8
    add-int/lit8 p0, v4, 0x1

    .end local v4    # "i":I
    .local p0, "i":I
    move v4, p0

    .end local p0    # "i":I
    .restart local v4    # "i":I
    goto/16 :goto_0

    .line 1572
    .end local v2    # "enemiesNodeList":Lorg/w3c/dom/NodeList;
    .end local v6    # "j":I
    :cond_9
    invoke-virtual {p1, v1}, Lcom/fusepowered/util/ResponseValues;->setEnemiesList(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1578
    return-void

    .line 1575
    .end local v1    # "enemiesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/Player;>;"
    .end local v4    # "i":I
    .end local v5    # "items":Lorg/w3c/dom/NodeList;
    :catch_0
    move-exception p0

    .line 1576
    .local p0, "e":Ljava/lang/Exception;
    throw p0
.end method

.method private static parseGetFriendsList(Ljava/lang/String;Lcom/fusepowered/util/ResponseValues;)V
    .locals 8
    .param p0, "xmlStr"    # Ljava/lang/String;
    .param p1, "responseValues"    # Lcom/fusepowered/util/ResponseValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1583
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    .line 1584
    .local v0, "f":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 1585
    .local v0, "b":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v1, Ljava/io/ByteArrayInputStream;

    const-string v2, "UTF-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    .end local p0    # "xmlStr":Ljava/lang/String;
    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object p0

    .line 1586
    .local p0, "doc":Lorg/w3c/dom/Document;
    const-string v0, "friends_list"

    .end local v0    # "b":Ljavax/xml/parsers/DocumentBuilder;
    invoke-interface {p0, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v5

    .line 1588
    .local v5, "items":Lorg/w3c/dom/NodeList;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1590
    .local v3, "friendsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/Player;>;"
    const/4 p0, 0x0

    .local p0, "i":I
    move v4, p0

    .end local p0    # "i":I
    .local v4, "i":I
    :goto_0
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result p0

    if-ge v4, p0, :cond_8

    .line 1591
    invoke-interface {v5, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 1593
    .local v0, "item":Lorg/w3c/dom/Node;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object p0

    .line 1594
    .local p0, "listAttributes":Lorg/w3c/dom/NamedNodeMap;
    const-string v1, "error"

    invoke-static {p0, v1}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1595
    .local p0, "attrValue":Ljava/lang/String;
    invoke-static {p0}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1596
    invoke-virtual {p1, p0}, Lcom/fusepowered/util/ResponseValues;->setError(Ljava/lang/String;)V

    .line 1598
    :cond_0
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 1599
    .local v2, "friendNodeList":Lorg/w3c/dom/NodeList;
    const/4 v0, 0x0

    .local v0, "j":I
    move v6, v0

    .end local v0    # "j":I
    .local v6, "j":I
    :goto_1
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result p0

    .end local p0    # "attrValue":Ljava/lang/String;
    if-ge v6, p0, :cond_7

    .line 1600
    invoke-interface {v2, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p0

    .line 1601
    .local p0, "friendItem":Lorg/w3c/dom/Node;
    new-instance v1, Lcom/fusepowered/util/Player;

    invoke-direct {v1}, Lcom/fusepowered/util/Player;-><init>()V

    .line 1602
    .local v1, "friend":Lcom/fusepowered/util/Player;
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    .line 1603
    .local v0, "attributes":Lorg/w3c/dom/NamedNodeMap;
    const-string p0, "account_id"

    .end local p0    # "friendItem":Lorg/w3c/dom/Node;
    invoke-static {v0, p0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1604
    .local p0, "attrValue":Ljava/lang/String;
    invoke-static {p0}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1605
    invoke-virtual {v1, p0}, Lcom/fusepowered/util/Player;->setAccountId(Ljava/lang/String;)V

    .line 1606
    :cond_1
    const-string p0, "alias"

    .end local p0    # "attrValue":Ljava/lang/String;
    invoke-static {v0, p0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1607
    .restart local p0    # "attrValue":Ljava/lang/String;
    invoke-static {p0}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 1608
    invoke-static {p0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p0

    .end local p0    # "attrValue":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/fusepowered/util/Player;->setAlias(Ljava/lang/String;)V

    .line 1609
    :cond_2
    const-string p0, "fuse_id"

    invoke-static {v0, p0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1610
    .restart local p0    # "attrValue":Ljava/lang/String;
    invoke-static {p0}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 1611
    invoke-virtual {v1, p0}, Lcom/fusepowered/util/Player;->setFuseId(Ljava/lang/String;)V

    .line 1612
    :cond_3
    const-string p0, "type"

    .end local p0    # "attrValue":Ljava/lang/String;
    invoke-static {v0, p0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1613
    .restart local p0    # "attrValue":Ljava/lang/String;
    invoke-static {p0}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 1614
    invoke-virtual {v1, p0}, Lcom/fusepowered/util/Player;->setType(Ljava/lang/String;)V

    .line 1615
    :cond_4
    const-string p0, "level"

    .end local p0    # "attrValue":Ljava/lang/String;
    invoke-static {v0, p0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1616
    .restart local p0    # "attrValue":Ljava/lang/String;
    invoke-static {p0}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 1617
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .end local p0    # "attrValue":Ljava/lang/String;
    invoke-virtual {v1, p0}, Lcom/fusepowered/util/Player;->setLevel(I)V

    .line 1618
    :cond_5
    const-string p0, "pending"

    invoke-static {v0, p0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1619
    .restart local p0    # "attrValue":Ljava/lang/String;
    invoke-static {p0}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    .end local v0    # "attributes":Lorg/w3c/dom/NamedNodeMap;
    if-nez v0, :cond_6

    .line 1620
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/fusepowered/util/Player;->setPending(I)V

    .line 1622
    :cond_6
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1599
    add-int/lit8 v0, v6, 0x1

    .end local v6    # "j":I
    .local v0, "j":I
    move v6, v0

    .end local v0    # "j":I
    .restart local v6    # "j":I
    goto/16 :goto_1

    .line 1590
    .end local v1    # "friend":Lcom/fusepowered/util/Player;
    .end local p0    # "attrValue":Ljava/lang/String;
    :cond_7
    add-int/lit8 p0, v4, 0x1

    .end local v4    # "i":I
    .local p0, "i":I
    move v4, p0

    .end local p0    # "i":I
    .restart local v4    # "i":I
    goto/16 :goto_0

    .line 1627
    .end local v2    # "friendNodeList":Lorg/w3c/dom/NodeList;
    .end local v6    # "j":I
    :cond_8
    invoke-virtual {p1, v3}, Lcom/fusepowered/util/ResponseValues;->setFriendsList(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1634
    return-void

    .line 1630
    .end local v3    # "friendsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/Player;>;"
    .end local v4    # "i":I
    .end local v5    # "items":Lorg/w3c/dom/NodeList;
    :catch_0
    move-exception p0

    .line 1631
    .local p0, "e":Ljava/lang/Exception;
    throw p0
.end method

.method private static parseGetGamedata(Ljava/lang/String;Lcom/fusepowered/util/ResponseValues;)V
    .locals 17
    .param p0, "xmlStr"    # Ljava/lang/String;
    .param p1, "responseValues"    # Lcom/fusepowered/util/ResponseValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 880
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v2

    .line 881
    .local v2, "f":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    .line 882
    .local v2, "b":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v3, Ljava/io/ByteArrayInputStream;

    const-string v4, "UTF-8"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    .end local p0    # "xmlStr":Ljava/lang/String;
    move-object v0, v3

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v2, v3}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object p0

    .line 883
    .local p0, "doc":Lorg/w3c/dom/Document;
    const-string v2, "game_data"

    .end local v2    # "b":Ljavax/xml/parsers/DocumentBuilder;
    move-object/from16 v0, p0

    move-object v1, v2

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v8

    .line 885
    .local v8, "items":Lorg/w3c/dom/NodeList;
    invoke-virtual/range {p1 .. p1}, Lcom/fusepowered/util/ResponseValues;->getGameKeyValuePairs()Lcom/fusepowered/util/GameKeyValuePairs;

    move-result-object p0

    .line 886
    .local p0, "gameKeyValuePairs":Lcom/fusepowered/util/GameKeyValuePairs;
    if-nez p0, :cond_a

    .line 887
    new-instance p0, Lcom/fusepowered/util/GameKeyValuePairs;

    .end local p0    # "gameKeyValuePairs":Lcom/fusepowered/util/GameKeyValuePairs;
    invoke-direct/range {p0 .. p0}, Lcom/fusepowered/util/GameKeyValuePairs;-><init>()V

    .restart local p0    # "gameKeyValuePairs":Lcom/fusepowered/util/GameKeyValuePairs;
    move-object/from16 v5, p0

    .line 890
    .end local p0    # "gameKeyValuePairs":Lcom/fusepowered/util/GameKeyValuePairs;
    .local v5, "gameKeyValuePairs":Lcom/fusepowered/util/GameKeyValuePairs;
    :goto_0
    const/16 p0, 0x0

    .local p0, "i":I
    move/from16 v6, p0

    .end local p0    # "i":I
    .local v6, "i":I
    :goto_1
    invoke-interface {v8}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result p0

    move v0, v6

    move/from16 v1, p0

    if-ge v0, v1, :cond_7

    .line 891
    invoke-interface {v8, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 894
    .local v3, "item":Lorg/w3c/dom/Node;
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    .line 896
    .local v2, "gamedataAttributes":Lorg/w3c/dom/NamedNodeMap;
    const-string p0, "c"

    move-object v0, v2

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 900
    .local p0, "attrValue":Ljava/lang/String;
    const-string v4, "reqID"

    invoke-static {v2, v4}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 901
    .local v14, "requestId":Ljava/lang/String;
    invoke-virtual {v5, v14}, Lcom/fusepowered/util/GameKeyValuePairs;->setReqId(Ljava/lang/String;)V

    .line 904
    const-string v4, "row_key"

    invoke-static {v2, v4}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 905
    .local v12, "objectKey":Ljava/lang/String;
    invoke-interface {v8}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    const/4 v7, 0x1

    if-le v4, v7, :cond_0

    .line 906
    const-string v4, ""

    invoke-virtual {v5, v4}, Lcom/fusepowered/util/GameKeyValuePairs;->setRowKey(Ljava/lang/String;)V

    .line 914
    :goto_2
    const-string v4, "user"

    invoke-static {v2, v4}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 915
    .local v2, "user":Ljava/lang/String;
    invoke-virtual {v5, v2}, Lcom/fusepowered/util/GameKeyValuePairs;->setUser(Ljava/lang/String;)V

    .line 917
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v13

    .line 919
    .local v13, "properties":Lorg/w3c/dom/NodeList;
    const/4 v2, 0x0

    .local v2, "j":I
    move v9, v2

    .end local v2    # "j":I
    .end local v3    # "item":Lorg/w3c/dom/Node;
    .local v9, "j":I
    :goto_3
    invoke-interface {v13}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v9, v2, :cond_6

    .line 920
    invoke-interface {v13, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 921
    .local v3, "property":Lorg/w3c/dom/Node;
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    .line 923
    .local v2, "name":Ljava/lang/String;
    const-string v4, "d"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    .end local v2    # "name":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 924
    const/4 v2, 0x0

    .line 925
    .local v2, "isBinary":Z
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object p0

    .line 927
    .local p0, "dataAttributes":Lorg/w3c/dom/NamedNodeMap;
    const-string v4, "b"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-static {v0, v1}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 928
    .local p0, "attrValue":Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 930
    const-string v2, "1"

    .end local v2    # "isBinary":Z
    move-object v0, v2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .restart local v2    # "isBinary":Z
    move v7, v2

    .line 932
    .end local v2    # "isBinary":Z
    .local v7, "isBinary":Z
    :goto_4
    const/4 v4, 0x0

    .line 933
    .local v4, "key":Ljava/lang/String;
    const/4 v10, 0x0

    .line 934
    .local v10, "value":Ljava/lang/String;
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 936
    .local v3, "dataProperties":Lorg/w3c/dom/NodeList;
    const/4 v2, 0x0

    .local v2, "k":I
    move-object v15, v10

    .end local v10    # "value":Ljava/lang/String;
    .local v15, "value":Ljava/lang/String;
    move-object v11, v4

    .end local v4    # "key":Ljava/lang/String;
    .local v11, "key":Ljava/lang/String;
    move v10, v2

    .end local v2    # "k":I
    .local v10, "k":I
    :goto_5
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v10, v2, :cond_2

    .line 937
    invoke-interface {v3, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 938
    .local v4, "dataProperty":Lorg/w3c/dom/Node;
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    .line 940
    .local v2, "dataName":Ljava/lang/String;
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v16

    if-eqz v16, :cond_8

    .line 941
    const-string v16, "key"

    move-object v0, v2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 942
    const/4 v2, 0x0

    .line 943
    .end local v11    # "key":Ljava/lang/String;
    .local v2, "key":Ljava/lang/String;
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    .end local v2    # "key":Ljava/lang/String;
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "key":Ljava/lang/String;
    move-object v11, v15

    .end local v15    # "value":Ljava/lang/String;
    .local v11, "value":Ljava/lang/String;
    move-object v4, v2

    .line 936
    .end local v2    # "key":Ljava/lang/String;
    .local v4, "key":Ljava/lang/String;
    :goto_6
    add-int/lit8 v2, v10, 0x1

    .end local v10    # "k":I
    .local v2, "k":I
    move v10, v2

    .end local v2    # "k":I
    .restart local v10    # "k":I
    move-object v15, v11

    .end local v11    # "value":Ljava/lang/String;
    .restart local v15    # "value":Ljava/lang/String;
    move-object v11, v4

    .end local v4    # "key":Ljava/lang/String;
    .local v11, "key":Ljava/lang/String;
    goto :goto_5

    .line 909
    .end local v7    # "isBinary":Z
    .end local v9    # "j":I
    .end local v10    # "k":I
    .end local v11    # "key":Ljava/lang/String;
    .end local v13    # "properties":Lorg/w3c/dom/NodeList;
    .end local v15    # "value":Ljava/lang/String;
    .local v2, "gamedataAttributes":Lorg/w3c/dom/NamedNodeMap;
    .local v3, "item":Lorg/w3c/dom/Node;
    :cond_0
    invoke-virtual {v5, v12}, Lcom/fusepowered/util/GameKeyValuePairs;->setRowKey(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 974
    .end local v2    # "gamedataAttributes":Lorg/w3c/dom/NamedNodeMap;
    .end local v3    # "item":Lorg/w3c/dom/Node;
    .end local v5    # "gameKeyValuePairs":Lcom/fusepowered/util/GameKeyValuePairs;
    .end local v6    # "i":I
    .end local v8    # "items":Lorg/w3c/dom/NodeList;
    .end local v12    # "objectKey":Ljava/lang/String;
    .end local v14    # "requestId":Ljava/lang/String;
    .end local p0    # "attrValue":Ljava/lang/String;
    :catch_0
    move-exception p0

    .line 975
    .local p0, "e":Ljava/lang/Exception;
    throw p0

    .line 945
    .local v2, "dataName":Ljava/lang/String;
    .local v3, "dataProperties":Lorg/w3c/dom/NodeList;
    .local v4, "dataProperty":Lorg/w3c/dom/Node;
    .restart local v5    # "gameKeyValuePairs":Lcom/fusepowered/util/GameKeyValuePairs;
    .restart local v6    # "i":I
    .restart local v7    # "isBinary":Z
    .restart local v8    # "items":Lorg/w3c/dom/NodeList;
    .restart local v9    # "j":I
    .restart local v10    # "k":I
    .restart local v11    # "key":Ljava/lang/String;
    .restart local v12    # "objectKey":Ljava/lang/String;
    .restart local v13    # "properties":Lorg/w3c/dom/NodeList;
    .restart local v14    # "requestId":Ljava/lang/String;
    .restart local v15    # "value":Ljava/lang/String;
    .local p0, "attrValue":Ljava/lang/String;
    :cond_1
    :try_start_1
    const-string v16, "value"

    move-object v0, v2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    .end local v2    # "dataName":Ljava/lang/String;
    if-eqz v2, :cond_8

    .line 946
    const/4 v2, 0x0

    .line 947
    .end local v15    # "value":Ljava/lang/String;
    .local v2, "value":Ljava/lang/String;
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    .end local v2    # "value":Ljava/lang/String;
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "value":Ljava/lang/String;
    move-object v4, v11

    .end local v11    # "key":Ljava/lang/String;
    .local v4, "key":Ljava/lang/String;
    move-object v11, v2

    .end local v2    # "value":Ljava/lang/String;
    .local v11, "value":Ljava/lang/String;
    goto :goto_6

    .line 952
    .end local v4    # "key":Ljava/lang/String;
    .local v11, "key":Ljava/lang/String;
    .restart local v15    # "value":Ljava/lang/String;
    :cond_2
    invoke-static {v12}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 953
    if-eqz v7, :cond_4

    .line 954
    const/4 v2, 0x0

    invoke-static {v15, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    .line 957
    .local v2, "decoded":[B
    invoke-virtual {v5, v11, v2}, Lcom/fusepowered/util/GameKeyValuePairs;->setKeyValue(Ljava/lang/String;[B)V

    .line 919
    .end local v2    # "decoded":[B
    .end local v3    # "dataProperties":Lorg/w3c/dom/NodeList;
    .end local v7    # "isBinary":Z
    .end local v10    # "k":I
    .end local v11    # "key":Ljava/lang/String;
    .end local v15    # "value":Ljava/lang/String;
    :cond_3
    :goto_7
    add-int/lit8 v2, v9, 0x1

    .end local v9    # "j":I
    .local v2, "j":I
    move v9, v2

    .end local v2    # "j":I
    .restart local v9    # "j":I
    goto/16 :goto_3

    .line 961
    .restart local v3    # "dataProperties":Lorg/w3c/dom/NodeList;
    .restart local v7    # "isBinary":Z
    .restart local v10    # "k":I
    .restart local v11    # "key":Ljava/lang/String;
    .restart local v15    # "value":Ljava/lang/String;
    :cond_4
    invoke-virtual {v5, v11, v15}, Lcom/fusepowered/util/GameKeyValuePairs;->setKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 967
    :cond_5
    invoke-virtual {v5, v12, v11, v15, v14}, Lcom/fusepowered/util/GameKeyValuePairs;->setObjectKeyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 890
    .end local v3    # "dataProperties":Lorg/w3c/dom/NodeList;
    .end local v7    # "isBinary":Z
    .end local v10    # "k":I
    .end local v11    # "key":Ljava/lang/String;
    .end local v15    # "value":Ljava/lang/String;
    :cond_6
    add-int/lit8 p0, v6, 0x1

    .end local v6    # "i":I
    .local p0, "i":I
    move/from16 v6, p0

    .end local p0    # "i":I
    .restart local v6    # "i":I
    goto/16 :goto_1

    .line 972
    .end local v9    # "j":I
    .end local v12    # "objectKey":Ljava/lang/String;
    .end local v13    # "properties":Lorg/w3c/dom/NodeList;
    .end local v14    # "requestId":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/fusepowered/util/ResponseValues;->setGameKeyValuePairs(Lcom/fusepowered/util/GameKeyValuePairs;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 977
    return-void

    .restart local v3    # "dataProperties":Lorg/w3c/dom/NodeList;
    .local v4, "dataProperty":Lorg/w3c/dom/Node;
    .restart local v7    # "isBinary":Z
    .restart local v9    # "j":I
    .restart local v10    # "k":I
    .restart local v11    # "key":Ljava/lang/String;
    .restart local v12    # "objectKey":Ljava/lang/String;
    .restart local v13    # "properties":Lorg/w3c/dom/NodeList;
    .restart local v14    # "requestId":Ljava/lang/String;
    .restart local v15    # "value":Ljava/lang/String;
    .local p0, "attrValue":Ljava/lang/String;
    :cond_8
    move-object v4, v11

    .end local v11    # "key":Ljava/lang/String;
    .local v4, "key":Ljava/lang/String;
    move-object v11, v15

    .end local v15    # "value":Ljava/lang/String;
    .local v11, "value":Ljava/lang/String;
    goto :goto_6

    .end local v4    # "key":Ljava/lang/String;
    .end local v7    # "isBinary":Z
    .end local v10    # "k":I
    .end local v11    # "value":Ljava/lang/String;
    .local v2, "isBinary":Z
    .local v3, "property":Lorg/w3c/dom/Node;
    :cond_9
    move v7, v2

    .end local v2    # "isBinary":Z
    .restart local v7    # "isBinary":Z
    goto/16 :goto_4

    .end local v3    # "property":Lorg/w3c/dom/Node;
    .end local v5    # "gameKeyValuePairs":Lcom/fusepowered/util/GameKeyValuePairs;
    .end local v6    # "i":I
    .end local v7    # "isBinary":Z
    .end local v9    # "j":I
    .end local v12    # "objectKey":Ljava/lang/String;
    .end local v13    # "properties":Lorg/w3c/dom/NodeList;
    .end local v14    # "requestId":Ljava/lang/String;
    .local p0, "gameKeyValuePairs":Lcom/fusepowered/util/GameKeyValuePairs;
    :cond_a
    move-object/from16 v5, p0

    .end local p0    # "gameKeyValuePairs":Lcom/fusepowered/util/GameKeyValuePairs;
    .restart local v5    # "gameKeyValuePairs":Lcom/fusepowered/util/GameKeyValuePairs;
    goto/16 :goto_0
.end method

.method private static parseGetMail(Ljava/lang/String;Lcom/fusepowered/util/ResponseValues;)V
    .locals 11
    .param p0, "xmlStr"    # Ljava/lang/String;
    .param p1, "responseValues"    # Lcom/fusepowered/util/ResponseValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1381
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    .line 1382
    .local v0, "f":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 1383
    .local v0, "b":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v1, Ljava/io/ByteArrayInputStream;

    const-string v2, "UTF-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    .end local p0    # "xmlStr":Ljava/lang/String;
    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object p0

    .line 1384
    .local p0, "doc":Lorg/w3c/dom/Document;
    const-string v0, "mail"

    .end local v0    # "b":Ljavax/xml/parsers/DocumentBuilder;
    invoke-interface {p0, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 1386
    .local v3, "items":Lorg/w3c/dom/NodeList;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1388
    .local v9, "mailList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/Mail;>;"
    const/4 p0, 0x0

    .local p0, "i":I
    move v2, p0

    .end local p0    # "i":I
    .local v2, "i":I
    :goto_0
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result p0

    if-ge v2, p0, :cond_e

    .line 1389
    invoke-interface {v3, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 1391
    .local v0, "item":Lorg/w3c/dom/Node;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    .line 1392
    .local v1, "listAttributes":Lorg/w3c/dom/NamedNodeMap;
    const-string p0, "error"

    invoke-static {v1, p0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1393
    .local p0, "attrValue":Ljava/lang/String;
    invoke-static {p0}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1394
    invoke-virtual {p1, p0}, Lcom/fusepowered/util/ResponseValues;->setError(Ljava/lang/String;)V

    .line 1395
    :cond_0
    const-string p0, "to_user"

    .end local p0    # "attrValue":Ljava/lang/String;
    invoke-static {v1, p0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1396
    .restart local p0    # "attrValue":Ljava/lang/String;
    invoke-static {p0}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    .end local v1    # "listAttributes":Lorg/w3c/dom/NamedNodeMap;
    if-nez v1, :cond_1

    .line 1397
    invoke-virtual {p1, p0}, Lcom/fusepowered/util/ResponseValues;->setFuseId(Ljava/lang/String;)V

    .line 1399
    :cond_1
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v7

    .line 1400
    .local v7, "mailItemList":Lorg/w3c/dom/NodeList;
    const/4 v0, 0x0

    .local v0, "j":I
    move v4, v0

    .end local v0    # "j":I
    .local v4, "j":I
    :goto_1
    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge v4, v0, :cond_d

    .line 1401
    new-instance v6, Lcom/fusepowered/util/Mail;

    invoke-direct {v6}, Lcom/fusepowered/util/Mail;-><init>()V

    .line 1402
    .local v6, "mail":Lcom/fusepowered/util/Mail;
    invoke-interface {v7, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 1403
    .local v0, "mailItem":Lorg/w3c/dom/Node;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    .line 1404
    .local v1, "mailTagName":Ljava/lang/String;
    const-string v5, "mail_item"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    .end local v1    # "mailTagName":Ljava/lang/String;
    if-eqz v1, :cond_c

    .line 1405
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    .line 1406
    .local v1, "mailItemAttributes":Lorg/w3c/dom/NamedNodeMap;
    const-string p0, "alias"

    .end local p0    # "attrValue":Ljava/lang/String;
    invoke-static {v1, p0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1407
    .restart local p0    # "attrValue":Ljava/lang/String;
    invoke-static {p0}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1408
    invoke-static {p0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p0

    .end local p0    # "attrValue":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v6, p0}, Lcom/fusepowered/util/Mail;->setAlias(Ljava/lang/String;)V

    .line 1409
    :cond_2
    const-string p0, "time"

    invoke-static {v1, p0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1410
    .restart local p0    # "attrValue":Ljava/lang/String;
    invoke-static {p0}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1411
    invoke-virtual {v6, p0}, Lcom/fusepowered/util/Mail;->setDate(Ljava/lang/String;)V

    .line 1412
    :cond_3
    const-string p0, "from_user"

    .end local p0    # "attrValue":Ljava/lang/String;
    invoke-static {v1, p0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1413
    .restart local p0    # "attrValue":Ljava/lang/String;
    invoke-static {p0}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1414
    invoke-virtual {v6, p0}, Lcom/fusepowered/util/Mail;->setFuseId(Ljava/lang/String;)V

    .line 1415
    :cond_4
    const-string p0, "id"

    .end local p0    # "attrValue":Ljava/lang/String;
    invoke-static {v1, p0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1416
    .restart local p0    # "attrValue":Ljava/lang/String;
    invoke-static {p0}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    .end local v1    # "mailItemAttributes":Lorg/w3c/dom/NamedNodeMap;
    if-nez v1, :cond_5

    .line 1417
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v6, v1}, Lcom/fusepowered/util/Mail;->setId(I)V

    .line 1419
    :cond_5
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v8

    .line 1420
    .local v8, "mailItemNodeList":Lorg/w3c/dom/NodeList;
    const/4 v0, 0x0

    .local v0, "k":I
    move v5, v0

    .end local v0    # "k":I
    .local v5, "k":I
    :goto_2
    invoke-interface {v8}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge v5, v0, :cond_c

    .line 1421
    invoke-interface {v8, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 1422
    .local v1, "mailItemNodeChildren":Lorg/w3c/dom/Node;
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    .line 1423
    .local v0, "mailItemNodeChildrenName":Ljava/lang/String;
    const-string v10, "gift"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 1424
    new-instance v0, Lcom/fusepowered/util/Gift;

    .end local v0    # "mailItemNodeChildrenName":Ljava/lang/String;
    invoke-direct {v0}, Lcom/fusepowered/util/Gift;-><init>()V

    .line 1425
    .local v0, "gift":Lcom/fusepowered/util/Gift;
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    .line 1426
    .local v1, "giftAttributes":Lorg/w3c/dom/NamedNodeMap;
    const-string p0, "gift_id"

    .end local p0    # "attrValue":Ljava/lang/String;
    invoke-static {v1, p0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1427
    .restart local p0    # "attrValue":Ljava/lang/String;
    invoke-static {p0}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 1428
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .end local p0    # "attrValue":Ljava/lang/String;
    invoke-virtual {v0, p0}, Lcom/fusepowered/util/Gift;->setId(I)V

    .line 1429
    :cond_6
    const-string p0, "gift_name"

    invoke-static {v1, p0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1430
    .restart local p0    # "attrValue":Ljava/lang/String;
    invoke-static {p0}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_7

    .line 1431
    invoke-virtual {v0, p0}, Lcom/fusepowered/util/Gift;->setName(Ljava/lang/String;)V

    .line 1432
    :cond_7
    const-string p0, "gift_url"

    .end local p0    # "attrValue":Ljava/lang/String;
    invoke-static {v1, p0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1433
    .restart local p0    # "attrValue":Ljava/lang/String;
    invoke-static {p0}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_8

    .line 1434
    invoke-virtual {v0, p0}, Lcom/fusepowered/util/Gift;->setUrl(Ljava/lang/String;)V

    .line 1435
    :cond_8
    const-string p0, "gift_amount"

    .end local p0    # "attrValue":Ljava/lang/String;
    invoke-static {v1, p0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1436
    .restart local p0    # "attrValue":Ljava/lang/String;
    invoke-static {p0}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    .end local v1    # "giftAttributes":Lorg/w3c/dom/NamedNodeMap;
    if-nez v1, :cond_9

    .line 1437
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fusepowered/util/Gift;->setAmount(I)V

    .line 1438
    :cond_9
    invoke-virtual {v6, v0}, Lcom/fusepowered/util/Mail;->setGift(Lcom/fusepowered/util/Gift;)V

    .line 1420
    .end local v0    # "gift":Lcom/fusepowered/util/Gift;
    :cond_a
    :goto_3
    add-int/lit8 v0, v5, 0x1

    .end local v5    # "k":I
    .local v0, "k":I
    move v5, v0

    .end local v0    # "k":I
    .restart local v5    # "k":I
    goto :goto_2

    .line 1440
    .local v0, "mailItemNodeChildrenName":Ljava/lang/String;
    .local v1, "mailItemNodeChildren":Lorg/w3c/dom/Node;
    :cond_b
    const-string v10, "message"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .end local v0    # "mailItemNodeChildrenName":Ljava/lang/String;
    if-eqz v0, :cond_a

    .line 1441
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 1442
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/fusepowered/util/Mail;->setMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 1454
    .end local v1    # "mailItemNodeChildren":Lorg/w3c/dom/Node;
    .end local v2    # "i":I
    .end local v3    # "items":Lorg/w3c/dom/NodeList;
    .end local v4    # "j":I
    .end local v5    # "k":I
    .end local v6    # "mail":Lcom/fusepowered/util/Mail;
    .end local v7    # "mailItemList":Lorg/w3c/dom/NodeList;
    .end local v8    # "mailItemNodeList":Lorg/w3c/dom/NodeList;
    .end local v9    # "mailList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/Mail;>;"
    .end local p0    # "attrValue":Ljava/lang/String;
    :catch_0
    move-exception p0

    .line 1455
    .local p0, "e":Ljava/lang/Exception;
    throw p0

    .line 1447
    .restart local v2    # "i":I
    .restart local v3    # "items":Lorg/w3c/dom/NodeList;
    .restart local v4    # "j":I
    .restart local v6    # "mail":Lcom/fusepowered/util/Mail;
    .restart local v7    # "mailItemList":Lorg/w3c/dom/NodeList;
    .restart local v9    # "mailList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/Mail;>;"
    .local p0, "attrValue":Ljava/lang/String;
    :cond_c
    :try_start_1
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1400
    add-int/lit8 v0, v4, 0x1

    .end local v4    # "j":I
    .local v0, "j":I
    move v4, v0

    .end local v0    # "j":I
    .restart local v4    # "j":I
    goto/16 :goto_1

    .line 1388
    .end local v6    # "mail":Lcom/fusepowered/util/Mail;
    :cond_d
    add-int/lit8 p0, v2, 0x1

    .end local v2    # "i":I
    .local p0, "i":I
    move v2, p0

    .end local p0    # "i":I
    .restart local v2    # "i":I
    goto/16 :goto_0

    .line 1451
    .end local v4    # "j":I
    .end local v7    # "mailItemList":Lorg/w3c/dom/NodeList;
    :cond_e
    invoke-virtual {p1}, Lcom/fusepowered/util/ResponseValues;->getFuseId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0, v9}, Lcom/fusepowered/util/ResponseValues;->setMailList(Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1458
    return-void
.end method

.method private static parseGetUserTransaction(Ljava/lang/String;Lcom/fusepowered/util/ResponseValues;)V
    .locals 8
    .param p0, "xmlStr"    # Ljava/lang/String;
    .param p1, "responseValues"    # Lcom/fusepowered/util/ResponseValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1463
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    .line 1464
    .local v0, "f":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 1465
    .local v0, "b":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v1, Ljava/io/ByteArrayInputStream;

    const-string v2, "UTF-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    .end local p0    # "xmlStr":Ljava/lang/String;
    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object p0

    .line 1466
    .local p0, "doc":Lorg/w3c/dom/Document;
    const-string v0, "transactions"

    .end local v0    # "b":Ljavax/xml/parsers/DocumentBuilder;
    invoke-interface {p0, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 1468
    .local v2, "items":Lorg/w3c/dom/NodeList;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1470
    .local v5, "userTransactionLogs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/UserTransactionLog;>;"
    const/4 p0, 0x0

    .local p0, "i":I
    move v1, p0

    .end local p0    # "i":I
    .local v1, "i":I
    :goto_0
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result p0

    if-ge v1, p0, :cond_c

    .line 1471
    invoke-interface {v2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 1473
    .local v0, "item":Lorg/w3c/dom/Node;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object p0

    .line 1474
    .local p0, "listAttributes":Lorg/w3c/dom/NamedNodeMap;
    const-string v3, "error"

    invoke-static {p0, v3}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1475
    .local p0, "attrValue":Ljava/lang/String;
    invoke-static {p0}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1476
    invoke-virtual {p1, p0}, Lcom/fusepowered/util/ResponseValues;->setError(Ljava/lang/String;)V

    .line 1478
    :cond_0
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v6

    .line 1479
    .local v6, "utLogList":Lorg/w3c/dom/NodeList;
    const/4 v0, 0x0

    .local v0, "j":I
    move v3, v0

    .end local v0    # "j":I
    .local v3, "j":I
    :goto_1
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result p0

    .end local p0    # "attrValue":Ljava/lang/String;
    if-ge v3, p0, :cond_b

    .line 1480
    new-instance v4, Lcom/fusepowered/util/UserTransactionLog;

    invoke-direct {v4}, Lcom/fusepowered/util/UserTransactionLog;-><init>()V

    .line 1481
    .local v4, "userTransactionLog":Lcom/fusepowered/util/UserTransactionLog;
    invoke-interface {v6, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p0

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    .line 1482
    .local v0, "attributes":Lorg/w3c/dom/NamedNodeMap;
    const-string p0, "id"

    invoke-static {v0, p0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1483
    .restart local p0    # "attrValue":Ljava/lang/String;
    invoke-static {p0}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1484
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .end local p0    # "attrValue":Ljava/lang/String;
    invoke-virtual {v4, p0}, Lcom/fusepowered/util/UserTransactionLog;->setId(I)V

    .line 1485
    :cond_1
    const-string p0, "alias"

    invoke-static {v0, p0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1486
    .restart local p0    # "attrValue":Ljava/lang/String;
    invoke-static {p0}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 1487
    invoke-static {p0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p0

    .end local p0    # "attrValue":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Lcom/fusepowered/util/UserTransactionLog;->setAlias(Ljava/lang/String;)V

    .line 1488
    :cond_2
    const-string p0, "user"

    invoke-static {v0, p0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1489
    .restart local p0    # "attrValue":Ljava/lang/String;
    invoke-static {p0}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 1490
    invoke-virtual {v4, p0}, Lcom/fusepowered/util/UserTransactionLog;->setFuseId(Ljava/lang/String;)V

    .line 1491
    :cond_3
    const-string p0, "time"

    .end local p0    # "attrValue":Ljava/lang/String;
    invoke-static {v0, p0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1492
    .restart local p0    # "attrValue":Ljava/lang/String;
    invoke-static {p0}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 1493
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .end local p0    # "attrValue":Ljava/lang/String;
    invoke-virtual {v4, p0}, Lcom/fusepowered/util/UserTransactionLog;->setDate(I)V

    .line 1494
    :cond_4
    const-string p0, "level"

    invoke-static {v0, p0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1495
    .restart local p0    # "attrValue":Ljava/lang/String;
    invoke-static {p0}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 1496
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .end local p0    # "attrValue":Ljava/lang/String;
    invoke-virtual {v4, p0}, Lcom/fusepowered/util/UserTransactionLog;->setLevel(I)V

    .line 1497
    :cond_5
    const-string p0, "amount_won"

    invoke-static {v0, p0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1498
    .restart local p0    # "attrValue":Ljava/lang/String;
    invoke-static {p0}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 1499
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .end local p0    # "attrValue":Ljava/lang/String;
    invoke-virtual {v4, p0}, Lcom/fusepowered/util/UserTransactionLog;->setAmountWon(I)V

    .line 1500
    :cond_6
    const-string p0, "amount_lost"

    invoke-static {v0, p0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1501
    .restart local p0    # "attrValue":Ljava/lang/String;
    invoke-static {p0}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 1502
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .end local p0    # "attrValue":Ljava/lang/String;
    invoke-virtual {v4, p0}, Lcom/fusepowered/util/UserTransactionLog;->setAmountLost(I)V

    .line 1503
    :cond_7
    const-string p0, "outcome"

    invoke-static {v0, p0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1504
    .restart local p0    # "attrValue":Ljava/lang/String;
    invoke-static {p0}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 1505
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .end local p0    # "attrValue":Ljava/lang/String;
    const/4 v7, 0x1

    if-ne p0, v7, :cond_a

    const/4 p0, 0x1

    :goto_2
    invoke-virtual {v4, p0}, Lcom/fusepowered/util/UserTransactionLog;->setWasWon(Z)V

    .line 1506
    :cond_8
    const-string p0, "event_type"

    invoke-static {v0, p0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1507
    .restart local p0    # "attrValue":Ljava/lang/String;
    invoke-static {p0}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    .end local v0    # "attributes":Lorg/w3c/dom/NamedNodeMap;
    if-nez v0, :cond_9

    .line 1508
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/fusepowered/util/FuseAttackRobberyEventType;->getFuseAttackRobberyEventTypeByCode(I)Lcom/fusepowered/util/FuseAttackRobberyEventType;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/fusepowered/util/UserTransactionLog;->setEventType(Lcom/fusepowered/util/FuseAttackRobberyEventType;)V

    .line 1510
    :cond_9
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1479
    add-int/lit8 v0, v3, 0x1

    .end local v3    # "j":I
    .local v0, "j":I
    move v3, v0

    .end local v0    # "j":I
    .restart local v3    # "j":I
    goto/16 :goto_1

    .line 1505
    .end local p0    # "attrValue":Ljava/lang/String;
    .local v0, "attributes":Lorg/w3c/dom/NamedNodeMap;
    :cond_a
    const/4 p0, 0x0

    goto :goto_2

    .line 1470
    .end local v0    # "attributes":Lorg/w3c/dom/NamedNodeMap;
    .end local v4    # "userTransactionLog":Lcom/fusepowered/util/UserTransactionLog;
    :cond_b
    add-int/lit8 p0, v1, 0x1

    .end local v1    # "i":I
    .local p0, "i":I
    move v1, p0

    .end local p0    # "i":I
    .restart local v1    # "i":I
    goto/16 :goto_0

    .line 1515
    .end local v3    # "j":I
    .end local v6    # "utLogList":Lorg/w3c/dom/NodeList;
    :cond_c
    invoke-virtual {p1, v5}, Lcom/fusepowered/util/ResponseValues;->setUserTransactionLogs(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1522
    return-void

    .line 1518
    .end local v1    # "i":I
    .end local v2    # "items":Lorg/w3c/dom/NodeList;
    .end local v5    # "userTransactionLogs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/UserTransactionLog;>;"
    :catch_0
    move-exception p0

    .line 1519
    .local p0, "e":Ljava/lang/Exception;
    throw p0
.end method

.method private static parseIncentiveActionComplete(Ljava/lang/String;Lcom/fusepowered/util/ResponseValues;)Ljava/lang/String;
    .locals 9
    .param p0, "xmlStr"    # Ljava/lang/String;
    .param p1, "responseValues"    # Lcom/fusepowered/util/ResponseValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1098
    const-string v1, ""

    .line 1100
    .local v1, "status":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    .line 1101
    .local v0, "f":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 1102
    .local v0, "b":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v2, Ljava/io/ByteArrayInputStream;

    const-string v3, "UTF-8"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    .end local p0    # "xmlStr":Ljava/lang/String;
    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v2}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object p0

    .line 1103
    .local p0, "doc":Lorg/w3c/dom/Document;
    const-string v0, "incentives"

    .end local v0    # "b":Ljavax/xml/parsers/DocumentBuilder;
    invoke-interface {p0, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 1104
    .local v6, "items":Lorg/w3c/dom/NodeList;
    const/4 p0, 0x0

    .local p0, "i":I
    move v2, p0

    .end local p0    # "i":I
    .local v2, "i":I
    move-object v0, v1

    .end local v1    # "status":Ljava/lang/String;
    .local v0, "status":Ljava/lang/String;
    :goto_0
    :try_start_1
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result p0

    if-ge v2, p0, :cond_8

    .line 1105
    invoke-interface {v6, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p0

    .line 1106
    .local p0, "item":Lorg/w3c/dom/Node;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1107
    .local v5, "incentives":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/Incentive;>;"
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .line 1108
    .local v4, "incentiveNodeList":Lorg/w3c/dom/NodeList;
    const/4 p0, 0x0

    .local p0, "h":I
    move v1, p0

    .end local p0    # "h":I
    .local v1, "h":I
    move-object v7, v0

    .end local v0    # "status":Ljava/lang/String;
    .local v7, "status":Ljava/lang/String;
    :goto_1
    :try_start_2
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result p0

    if-ge v1, p0, :cond_7

    .line 1109
    new-instance v3, Lcom/fusepowered/util/Incentive;

    invoke-direct {v3}, Lcom/fusepowered/util/Incentive;-><init>()V

    .line 1110
    .local v3, "incentive":Lcom/fusepowered/util/Incentive;
    invoke-interface {v4, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p0

    .line 1112
    .local p0, "incentiveProperty":Lorg/w3c/dom/Node;
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    .line 1113
    .local v0, "incentivePropertyName":Ljava/lang/String;
    const-string v8, "incentive"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1114
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    .line 1115
    .local v0, "dlcAttributes":Lorg/w3c/dom/NamedNodeMap;
    const-string p0, "incentive_id"

    .end local p0    # "incentiveProperty":Lorg/w3c/dom/Node;
    invoke-static {v0, p0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1116
    .local p0, "attrValue":Ljava/lang/String;
    invoke-static {p0}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1117
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .end local p0    # "attrValue":Ljava/lang/String;
    invoke-virtual {v3, p0}, Lcom/fusepowered/util/Incentive;->setIncentiveId(I)V

    .line 1118
    :cond_0
    const-string p0, "amount"

    invoke-static {v0, p0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1119
    .restart local p0    # "attrValue":Ljava/lang/String;
    invoke-static {p0}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 1120
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .end local p0    # "attrValue":Ljava/lang/String;
    invoke-virtual {v3, p0}, Lcom/fusepowered/util/Incentive;->setAmount(I)V

    .line 1121
    :cond_1
    const-string p0, "reward_item_id"

    invoke-static {v0, p0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1122
    .restart local p0    # "attrValue":Ljava/lang/String;
    invoke-static {p0}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 1123
    invoke-virtual {v3, p0}, Lcom/fusepowered/util/Incentive;->setRewardItemId(Ljava/lang/String;)V

    .line 1124
    :cond_2
    const-string p0, "reward_item_name"

    .end local p0    # "attrValue":Ljava/lang/String;
    invoke-static {v0, p0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1125
    .restart local p0    # "attrValue":Ljava/lang/String;
    invoke-static {p0}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 1126
    invoke-virtual {v3, p0}, Lcom/fusepowered/util/Incentive;->setRewardItemName(Ljava/lang/String;)V

    .line 1127
    :cond_3
    const-string p0, "claim_confirmed"

    .end local p0    # "attrValue":Ljava/lang/String;
    invoke-static {v0, p0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1128
    .restart local p0    # "attrValue":Ljava/lang/String;
    invoke-static {p0}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    .end local v0    # "dlcAttributes":Lorg/w3c/dom/NamedNodeMap;
    if-nez v0, :cond_4

    .line 1129
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .end local p0    # "attrValue":Ljava/lang/String;
    if-eqz p0, :cond_5

    const/4 p0, 0x1

    :goto_2
    invoke-virtual {v3, p0}, Lcom/fusepowered/util/Incentive;->setClaimConfirmed(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_4
    move-object v0, v7

    .line 1134
    .end local v7    # "status":Ljava/lang/String;
    .local v0, "status":Ljava/lang/String;
    :goto_3
    :try_start_3
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 1108
    add-int/lit8 p0, v1, 0x1

    .end local v1    # "h":I
    .local p0, "h":I
    move v1, p0

    .end local p0    # "h":I
    .restart local v1    # "h":I
    move-object v7, v0

    .end local v0    # "status":Ljava/lang/String;
    .restart local v7    # "status":Ljava/lang/String;
    goto/16 :goto_1

    .line 1129
    :cond_5
    const/4 p0, 0x0

    goto :goto_2

    .line 1131
    .local v0, "incentivePropertyName":Ljava/lang/String;
    .local p0, "incentiveProperty":Lorg/w3c/dom/Node;
    :cond_6
    :try_start_4
    const-string v8, "status"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .end local v0    # "incentivePropertyName":Ljava/lang/String;
    if-eqz v0, :cond_9

    .line 1132
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object p0

    .end local p0    # "incentiveProperty":Lorg/w3c/dom/Node;
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p0

    .end local v7    # "status":Ljava/lang/String;
    .local p0, "status":Ljava/lang/String;
    move-object v0, p0

    .end local p0    # "status":Ljava/lang/String;
    .local v0, "status":Ljava/lang/String;
    goto :goto_3

    .line 1137
    .end local v0    # "status":Ljava/lang/String;
    .end local v3    # "incentive":Lcom/fusepowered/util/Incentive;
    .restart local v7    # "status":Ljava/lang/String;
    :cond_7
    invoke-virtual {p1, v5}, Lcom/fusepowered/util/ResponseValues;->setIncentives(Ljava/util/ArrayList;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 1104
    add-int/lit8 p0, v2, 0x1

    .end local v2    # "i":I
    .local p0, "i":I
    move v2, p0

    .end local p0    # "i":I
    .restart local v2    # "i":I
    move-object v0, v7

    .end local v7    # "status":Ljava/lang/String;
    .restart local v0    # "status":Ljava/lang/String;
    goto/16 :goto_0

    .line 1140
    .end local v0    # "status":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v4    # "incentiveNodeList":Lorg/w3c/dom/NodeList;
    .end local v5    # "incentives":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/Incentive;>;"
    .end local v6    # "items":Lorg/w3c/dom/NodeList;
    .local v1, "status":Ljava/lang/String;
    :catch_0
    move-exception p0

    move-object p1, v1

    .line 1141
    .end local v1    # "status":Ljava/lang/String;
    .local p0, "e":Ljava/lang/Exception;
    .local p1, "status":Ljava/lang/String;
    :goto_4
    throw p0

    .line 1143
    .end local p0    # "e":Ljava/lang/Exception;
    .restart local v0    # "status":Ljava/lang/String;
    .restart local v2    # "i":I
    .restart local v6    # "items":Lorg/w3c/dom/NodeList;
    .local p1, "responseValues":Lcom/fusepowered/util/ResponseValues;
    :cond_8
    return-object v0

    .line 1140
    :catch_1
    move-exception p0

    move-object p1, v0

    .end local v0    # "status":Ljava/lang/String;
    .local p1, "status":Ljava/lang/String;
    goto :goto_4

    .local v1, "h":I
    .restart local v4    # "incentiveNodeList":Lorg/w3c/dom/NodeList;
    .restart local v5    # "incentives":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/Incentive;>;"
    .restart local v7    # "status":Ljava/lang/String;
    .local p1, "responseValues":Lcom/fusepowered/util/ResponseValues;
    :catch_2
    move-exception p0

    move-object p1, v7

    .end local v7    # "status":Ljava/lang/String;
    .local p1, "status":Ljava/lang/String;
    goto :goto_4

    .restart local v3    # "incentive":Lcom/fusepowered/util/Incentive;
    .restart local v7    # "status":Ljava/lang/String;
    .local p0, "incentiveProperty":Lorg/w3c/dom/Node;
    .local p1, "responseValues":Lcom/fusepowered/util/ResponseValues;
    :cond_9
    move-object v0, v7

    .end local v7    # "status":Ljava/lang/String;
    .restart local v0    # "status":Ljava/lang/String;
    goto :goto_3
.end method

.method private static parseMessageList(Ljava/lang/String;Lcom/fusepowered/util/ResponseValues;)V
    .locals 9
    .param p0, "xmlStr"    # Ljava/lang/String;
    .param p1, "responseValues"    # Lcom/fusepowered/util/ResponseValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1272
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    .line 1273
    .local v0, "f":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 1274
    .local v0, "b":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v1, Ljava/io/ByteArrayInputStream;

    const-string v2, "UTF-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    .end local p0    # "xmlStr":Ljava/lang/String;
    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object p0

    .line 1275
    .local p0, "doc":Lorg/w3c/dom/Document;
    const-string v0, "chat_messages"

    .end local v0    # "b":Ljavax/xml/parsers/DocumentBuilder;
    invoke-interface {p0, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v5

    .line 1277
    .local v5, "items":Lorg/w3c/dom/NodeList;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1278
    .local v3, "chatMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/ChatMessage;>;"
    const/4 p0, 0x0

    .local p0, "i":I
    move v4, p0

    .end local p0    # "i":I
    .local v4, "i":I
    :goto_0
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result p0

    if-ge v4, p0, :cond_9

    .line 1279
    invoke-interface {v5, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 1281
    .local v0, "item":Lorg/w3c/dom/Node;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    .line 1282
    .local v1, "listAttributes":Lorg/w3c/dom/NamedNodeMap;
    const-string p0, "error"

    invoke-static {v1, p0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1283
    .local p0, "attrValue":Ljava/lang/String;
    invoke-static {p0}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1284
    invoke-virtual {p1, p0}, Lcom/fusepowered/util/ResponseValues;->setError(Ljava/lang/String;)V

    .line 1285
    :cond_0
    const-string p0, "to_user"

    .end local p0    # "attrValue":Ljava/lang/String;
    invoke-static {v1, p0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1286
    .restart local p0    # "attrValue":Ljava/lang/String;
    invoke-static {p0}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    .end local v1    # "listAttributes":Lorg/w3c/dom/NamedNodeMap;
    if-nez v1, :cond_1

    .line 1287
    invoke-virtual {p1, p0}, Lcom/fusepowered/util/ResponseValues;->setFuseId(Ljava/lang/String;)V

    .line 1289
    :cond_1
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 1290
    .local v2, "chatMessageList":Lorg/w3c/dom/NodeList;
    const/4 v0, 0x0

    .local v0, "j":I
    move v6, v0

    .end local v0    # "j":I
    .local v6, "j":I
    :goto_1
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result p0

    .end local p0    # "attrValue":Ljava/lang/String;
    if-ge v6, p0, :cond_8

    .line 1291
    new-instance v1, Lcom/fusepowered/util/ChatMessage;

    invoke-direct {v1}, Lcom/fusepowered/util/ChatMessage;-><init>()V

    .line 1292
    .local v1, "chatMessage":Lcom/fusepowered/util/ChatMessage;
    invoke-interface {v2, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    .line 1293
    .local v7, "messageNode":Lorg/w3c/dom/Node;
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    .line 1294
    .local v0, "attributes":Lorg/w3c/dom/NamedNodeMap;
    const-string p0, "id"

    invoke-static {v0, p0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1295
    .restart local p0    # "attrValue":Ljava/lang/String;
    invoke-static {p0}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 1296
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .end local p0    # "attrValue":Ljava/lang/String;
    invoke-virtual {v1, p0}, Lcom/fusepowered/util/ChatMessage;->setId(I)V

    .line 1297
    :cond_2
    const-string p0, "alias"

    invoke-static {v0, p0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1298
    .restart local p0    # "attrValue":Ljava/lang/String;
    invoke-static {p0}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 1299
    invoke-static {p0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p0

    .end local p0    # "attrValue":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/fusepowered/util/ChatMessage;->setAlias(Ljava/lang/String;)V

    .line 1300
    :cond_3
    const-string p0, "from_user"

    invoke-static {v0, p0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1301
    .restart local p0    # "attrValue":Ljava/lang/String;
    invoke-static {p0}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 1302
    invoke-virtual {v1, p0}, Lcom/fusepowered/util/ChatMessage;->setFuseId(Ljava/lang/String;)V

    .line 1303
    :cond_4
    const-string p0, "time"

    .end local p0    # "attrValue":Ljava/lang/String;
    invoke-static {v0, p0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1304
    .restart local p0    # "attrValue":Ljava/lang/String;
    invoke-static {p0}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 1305
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .end local p0    # "attrValue":Ljava/lang/String;
    invoke-virtual {v1, p0}, Lcom/fusepowered/util/ChatMessage;->setDate(I)V

    .line 1306
    :cond_5
    const-string p0, "level"

    invoke-static {v0, p0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1307
    .restart local p0    # "attrValue":Ljava/lang/String;
    invoke-static {p0}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    .end local v0    # "attributes":Lorg/w3c/dom/NamedNodeMap;
    if-nez v0, :cond_6

    .line 1308
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/fusepowered/util/ChatMessage;->setLevel(I)V

    .line 1310
    :cond_6
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    .line 1311
    .local v0, "messageChild":Lorg/w3c/dom/Node;
    if-eqz v0, :cond_7

    .line 1312
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "messageChild":Lorg/w3c/dom/Node;
    invoke-virtual {v1, v0}, Lcom/fusepowered/util/ChatMessage;->setMessage(Ljava/lang/String;)V

    .line 1315
    :cond_7
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1290
    add-int/lit8 v0, v6, 0x1

    .end local v6    # "j":I
    .local v0, "j":I
    move v6, v0

    .end local v0    # "j":I
    .restart local v6    # "j":I
    goto/16 :goto_1

    .line 1278
    .end local v1    # "chatMessage":Lcom/fusepowered/util/ChatMessage;
    .end local v7    # "messageNode":Lorg/w3c/dom/Node;
    .end local p0    # "attrValue":Ljava/lang/String;
    :cond_8
    add-int/lit8 p0, v4, 0x1

    .end local v4    # "i":I
    .local p0, "i":I
    move v4, p0

    .end local p0    # "i":I
    .restart local v4    # "i":I
    goto/16 :goto_0

    .line 1319
    .end local v2    # "chatMessageList":Lorg/w3c/dom/NodeList;
    .end local v6    # "j":I
    :cond_9
    invoke-virtual {p1}, Lcom/fusepowered/util/ResponseValues;->getFuseId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0, v3}, Lcom/fusepowered/util/ResponseValues;->setChatMessages(Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1325
    return-void

    .line 1322
    .end local v3    # "chatMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/ChatMessage;>;"
    .end local v4    # "i":I
    .end local v5    # "items":Lorg/w3c/dom/NodeList;
    :catch_0
    move-exception p0

    .line 1323
    .local p0, "e":Ljava/lang/Exception;
    throw p0
.end method

.method private static parseRegisterId(Ljava/lang/String;Lcom/fusepowered/util/ResponseValues;)V
    .locals 12
    .param p0, "xmlStr"    # Ljava/lang/String;
    .param p1, "responseValues"    # Lcom/fusepowered/util/ResponseValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1149
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v6

    .line 1150
    .local v6, "f":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v6}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v3

    .line 1151
    .local v3, "b":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v10, Ljava/io/ByteArrayInputStream;

    const-string v11, "UTF-8"

    invoke-virtual {p0, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v3, v10}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v4

    .line 1152
    .local v4, "doc":Lorg/w3c/dom/Document;
    const-string v10, "account_registered"

    invoke-interface {v4, v10}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v9

    .line 1154
    .local v9, "items":Lorg/w3c/dom/NodeList;
    invoke-virtual {p1}, Lcom/fusepowered/util/ResponseValues;->getAccount()Lcom/fusepowered/util/Account;

    move-result-object v0

    .line 1155
    .local v0, "account":Lcom/fusepowered/util/Account;
    if-nez v0, :cond_0

    .line 1156
    new-instance v0, Lcom/fusepowered/util/Account;

    .end local v0    # "account":Lcom/fusepowered/util/Account;
    const-string v10, ""

    invoke-direct {v0, v10}, Lcom/fusepowered/util/Account;-><init>(Ljava/lang/String;)V

    .line 1159
    .restart local v0    # "account":Lcom/fusepowered/util/Account;
    :cond_0
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    invoke-interface {v9}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v10

    if-ge v7, v10, :cond_5

    .line 1160
    invoke-interface {v9, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    .line 1162
    .local v8, "item":Lorg/w3c/dom/Node;
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    .line 1163
    .local v2, "attributes":Lorg/w3c/dom/NamedNodeMap;
    const-string v10, "account"

    invoke-static {v2, v10}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1164
    .local v1, "attrValue":Ljava/lang/String;
    invoke-static {v1}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 1165
    invoke-virtual {v0, v1}, Lcom/fusepowered/util/Account;->setAccountId(Ljava/lang/String;)V

    .line 1166
    :cond_1
    const-string v10, "fuse_id"

    invoke-static {v2, v10}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1167
    invoke-static {v1}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 1168
    invoke-virtual {v0, v1}, Lcom/fusepowered/util/Account;->setFuseId(Ljava/lang/String;)V

    .line 1169
    :cond_2
    const-string v10, "type"

    invoke-static {v2, v10}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1170
    invoke-static {v1}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 1171
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Lcom/fusepowered/util/AccountType;->getAccountTypeByNumber(I)Lcom/fusepowered/util/AccountType;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/fusepowered/util/Account;->setAccountType(Lcom/fusepowered/util/AccountType;)V

    .line 1172
    :cond_3
    const-string v10, "error"

    invoke-static {v2, v10}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1173
    invoke-static {v1}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 1174
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v0, Lcom/fusepowered/util/Account;->errorCode:I

    .line 1175
    :cond_4
    invoke-virtual {p1, v0}, Lcom/fusepowered/util/ResponseValues;->setAccount(Lcom/fusepowered/util/Account;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1159
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1178
    .end local v0    # "account":Lcom/fusepowered/util/Account;
    .end local v1    # "attrValue":Ljava/lang/String;
    .end local v2    # "attributes":Lorg/w3c/dom/NamedNodeMap;
    .end local v3    # "b":Ljavax/xml/parsers/DocumentBuilder;
    .end local v4    # "doc":Lorg/w3c/dom/Document;
    .end local v6    # "f":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v7    # "i":I
    .end local v8    # "item":Lorg/w3c/dom/Node;
    .end local v9    # "items":Lorg/w3c/dom/NodeList;
    :catch_0
    move-exception v10

    move-object v5, v10

    .line 1179
    .local v5, "e":Ljava/lang/Exception;
    throw v5

    .line 1181
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v0    # "account":Lcom/fusepowered/util/Account;
    .restart local v3    # "b":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v4    # "doc":Lorg/w3c/dom/Document;
    .restart local v6    # "f":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v7    # "i":I
    .restart local v9    # "items":Lorg/w3c/dom/NodeList;
    :cond_5
    return-void
.end method

.method public static parseResponse(Lcom/fusepowered/util/ActionType;Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/util/ResponseValues;Lcom/fusepowered/util/FuseCallback;)Z
    .locals 5
    .param p0, "actionType"    # Lcom/fusepowered/util/ActionType;
    .param p1, "gameDataRequestId"    # Ljava/lang/String;
    .param p2, "response"    # Ljava/lang/String;
    .param p3, "responseValues"    # Lcom/fusepowered/util/ResponseValues;
    .param p4, "fuseCallback"    # Lcom/fusepowered/util/FuseCallback;

    .prologue
    .line 27
    const/4 v3, 0x1

    .line 29
    .local v3, "success":Z
    :try_start_0
    sget-object v1, Lcom/fusepowered/util/XMLParser$1;->$SwitchMap$com$fusepowered$util$ActionType:[I

    invoke-virtual {p0}, Lcom/fusepowered/util/ActionType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .end local p2    # "response":Ljava/lang/String;
    :cond_0
    move p0, v3

    .line 237
    .end local v3    # "success":Z
    .end local p1    # "gameDataRequestId":Ljava/lang/String;
    .end local p3    # "responseValues":Lcom/fusepowered/util/ResponseValues;
    .end local p4    # "fuseCallback":Lcom/fusepowered/util/FuseCallback;
    .local p0, "success":Z
    :goto_0
    return p0

    .line 31
    .restart local v3    # "success":Z
    .local p0, "actionType":Lcom/fusepowered/util/ActionType;
    .restart local p1    # "gameDataRequestId":Ljava/lang/String;
    .restart local p2    # "response":Ljava/lang/String;
    .restart local p3    # "responseValues":Lcom/fusepowered/util/ResponseValues;
    .restart local p4    # "fuseCallback":Lcom/fusepowered/util/FuseCallback;
    :pswitch_0
    invoke-static {p2, p3}, Lcom/fusepowered/util/XMLParser;->parseSessionStart(Ljava/lang/String;Lcom/fusepowered/util/ResponseValues;)V

    .line 32
    invoke-virtual {p4}, Lcom/fusepowered/util/FuseCallback;->sessionStartReceived()V

    .line 33
    invoke-virtual {p4}, Lcom/fusepowered/util/FuseCallback;->gameConfigurationReceived()V

    move p0, v3

    .line 34
    .end local v3    # "success":Z
    .local p0, "success":Z
    goto :goto_0

    .line 36
    .restart local v3    # "success":Z
    .local p0, "actionType":Lcom/fusepowered/util/ActionType;
    :pswitch_1
    invoke-static {p2, p3}, Lcom/fusepowered/util/XMLParser;->parseSessionResume(Ljava/lang/String;Lcom/fusepowered/util/ResponseValues;)V

    .line 37
    invoke-virtual {p4}, Lcom/fusepowered/util/FuseCallback;->gameConfigurationReceived()V

    move p0, v3

    .line 38
    .end local v3    # "success":Z
    .local p0, "success":Z
    goto :goto_0

    .line 40
    .restart local v3    # "success":Z
    .local p0, "actionType":Lcom/fusepowered/util/ActionType;
    :pswitch_2
    invoke-static {p2, p3}, Lcom/fusepowered/util/XMLParser;->parseGetAd(Ljava/lang/String;Lcom/fusepowered/util/ResponseValues;)Z

    move-result p2

    .line 41
    .local p2, "displayAdRequired":Z
    if-eqz p2, :cond_0

    instance-of p2, p4, Lcom/fusepowered/util/FuseAdCallback;

    .end local p2    # "displayAdRequired":Z
    if-eqz p2, :cond_0

    .line 42
    move-object v0, p4

    check-cast v0, Lcom/fusepowered/util/FuseAdCallback;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/fusepowered/util/FuseAdCallback;->displayAd()V

    move p0, v3

    .end local v3    # "success":Z
    .local p0, "success":Z
    goto :goto_0

    .line 46
    .restart local v3    # "success":Z
    .local p0, "actionType":Lcom/fusepowered/util/ActionType;
    .local p2, "response":Ljava/lang/String;
    :pswitch_3
    invoke-static {p2, p3}, Lcom/fusepowered/util/XMLParser;->parseFetchDlcList(Ljava/lang/String;Lcom/fusepowered/util/ResponseValues;)V

    move p0, v3

    .line 47
    .end local v3    # "success":Z
    .local p0, "success":Z
    goto :goto_0

    .line 49
    .restart local v3    # "success":Z
    .local p0, "actionType":Lcom/fusepowered/util/ActionType;
    :pswitch_4
    const-string v1, "utc_time"

    const-string v2, "xml"

    invoke-static {p2, v1, v2}, Lcom/fusepowered/util/XMLParser;->readTagValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .end local p2    # "response":Ljava/lang/String;
    invoke-virtual {p3, p2}, Lcom/fusepowered/util/ResponseValues;->setTimestamp(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p3}, Lcom/fusepowered/util/ResponseValues;->getTimestamp()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p4, p2}, Lcom/fusepowered/util/FuseCallback;->timeUpdated(I)V

    move p0, v3

    .line 51
    .end local v3    # "success":Z
    .local p0, "success":Z
    goto :goto_0

    .line 54
    .restart local v3    # "success":Z
    .local p0, "actionType":Lcom/fusepowered/util/ActionType;
    .restart local p2    # "response":Ljava/lang/String;
    :pswitch_5
    invoke-virtual {p3}, Lcom/fusepowered/util/ResponseValues;->getGameKeyValuePairs()Lcom/fusepowered/util/GameKeyValuePairs;

    move-result-object v1

    .line 55
    .local v1, "gameData":Lcom/fusepowered/util/GameKeyValuePairs;
    if-nez v1, :cond_0

    .line 59
    invoke-static {p2, p3}, Lcom/fusepowered/util/XMLParser;->parseGetGamedata(Ljava/lang/String;Lcom/fusepowered/util/ResponseValues;)V

    .line 63
    invoke-virtual {p3}, Lcom/fusepowered/util/ResponseValues;->getGameKeyValuePairs()Lcom/fusepowered/util/GameKeyValuePairs;

    move-result-object v1

    .line 64
    invoke-virtual {p3}, Lcom/fusepowered/util/ResponseValues;->getAccount()Lcom/fusepowered/util/Account;

    move-result-object p2

    .end local p2    # "response":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/fusepowered/util/Account;->getAccountId()Ljava/lang/String;

    move-result-object p2

    .line 65
    .local p2, "accountId":Ljava/lang/String;
    move-object v0, p4

    check-cast v0, Lcom/fusepowered/util/FuseGameDataCallback;

    move-object p3, v0

    .line 66
    .local p3, "gameDataCallback":Lcom/fusepowered/util/FuseGameDataCallback;
    invoke-virtual {p3, p2, v1}, Lcom/fusepowered/util/FuseGameDataCallback;->setGameData(Ljava/lang/String;Lcom/fusepowered/util/GameKeyValuePairs;)V

    move p0, v3

    .line 67
    .end local v3    # "success":Z
    .local p0, "success":Z
    goto :goto_0

    .line 75
    .end local v1    # "gameData":Lcom/fusepowered/util/GameKeyValuePairs;
    .restart local v3    # "success":Z
    .local p0, "actionType":Lcom/fusepowered/util/ActionType;
    .local p2, "response":Ljava/lang/String;
    .local p3, "responseValues":Lcom/fusepowered/util/ResponseValues;
    :pswitch_6
    if-eqz p1, :cond_1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 76
    .local v1, "requestId":I
    :goto_1
    invoke-static {p2, p3, v1}, Lcom/fusepowered/util/XMLParser;->parseSetGamedata(Ljava/lang/String;Lcom/fusepowered/util/ResponseValues;I)Z

    move-result p0

    .line 77
    .end local v3    # "success":Z
    .local p0, "success":Z
    goto :goto_0

    .line 75
    .end local v1    # "requestId":I
    .restart local v3    # "success":Z
    .local p0, "actionType":Lcom/fusepowered/util/ActionType;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 79
    :pswitch_7
    invoke-static {p2, p3}, Lcom/fusepowered/util/XMLParser;->parseRegisterId(Ljava/lang/String;Lcom/fusepowered/util/ResponseValues;)V

    .line 80
    invoke-virtual {p3}, Lcom/fusepowered/util/ResponseValues;->getAccount()Lcom/fusepowered/util/Account;

    move-result-object p2

    .end local p2    # "response":Ljava/lang/String;
    iget p2, p2, Lcom/fusepowered/util/Account;->errorCode:I

    if-eqz p2, :cond_2

    .line 82
    invoke-virtual {p3}, Lcom/fusepowered/util/ResponseValues;->getAccount()Lcom/fusepowered/util/Account;

    move-result-object p2

    iget p2, p2, Lcom/fusepowered/util/Account;->errorCode:I

    invoke-static {p2}, Lcom/fusepowered/util/FuseLoginError;->getFuseLoginErrorByCode(I)Lcom/fusepowered/util/FuseLoginError;

    move-result-object p2

    invoke-virtual {p4, p2}, Lcom/fusepowered/util/FuseCallback;->sessionLoginError(Lcom/fusepowered/util/FuseLoginError;)V

    .line 84
    :cond_2
    invoke-virtual {p3}, Lcom/fusepowered/util/ResponseValues;->getAccount()Lcom/fusepowered/util/Account;

    move-result-object p2

    invoke-virtual {p2}, Lcom/fusepowered/util/Account;->getAccountType()Lcom/fusepowered/util/AccountType;

    move-result-object p2

    invoke-virtual {p2}, Lcom/fusepowered/util/AccountType;->getAccountNumber()I

    move-result p2

    invoke-virtual {p3}, Lcom/fusepowered/util/ResponseValues;->getAccount()Lcom/fusepowered/util/Account;

    move-result-object p3

    .end local p3    # "responseValues":Lcom/fusepowered/util/ResponseValues;
    invoke-virtual {p3}, Lcom/fusepowered/util/Account;->getAccountId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p2, p3}, Lcom/fusepowered/util/FuseCallback;->accountLoginComplete(ILjava/lang/String;)V

    move p0, v3

    .line 85
    .end local v3    # "success":Z
    .local p0, "success":Z
    goto/16 :goto_0

    .line 87
    .restart local v3    # "success":Z
    .local p0, "actionType":Lcom/fusepowered/util/ActionType;
    .restart local p2    # "response":Ljava/lang/String;
    .restart local p3    # "responseValues":Lcom/fusepowered/util/ResponseValues;
    :pswitch_8
    invoke-static {p2, p3}, Lcom/fusepowered/util/XMLParser;->parseIncentiveActionComplete(Ljava/lang/String;Lcom/fusepowered/util/ResponseValues;)Ljava/lang/String;

    move-result-object p2

    .line 88
    .local p2, "status":Ljava/lang/String;
    invoke-virtual {p4, p2}, Lcom/fusepowered/util/FuseCallback;->incentiveActionCompletedStatus(Ljava/lang/String;)V

    move p0, v3

    .line 89
    .end local v3    # "success":Z
    .local p0, "success":Z
    goto/16 :goto_0

    .line 91
    .restart local v3    # "success":Z
    .local p0, "actionType":Lcom/fusepowered/util/ActionType;
    .local p2, "response":Ljava/lang/String;
    :pswitch_9
    invoke-static {p2, p3}, Lcom/fusepowered/util/XMLParser;->parseRewardRedemption(Ljava/lang/String;Lcom/fusepowered/util/ResponseValues;)Lcom/fusepowered/util/Incentive;

    move-result-object p2

    .line 92
    .local p2, "redeemedIncentive":Lcom/fusepowered/util/Incentive;
    invoke-virtual {p2}, Lcom/fusepowered/util/Incentive;->getIncentiveId()I

    move-result p3

    .end local p3    # "responseValues":Lcom/fusepowered/util/ResponseValues;
    invoke-virtual {p2}, Lcom/fusepowered/util/Incentive;->getAmount()I

    move-result v1

    invoke-virtual {p2}, Lcom/fusepowered/util/Incentive;->getRewardItemId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/fusepowered/util/Incentive;->getRewardItemName()Ljava/lang/String;

    move-result-object p2

    .end local p2    # "redeemedIncentive":Lcom/fusepowered/util/Incentive;
    invoke-virtual {p4, p3, v1, v2, p2}, Lcom/fusepowered/util/FuseCallback;->rewardRedeemed(IILjava/lang/String;Ljava/lang/String;)V

    move p0, v3

    .line 94
    .end local v3    # "success":Z
    .local p0, "success":Z
    goto/16 :goto_0

    .line 99
    .restart local v3    # "success":Z
    .local p0, "actionType":Lcom/fusepowered/util/ActionType;
    .local p2, "response":Ljava/lang/String;
    .restart local p3    # "responseValues":Lcom/fusepowered/util/ResponseValues;
    :pswitch_a
    invoke-static {p2, p3}, Lcom/fusepowered/util/XMLParser;->parseMessageList(Ljava/lang/String;Lcom/fusepowered/util/ResponseValues;)V

    .line 100
    invoke-virtual {p3}, Lcom/fusepowered/util/ResponseValues;->getError()Ljava/lang/String;

    move-result-object p2

    .line 101
    .local p2, "errorString":Ljava/lang/String;
    invoke-static {p2}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 102
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 103
    .local p2, "errorCode":I
    invoke-static {p2}, Lcom/fusepowered/util/FuseChatError;->getFuseChatErrorByCode(I)Lcom/fusepowered/util/FuseChatError;

    move-result-object p2

    .line 104
    .local p2, "chatError":Lcom/fusepowered/util/FuseChatError;
    sget-object v1, Lcom/fusepowered/util/FuseChatError;->FUSE_CHAT_NONE:Lcom/fusepowered/util/FuseChatError;

    if-eq p2, v1, :cond_3

    .line 105
    invoke-virtual {p4, p2}, Lcom/fusepowered/util/FuseCallback;->chatListError(Lcom/fusepowered/util/FuseChatError;)V

    .line 106
    const/4 p0, 0x0

    .line 107
    .end local v3    # "success":Z
    .local p0, "success":Z
    goto/16 :goto_0

    .line 110
    .end local p2    # "chatError":Lcom/fusepowered/util/FuseChatError;
    .restart local v3    # "success":Z
    .local p0, "actionType":Lcom/fusepowered/util/ActionType;
    :cond_3
    invoke-virtual {p3}, Lcom/fusepowered/util/ResponseValues;->getFuseId()Ljava/lang/String;

    move-result-object v1

    .line 111
    .local v1, "fuseId":Ljava/lang/String;
    invoke-virtual {p3, v1}, Lcom/fusepowered/util/ResponseValues;->getChatMessages(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p2

    .line 112
    .local p2, "chats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/ChatMessage;>;"
    invoke-virtual {p4, p2, v1}, Lcom/fusepowered/util/FuseCallback;->chatListReceived(Ljava/util/ArrayList;Ljava/lang/String;)V

    move p0, v3

    .line 113
    .end local v3    # "success":Z
    .local p0, "success":Z
    goto/16 :goto_0

    .line 115
    .end local v1    # "fuseId":Ljava/lang/String;
    .restart local v3    # "success":Z
    .local p0, "actionType":Lcom/fusepowered/util/ActionType;
    .local p2, "response":Ljava/lang/String;
    :pswitch_b
    invoke-static {p2, p3}, Lcom/fusepowered/util/XMLParser;->parseSignPost(Ljava/lang/String;Lcom/fusepowered/util/ResponseValues;)V

    move p0, v3

    .line 116
    .end local v3    # "success":Z
    .local p0, "success":Z
    goto/16 :goto_0

    .line 118
    .restart local v3    # "success":Z
    .local p0, "actionType":Lcom/fusepowered/util/ActionType;
    :pswitch_c
    invoke-static {p2, p3}, Lcom/fusepowered/util/XMLParser;->parseGetMail(Ljava/lang/String;Lcom/fusepowered/util/ResponseValues;)V

    .line 119
    invoke-virtual {p3}, Lcom/fusepowered/util/ResponseValues;->getError()Ljava/lang/String;

    move-result-object p2

    .line 120
    .local p2, "errorString":Ljava/lang/String;
    invoke-static {p2}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 121
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 122
    .local p2, "errorCode":I
    invoke-static {p2}, Lcom/fusepowered/util/FuseMailError;->getFuseMailErrorByCode(I)Lcom/fusepowered/util/FuseMailError;

    move-result-object p2

    .line 123
    .local p2, "mailError":Lcom/fusepowered/util/FuseMailError;
    sget-object v1, Lcom/fusepowered/util/FuseMailError;->FUSE_MAIL_NO_ERROR:Lcom/fusepowered/util/FuseMailError;

    if-eq p2, v1, :cond_4

    .line 124
    invoke-virtual {p4, p2}, Lcom/fusepowered/util/FuseCallback;->mailListError(Lcom/fusepowered/util/FuseMailError;)V

    .line 125
    const/4 p0, 0x0

    .line 126
    .end local v3    # "success":Z
    .local p0, "success":Z
    goto/16 :goto_0

    .line 129
    .end local p2    # "mailError":Lcom/fusepowered/util/FuseMailError;
    .restart local v3    # "success":Z
    .local p0, "actionType":Lcom/fusepowered/util/ActionType;
    :cond_4
    invoke-virtual {p3}, Lcom/fusepowered/util/ResponseValues;->getFuseId()Ljava/lang/String;

    move-result-object p2

    .line 130
    .local p2, "fuseId":Ljava/lang/String;
    invoke-virtual {p3, p2}, Lcom/fusepowered/util/ResponseValues;->getMailList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p3

    .line 131
    .local p3, "mails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/Mail;>;"
    invoke-virtual {p4, p3, p2}, Lcom/fusepowered/util/FuseCallback;->mailListReceived(Ljava/util/ArrayList;Ljava/lang/String;)V

    move p0, v3

    .line 132
    .end local v3    # "success":Z
    .local p0, "success":Z
    goto/16 :goto_0

    .line 134
    .restart local v3    # "success":Z
    .local p0, "actionType":Lcom/fusepowered/util/ActionType;
    .local p2, "response":Ljava/lang/String;
    .local p3, "responseValues":Lcom/fusepowered/util/ResponseValues;
    :pswitch_d
    invoke-static {p2, p3}, Lcom/fusepowered/util/XMLParser;->parseGetUserTransaction(Ljava/lang/String;Lcom/fusepowered/util/ResponseValues;)V

    .line 135
    invoke-virtual {p3}, Lcom/fusepowered/util/ResponseValues;->getError()Ljava/lang/String;

    move-result-object p2

    .line 136
    .local p2, "errorString":Ljava/lang/String;
    invoke-static {p2}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 137
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 138
    .local p2, "errorCode":I
    invoke-static {p2}, Lcom/fusepowered/util/FuseAttackErrors;->getFuseAttackErrorByCode(I)Lcom/fusepowered/util/FuseAttackErrors;

    move-result-object p2

    .line 139
    .local p2, "attackError":Lcom/fusepowered/util/FuseAttackErrors;
    sget-object v1, Lcom/fusepowered/util/FuseAttackErrors;->FUSE_ATTACK_NO_ERROR:Lcom/fusepowered/util/FuseAttackErrors;

    if-eq p2, v1, :cond_5

    .line 140
    move-object v0, p4

    check-cast v0, Lcom/fusepowered/util/FuseGameDataCallback;

    move-object v1, v0

    invoke-virtual {v1, p2}, Lcom/fusepowered/util/FuseGameDataCallback;->attackRobberyLogError(Lcom/fusepowered/util/FuseAttackErrors;)V

    .line 141
    const/4 p0, 0x0

    .line 142
    .end local v3    # "success":Z
    .local p0, "success":Z
    goto/16 :goto_0

    .line 145
    .end local p2    # "attackError":Lcom/fusepowered/util/FuseAttackErrors;
    .restart local v3    # "success":Z
    .local p0, "actionType":Lcom/fusepowered/util/ActionType;
    :cond_5
    move-object v0, p4

    check-cast v0, Lcom/fusepowered/util/FuseGameDataCallback;

    move-object v1, v0

    invoke-virtual {p3}, Lcom/fusepowered/util/ResponseValues;->getUserTransactionLogs()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/fusepowered/util/FuseGameDataCallback;->attackRobberyLogReceived(Ljava/util/ArrayList;)V

    move p0, v3

    .line 146
    .end local v3    # "success":Z
    .local p0, "success":Z
    goto/16 :goto_0

    .line 148
    .restart local v3    # "success":Z
    .local p0, "actionType":Lcom/fusepowered/util/ActionType;
    .local p2, "response":Ljava/lang/String;
    :pswitch_e
    invoke-static {p2, p3}, Lcom/fusepowered/util/XMLParser;->parseGetFriendsList(Ljava/lang/String;Lcom/fusepowered/util/ResponseValues;)V

    .line 149
    invoke-virtual {p3}, Lcom/fusepowered/util/ResponseValues;->getError()Ljava/lang/String;

    move-result-object p2

    .line 150
    .local p2, "errorString":Ljava/lang/String;
    invoke-static {p2}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 151
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 152
    .local p2, "errorCode":I
    invoke-static {p2}, Lcom/fusepowered/util/FuseFriendsListError;->getFuseFriendsListErrorByCode(I)Lcom/fusepowered/util/FuseFriendsListError;

    move-result-object p2

    .line 153
    .local p2, "friendsListError":Lcom/fusepowered/util/FuseFriendsListError;
    sget-object v1, Lcom/fusepowered/util/FuseFriendsListError;->FUSE_FRIENDS_LIST_NO_ERROR:Lcom/fusepowered/util/FuseFriendsListError;

    if-eq p2, v1, :cond_6

    .line 154
    invoke-virtual {p4, p2}, Lcom/fusepowered/util/FuseCallback;->friendsListError(Lcom/fusepowered/util/FuseFriendsListError;)V

    .line 155
    const/4 p0, 0x0

    .line 156
    .end local v3    # "success":Z
    .local p0, "success":Z
    goto/16 :goto_0

    .line 159
    .end local p2    # "friendsListError":Lcom/fusepowered/util/FuseFriendsListError;
    .restart local v3    # "success":Z
    .local p0, "actionType":Lcom/fusepowered/util/ActionType;
    :cond_6
    invoke-virtual {p3}, Lcom/fusepowered/util/ResponseValues;->getFriendsList()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p4, p2}, Lcom/fusepowered/util/FuseCallback;->friendsListUpdated(Ljava/util/ArrayList;)V

    move p0, v3

    .line 160
    .end local v3    # "success":Z
    .local p0, "success":Z
    goto/16 :goto_0

    .line 162
    .restart local v3    # "success":Z
    .local p0, "actionType":Lcom/fusepowered/util/ActionType;
    .local p2, "response":Ljava/lang/String;
    :pswitch_f
    invoke-static {p2, p3}, Lcom/fusepowered/util/XMLParser;->parseGetEnemiesList(Ljava/lang/String;Lcom/fusepowered/util/ResponseValues;)V

    .line 163
    invoke-virtual {p3}, Lcom/fusepowered/util/ResponseValues;->getError()Ljava/lang/String;

    move-result-object p2

    .line 164
    .local p2, "errorString":Ljava/lang/String;
    invoke-static {p2}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 165
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 166
    .local p2, "errorCode":I
    invoke-static {p2}, Lcom/fusepowered/util/FuseEnemiesListError;->getFuseEnemiesListErrorByCode(I)Lcom/fusepowered/util/FuseEnemiesListError;

    move-result-object p2

    .line 167
    .local p2, "enemiesListError":Lcom/fusepowered/util/FuseEnemiesListError;
    sget-object v1, Lcom/fusepowered/util/FuseEnemiesListError;->FUSE_ENEMIES_LIST_NO_ERROR:Lcom/fusepowered/util/FuseEnemiesListError;

    if-eq p2, v1, :cond_7

    .line 168
    move-object v0, p4

    check-cast v0, Lcom/fusepowered/util/FuseGameDataCallback;

    move-object v1, v0

    invoke-virtual {v1, p2}, Lcom/fusepowered/util/FuseGameDataCallback;->enemiesListError(Lcom/fusepowered/util/FuseEnemiesListError;)V

    .line 169
    const/4 p0, 0x0

    .line 170
    .end local v3    # "success":Z
    .local p0, "success":Z
    goto/16 :goto_0

    .line 173
    .end local p2    # "enemiesListError":Lcom/fusepowered/util/FuseEnemiesListError;
    .restart local v3    # "success":Z
    .local p0, "actionType":Lcom/fusepowered/util/ActionType;
    :cond_7
    move-object v0, p4

    check-cast v0, Lcom/fusepowered/util/FuseGameDataCallback;

    move-object v1, v0

    invoke-virtual {p3}, Lcom/fusepowered/util/ResponseValues;->getEnemiesList()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/fusepowered/util/FuseGameDataCallback;->enemiesListResult(Ljava/util/ArrayList;)V

    move p0, v3

    .line 174
    .end local v3    # "success":Z
    .local p0, "success":Z
    goto/16 :goto_0

    .line 176
    .restart local v3    # "success":Z
    .local p0, "actionType":Lcom/fusepowered/util/ActionType;
    .local p2, "response":Ljava/lang/String;
    :pswitch_10
    invoke-static {p2, p3}, Lcom/fusepowered/util/XMLParser;->parseFriendAction(Ljava/lang/String;Lcom/fusepowered/util/ResponseValues;)V

    .line 177
    invoke-virtual {p3}, Lcom/fusepowered/util/ResponseValues;->getError()Ljava/lang/String;

    move-result-object p2

    .end local p2    # "response":Ljava/lang/String;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 178
    .local p2, "errorCode":I
    invoke-static {p2}, Lcom/fusepowered/util/FuseAddFriendError;->getFuseAddFriendErrorByCode(I)Lcom/fusepowered/util/FuseAddFriendError;

    move-result-object p2

    .line 179
    .local p2, "addFriendError":Lcom/fusepowered/util/FuseAddFriendError;
    invoke-virtual {p3}, Lcom/fusepowered/util/ResponseValues;->getFuseId()Ljava/lang/String;

    move-result-object p3

    .end local p3    # "responseValues":Lcom/fusepowered/util/ResponseValues;
    invoke-virtual {p4, p3, p2}, Lcom/fusepowered/util/FuseCallback;->friendAdded(Ljava/lang/String;Lcom/fusepowered/util/FuseAddFriendError;)V

    move p0, v3

    .line 180
    .end local v3    # "success":Z
    .local p0, "success":Z
    goto/16 :goto_0

    .line 182
    .restart local v3    # "success":Z
    .local p0, "actionType":Lcom/fusepowered/util/ActionType;
    .local p2, "response":Ljava/lang/String;
    .restart local p3    # "responseValues":Lcom/fusepowered/util/ResponseValues;
    :pswitch_11
    invoke-static {p2, p3}, Lcom/fusepowered/util/XMLParser;->parseFriendAction(Ljava/lang/String;Lcom/fusepowered/util/ResponseValues;)V

    .line 183
    invoke-virtual {p3}, Lcom/fusepowered/util/ResponseValues;->getError()Ljava/lang/String;

    move-result-object p2

    .end local p2    # "response":Ljava/lang/String;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 184
    .local p2, "errorCode":I
    invoke-static {p2}, Lcom/fusepowered/util/FuseRemoveFriendError;->getFuseRemoveFriendErrorByCode(I)Lcom/fusepowered/util/FuseRemoveFriendError;

    move-result-object p2

    .line 185
    .local p2, "removeFriendError":Lcom/fusepowered/util/FuseRemoveFriendError;
    invoke-virtual {p3}, Lcom/fusepowered/util/ResponseValues;->getFuseId()Ljava/lang/String;

    move-result-object p3

    .end local p3    # "responseValues":Lcom/fusepowered/util/ResponseValues;
    invoke-virtual {p4, p3, p2}, Lcom/fusepowered/util/FuseCallback;->friendRemoved(Ljava/lang/String;Lcom/fusepowered/util/FuseRemoveFriendError;)V

    move p0, v3

    .line 186
    .end local v3    # "success":Z
    .local p0, "success":Z
    goto/16 :goto_0

    .line 188
    .restart local v3    # "success":Z
    .local p0, "actionType":Lcom/fusepowered/util/ActionType;
    .local p2, "response":Ljava/lang/String;
    .restart local p3    # "responseValues":Lcom/fusepowered/util/ResponseValues;
    :pswitch_12
    invoke-static {p2, p3}, Lcom/fusepowered/util/XMLParser;->parseFriendAction(Ljava/lang/String;Lcom/fusepowered/util/ResponseValues;)V

    .line 189
    invoke-virtual {p3}, Lcom/fusepowered/util/ResponseValues;->getError()Ljava/lang/String;

    move-result-object p2

    .end local p2    # "response":Ljava/lang/String;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 190
    .local p2, "errorCode":I
    invoke-static {p2}, Lcom/fusepowered/util/FuseAcceptFriendError;->getFuseAcceptFriendErrorByCode(I)Lcom/fusepowered/util/FuseAcceptFriendError;

    move-result-object p2

    .line 191
    .local p2, "acceptFriendError":Lcom/fusepowered/util/FuseAcceptFriendError;
    invoke-virtual {p3}, Lcom/fusepowered/util/ResponseValues;->getFuseId()Ljava/lang/String;

    move-result-object p3

    .end local p3    # "responseValues":Lcom/fusepowered/util/ResponseValues;
    invoke-virtual {p4, p3, p2}, Lcom/fusepowered/util/FuseCallback;->friendAccepted(Ljava/lang/String;Lcom/fusepowered/util/FuseAcceptFriendError;)V

    move p0, v3

    .line 192
    .end local v3    # "success":Z
    .local p0, "success":Z
    goto/16 :goto_0

    .line 194
    .restart local v3    # "success":Z
    .local p0, "actionType":Lcom/fusepowered/util/ActionType;
    .local p2, "response":Ljava/lang/String;
    .restart local p3    # "responseValues":Lcom/fusepowered/util/ResponseValues;
    :pswitch_13
    invoke-static {p2, p3}, Lcom/fusepowered/util/XMLParser;->parseFriendAction(Ljava/lang/String;Lcom/fusepowered/util/ResponseValues;)V

    .line 195
    invoke-virtual {p3}, Lcom/fusepowered/util/ResponseValues;->getError()Ljava/lang/String;

    move-result-object p2

    .end local p2    # "response":Ljava/lang/String;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 196
    .local p2, "errorCode":I
    invoke-static {p2}, Lcom/fusepowered/util/FuseRejectFriendError;->getFuseRejectFriendErrorByCode(I)Lcom/fusepowered/util/FuseRejectFriendError;

    move-result-object p2

    .line 197
    .local p2, "rejectFriendError":Lcom/fusepowered/util/FuseRejectFriendError;
    invoke-virtual {p3}, Lcom/fusepowered/util/ResponseValues;->getFuseId()Ljava/lang/String;

    move-result-object p3

    .end local p3    # "responseValues":Lcom/fusepowered/util/ResponseValues;
    invoke-virtual {p4, p3, p2}, Lcom/fusepowered/util/FuseCallback;->friendRejected(Ljava/lang/String;Lcom/fusepowered/util/FuseRejectFriendError;)V

    move p0, v3

    .line 198
    .end local v3    # "success":Z
    .local p0, "success":Z
    goto/16 :goto_0

    .line 200
    .restart local v3    # "success":Z
    .local p0, "actionType":Lcom/fusepowered/util/ActionType;
    .local p2, "response":Ljava/lang/String;
    .restart local p3    # "responseValues":Lcom/fusepowered/util/ResponseValues;
    :pswitch_14
    invoke-static {p2, p3}, Lcom/fusepowered/util/XMLParser;->parseFriendAction(Ljava/lang/String;Lcom/fusepowered/util/ResponseValues;)V

    .line 201
    invoke-virtual {p3}, Lcom/fusepowered/util/ResponseValues;->getError()Ljava/lang/String;

    move-result-object p2

    .end local p2    # "response":Ljava/lang/String;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 202
    .local p2, "errorCode":I
    invoke-static {p2}, Lcom/fusepowered/util/FuseMigrateFriendsError;->getFuseMigrateFriendsErrorByCode(I)Lcom/fusepowered/util/FuseMigrateFriendsError;

    move-result-object p2

    .line 203
    .local p2, "migrateFriendsError":Lcom/fusepowered/util/FuseMigrateFriendsError;
    invoke-virtual {p3}, Lcom/fusepowered/util/ResponseValues;->getFuseId()Ljava/lang/String;

    move-result-object p3

    .end local p3    # "responseValues":Lcom/fusepowered/util/ResponseValues;
    invoke-virtual {p4, p3, p2}, Lcom/fusepowered/util/FuseCallback;->friendsMigrated(Ljava/lang/String;Lcom/fusepowered/util/FuseMigrateFriendsError;)V

    move p0, v3

    .line 204
    .end local v3    # "success":Z
    .local p0, "success":Z
    goto/16 :goto_0

    .line 206
    .restart local v3    # "success":Z
    .local p0, "actionType":Lcom/fusepowered/util/ActionType;
    .local p2, "response":Ljava/lang/String;
    .restart local p3    # "responseValues":Lcom/fusepowered/util/ResponseValues;
    :pswitch_15
    invoke-static {p2, p3}, Lcom/fusepowered/util/XMLParser;->parseSendMail(Ljava/lang/String;Lcom/fusepowered/util/ResponseValues;)I

    move-result v1

    .line 207
    .local v1, "mailId":I
    invoke-virtual {p3}, Lcom/fusepowered/util/ResponseValues;->getReqId()Ljava/lang/String;

    move-result-object p2

    .end local p2    # "response":Ljava/lang/String;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 208
    .local v2, "requestID":I
    invoke-virtual {p3}, Lcom/fusepowered/util/ResponseValues;->getError()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 209
    .local p2, "errorCode":I
    invoke-static {p2}, Lcom/fusepowered/util/FuseMailError;->getFuseMailErrorByCode(I)Lcom/fusepowered/util/FuseMailError;

    move-result-object p2

    .line 210
    .local p2, "mailError":Lcom/fusepowered/util/FuseMailError;
    sget-object v4, Lcom/fusepowered/util/FuseMailError;->FUSE_MAIL_NO_ERROR:Lcom/fusepowered/util/FuseMailError;

    if-eq p2, v4, :cond_8

    .line 211
    invoke-virtual {p4, p2, v2}, Lcom/fusepowered/util/FuseCallback;->mailError(Lcom/fusepowered/util/FuseMailError;I)V

    .line 212
    const/4 p0, 0x0

    .line 213
    .end local v3    # "success":Z
    .local p0, "success":Z
    goto/16 :goto_0

    .line 215
    .restart local v3    # "success":Z
    .local p0, "actionType":Lcom/fusepowered/util/ActionType;
    :cond_8
    invoke-virtual {p3}, Lcom/fusepowered/util/ResponseValues;->getFuseId()Ljava/lang/String;

    move-result-object p2

    .end local p2    # "mailError":Lcom/fusepowered/util/FuseMailError;
    invoke-virtual {p4, v1, p2, v2}, Lcom/fusepowered/util/FuseCallback;->mailAcknowledged(ILjava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move p0, v3

    .line 216
    .end local v3    # "success":Z
    .local p0, "success":Z
    goto/16 :goto_0

    .line 221
    .end local v1    # "mailId":I
    .end local v2    # "requestID":I
    .end local p3    # "responseValues":Lcom/fusepowered/util/ResponseValues;
    .restart local v3    # "success":Z
    .local p0, "actionType":Lcom/fusepowered/util/ActionType;
    :catch_0
    move-exception p2

    .line 223
    .local p2, "e":Ljava/lang/Exception;
    const-string p3, "FuseAPI"

    const-string v1, "Unexpected Exception"

    invoke-static {p3, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 225
    sget-object p2, Lcom/fusepowered/util/ActionType;->ACTION_SESSION_START:Lcom/fusepowered/util/ActionType;

    .end local p2    # "e":Ljava/lang/Exception;
    invoke-virtual {p0, p2}, Lcom/fusepowered/util/ActionType;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 226
    sget-object p2, Lcom/fusepowered/util/FuseLoginError;->FUSE_ERROR_XML_PARSE_ERROR:Lcom/fusepowered/util/FuseLoginError;

    invoke-virtual {p4, p2}, Lcom/fusepowered/util/FuseCallback;->sessionLoginError(Lcom/fusepowered/util/FuseLoginError;)V

    .line 229
    :cond_9
    sget-object p2, Lcom/fusepowered/util/ActionType;->ACTION_GET_GAME_DATA:Lcom/fusepowered/util/ActionType;

    invoke-virtual {p0, p2}, Lcom/fusepowered/util/ActionType;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    sget-object p2, Lcom/fusepowered/util/ActionType;->ACTION_SET_GAME_DATA:Lcom/fusepowered/util/ActionType;

    invoke-virtual {p0, p2}, Lcom/fusepowered/util/ActionType;->equals(Ljava/lang/Object;)Z

    move-result p0

    .end local p0    # "actionType":Lcom/fusepowered/util/ActionType;
    if-eqz p0, :cond_b

    .line 230
    :cond_a
    if-eqz p1, :cond_c

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 231
    .local p0, "reqId":I
    :goto_2
    check-cast p4, Lcom/fusepowered/util/FuseGameDataCallback;

    .end local p4    # "fuseCallback":Lcom/fusepowered/util/FuseCallback;
    sget-object p1, Lcom/fusepowered/util/FuseGameDataError;->FUSE_GD_ERROR_XML_PARSE_ERROR:Lcom/fusepowered/util/FuseGameDataError;

    .end local p1    # "gameDataRequestId":Ljava/lang/String;
    invoke-virtual {p4, p1, p0}, Lcom/fusepowered/util/FuseGameDataCallback;->setFuseGameDataError(Lcom/fusepowered/util/FuseGameDataError;I)V

    .line 234
    .end local p0    # "reqId":I
    :cond_b
    const/4 p0, 0x0

    .end local v3    # "success":Z
    .local p0, "success":Z
    goto/16 :goto_0

    .line 230
    .end local p0    # "success":Z
    .restart local v3    # "success":Z
    .restart local p1    # "gameDataRequestId":Ljava/lang/String;
    .restart local p4    # "fuseCallback":Lcom/fusepowered/util/FuseCallback;
    :cond_c
    iget p0, p4, Lcom/fusepowered/util/FuseCallback;->requestId:I

    goto :goto_2

    .line 29
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
    .end packed-switch
.end method

.method private static parseRewardRedemption(Ljava/lang/String;Lcom/fusepowered/util/ResponseValues;)Lcom/fusepowered/util/Incentive;
    .locals 14
    .param p0, "xmlStr"    # Ljava/lang/String;
    .param p1, "responseValues"    # Lcom/fusepowered/util/ResponseValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1185
    new-instance v9, Lcom/fusepowered/util/Incentive;

    invoke-direct {v9}, Lcom/fusepowered/util/Incentive;-><init>()V

    .line 1187
    .local v9, "incentive":Lcom/fusepowered/util/Incentive;
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v5

    .line 1188
    .local v5, "f":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v5}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    .line 1189
    .local v1, "b":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v12, Ljava/io/ByteArrayInputStream;

    const-string v13, "UTF-8"

    invoke-virtual {p0, v13}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v12}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v3

    .line 1190
    .local v3, "doc":Lorg/w3c/dom/Document;
    const-string v12, "incentive"

    invoke-interface {v3, v12}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v11

    .line 1192
    .local v11, "items":Lorg/w3c/dom/NodeList;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-interface {v11}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v12

    if-ge v6, v12, :cond_6

    .line 1193
    invoke-interface {v11, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    .line 1194
    .local v10, "incentiveProperty":Lorg/w3c/dom/Node;
    invoke-interface {v10}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    .line 1195
    .local v2, "dlcAttributes":Lorg/w3c/dom/NamedNodeMap;
    const-string v12, "incentive_id"

    invoke-static {v2, v12}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1196
    .local v0, "attrValue":Ljava/lang/String;
    invoke-static {v0}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 1197
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v9, v12}, Lcom/fusepowered/util/Incentive;->setIncentiveId(I)V

    .line 1198
    :cond_0
    const-string v12, "amount"

    invoke-static {v2, v12}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1199
    invoke-static {v0}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 1200
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v9, v12}, Lcom/fusepowered/util/Incentive;->setAmount(I)V

    .line 1201
    :cond_1
    const-string v12, "reward_item_id"

    invoke-static {v2, v12}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1202
    invoke-static {v0}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 1203
    invoke-virtual {v9, v0}, Lcom/fusepowered/util/Incentive;->setRewardItemId(Ljava/lang/String;)V

    .line 1204
    :cond_2
    const-string v12, "reward_item_name"

    invoke-static {v2, v12}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1205
    invoke-static {v0}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 1206
    invoke-virtual {v9, v0}, Lcom/fusepowered/util/Incentive;->setRewardItemName(Ljava/lang/String;)V

    .line 1207
    :cond_3
    const-string v12, "claim_confirmed"

    invoke-static {v2, v12}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1208
    invoke-static {v0}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 1209
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    if-eqz v12, :cond_5

    const/4 v12, 0x1

    :goto_1
    invoke-virtual {v9, v12}, Lcom/fusepowered/util/Incentive;->setClaimConfirmed(Z)V

    .line 1192
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1209
    :cond_5
    const/4 v12, 0x0

    goto :goto_1

    .line 1212
    .end local v0    # "attrValue":Ljava/lang/String;
    .end local v2    # "dlcAttributes":Lorg/w3c/dom/NamedNodeMap;
    .end local v10    # "incentiveProperty":Lorg/w3c/dom/Node;
    :cond_6
    invoke-virtual {p1}, Lcom/fusepowered/util/ResponseValues;->getIncentives()Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_7
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/fusepowered/util/Incentive;

    .line 1213
    .local v8, "inc":Lcom/fusepowered/util/Incentive;
    invoke-virtual {v8}, Lcom/fusepowered/util/Incentive;->getIncentiveId()I

    move-result v12

    invoke-virtual {v9}, Lcom/fusepowered/util/Incentive;->getIncentiveId()I

    move-result v13

    if-ne v12, v13, :cond_7

    .line 1214
    invoke-virtual {p1}, Lcom/fusepowered/util/ResponseValues;->getIncentives()Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1221
    .end local v1    # "b":Ljavax/xml/parsers/DocumentBuilder;
    .end local v3    # "doc":Lorg/w3c/dom/Document;
    .end local v5    # "f":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v6    # "i":I
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "inc":Lcom/fusepowered/util/Incentive;
    .end local v11    # "items":Lorg/w3c/dom/NodeList;
    :catch_0
    move-exception v12

    move-object v4, v12

    .line 1222
    .local v4, "e":Ljava/lang/Exception;
    throw v4

    .line 1218
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v1    # "b":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v3    # "doc":Lorg/w3c/dom/Document;
    .restart local v5    # "f":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v6    # "i":I
    .restart local v7    # "i$":Ljava/util/Iterator;
    .restart local v11    # "items":Lorg/w3c/dom/NodeList;
    :cond_8
    :try_start_1
    invoke-virtual {p1}, Lcom/fusepowered/util/ResponseValues;->getIncentives()Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1225
    return-object v9
.end method

.method private static parseRewardRedemptionConfirmation(Ljava/lang/String;Lcom/fusepowered/util/ResponseValues;)V
    .locals 14
    .param p0, "xmlStr"    # Ljava/lang/String;
    .param p1, "responseValues"    # Lcom/fusepowered/util/ResponseValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1230
    new-instance v9, Lcom/fusepowered/util/Incentive;

    invoke-direct {v9}, Lcom/fusepowered/util/Incentive;-><init>()V

    .line 1232
    .local v9, "incentive":Lcom/fusepowered/util/Incentive;
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v5

    .line 1233
    .local v5, "f":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v5}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    .line 1234
    .local v1, "b":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v12, Ljava/io/ByteArrayInputStream;

    const-string v13, "UTF-8"

    invoke-virtual {p0, v13}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v12}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v3

    .line 1235
    .local v3, "doc":Lorg/w3c/dom/Document;
    const-string v12, "incentive"

    invoke-interface {v3, v12}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v11

    .line 1237
    .local v11, "items":Lorg/w3c/dom/NodeList;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-interface {v11}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v12

    if-ge v6, v12, :cond_6

    .line 1238
    invoke-interface {v11, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    .line 1239
    .local v10, "incentiveProperty":Lorg/w3c/dom/Node;
    invoke-interface {v10}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    .line 1240
    .local v2, "dlcAttributes":Lorg/w3c/dom/NamedNodeMap;
    const-string v12, "incentive_id"

    invoke-static {v2, v12}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1241
    .local v0, "attrValue":Ljava/lang/String;
    invoke-static {v0}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 1242
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v9, v12}, Lcom/fusepowered/util/Incentive;->setIncentiveId(I)V

    .line 1243
    :cond_0
    const-string v12, "amount"

    invoke-static {v2, v12}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1244
    invoke-static {v0}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 1245
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v9, v12}, Lcom/fusepowered/util/Incentive;->setAmount(I)V

    .line 1246
    :cond_1
    const-string v12, "reward_item_id"

    invoke-static {v2, v12}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1247
    invoke-static {v0}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 1248
    invoke-virtual {v9, v0}, Lcom/fusepowered/util/Incentive;->setRewardItemId(Ljava/lang/String;)V

    .line 1249
    :cond_2
    const-string v12, "reward_item_name"

    invoke-static {v2, v12}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1250
    invoke-static {v0}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 1251
    invoke-virtual {v9, v0}, Lcom/fusepowered/util/Incentive;->setRewardItemName(Ljava/lang/String;)V

    .line 1252
    :cond_3
    const-string v12, "claim_confirmed"

    invoke-static {v2, v12}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1253
    invoke-static {v0}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 1254
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    if-eqz v12, :cond_5

    const/4 v12, 0x1

    :goto_1
    invoke-virtual {v9, v12}, Lcom/fusepowered/util/Incentive;->setClaimConfirmed(Z)V

    .line 1237
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1254
    :cond_5
    const/4 v12, 0x0

    goto :goto_1

    .line 1257
    .end local v0    # "attrValue":Ljava/lang/String;
    .end local v2    # "dlcAttributes":Lorg/w3c/dom/NamedNodeMap;
    .end local v10    # "incentiveProperty":Lorg/w3c/dom/Node;
    :cond_6
    invoke-virtual {p1}, Lcom/fusepowered/util/ResponseValues;->getIncentives()Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_7
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/fusepowered/util/Incentive;

    .line 1258
    .local v8, "inc":Lcom/fusepowered/util/Incentive;
    invoke-virtual {v8}, Lcom/fusepowered/util/Incentive;->getIncentiveId()I

    move-result v12

    invoke-virtual {v9}, Lcom/fusepowered/util/Incentive;->getIncentiveId()I

    move-result v13

    if-ne v12, v13, :cond_7

    .line 1259
    invoke-virtual {p1}, Lcom/fusepowered/util/ResponseValues;->getIncentives()Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1263
    .end local v1    # "b":Ljavax/xml/parsers/DocumentBuilder;
    .end local v3    # "doc":Lorg/w3c/dom/Document;
    .end local v5    # "f":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v6    # "i":I
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "inc":Lcom/fusepowered/util/Incentive;
    .end local v11    # "items":Lorg/w3c/dom/NodeList;
    :catch_0
    move-exception v12

    move-object v4, v12

    .line 1264
    .local v4, "e":Ljava/lang/Exception;
    throw v4

    .line 1267
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v1    # "b":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v3    # "doc":Lorg/w3c/dom/Document;
    .restart local v5    # "f":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v6    # "i":I
    .restart local v7    # "i$":Ljava/util/Iterator;
    .restart local v11    # "items":Lorg/w3c/dom/NodeList;
    :cond_8
    return-void
.end method

.method private static parseSendMail(Ljava/lang/String;Lcom/fusepowered/util/ResponseValues;)I
    .locals 12
    .param p0, "xmlStr"    # Ljava/lang/String;
    .param p1, "responseValues"    # Lcom/fusepowered/util/ResponseValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1662
    const/4 v9, 0x0

    .line 1665
    .local v9, "mailId":I
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v5

    .line 1666
    .local v5, "f":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v5}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    .line 1667
    .local v2, "b":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v10, Ljava/io/ByteArrayInputStream;

    const-string v11, "UTF-8"

    invoke-virtual {p0, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v2, v10}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v3

    .line 1668
    .local v3, "doc":Lorg/w3c/dom/Document;
    const-string v10, "send_mail"

    invoke-interface {v3, v10}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v8

    .line 1670
    .local v8, "items":Lorg/w3c/dom/NodeList;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-interface {v8}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v10

    if-ge v6, v10, :cond_4

    .line 1671
    invoke-interface {v8, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    .line 1672
    .local v7, "item":Lorg/w3c/dom/Node;
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    .line 1674
    .local v1, "attributes":Lorg/w3c/dom/NamedNodeMap;
    const-string v10, "error"

    invoke-static {v1, v10}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1675
    .local v0, "attrValue":Ljava/lang/String;
    invoke-static {v0}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 1676
    invoke-virtual {p1, v0}, Lcom/fusepowered/util/ResponseValues;->setError(Ljava/lang/String;)V

    .line 1678
    :cond_0
    const-string v10, "fuse_id"

    invoke-static {v1, v10}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1679
    invoke-static {v0}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 1680
    invoke-virtual {p1, v0}, Lcom/fusepowered/util/ResponseValues;->setFuseId(Ljava/lang/String;)V

    .line 1682
    :cond_1
    const-string v10, "message_id"

    invoke-static {v1, v10}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1683
    invoke-static {v0}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 1684
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 1686
    :cond_2
    const-string v10, "reqID"

    invoke-static {v1, v10}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1687
    invoke-static {v0}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 1688
    invoke-virtual {p1, v0}, Lcom/fusepowered/util/ResponseValues;->setReqId(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1670
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1691
    .end local v0    # "attrValue":Ljava/lang/String;
    .end local v1    # "attributes":Lorg/w3c/dom/NamedNodeMap;
    .end local v2    # "b":Ljavax/xml/parsers/DocumentBuilder;
    .end local v3    # "doc":Lorg/w3c/dom/Document;
    .end local v5    # "f":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v6    # "i":I
    .end local v7    # "item":Lorg/w3c/dom/Node;
    .end local v8    # "items":Lorg/w3c/dom/NodeList;
    :catch_0
    move-exception v10

    move-object v4, v10

    .line 1692
    .local v4, "e":Ljava/lang/Exception;
    throw v4

    .line 1694
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v2    # "b":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v3    # "doc":Lorg/w3c/dom/Document;
    .restart local v5    # "f":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v6    # "i":I
    .restart local v8    # "items":Lorg/w3c/dom/NodeList;
    :cond_4
    return v9
.end method

.method private static parseSessionResume(Ljava/lang/String;Lcom/fusepowered/util/ResponseValues;)V
    .locals 20
    .param p0, "xmlStr"    # Ljava/lang/String;
    .param p1, "responseValues"    # Lcom/fusepowered/util/ResponseValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 596
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v3

    .line 597
    .local v3, "f":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v3

    .line 598
    .local v3, "b":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v4, Ljava/io/ByteArrayInputStream;

    const-string v5, "UTF-8"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v3, v4}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v3

    .line 599
    .local v3, "doc":Lorg/w3c/dom/Document;
    const-string v4, "utc_time"

    const-string v5, "xml"

    move-object/from16 v0, p0

    move-object v1, v4

    move-object v2, v5

    invoke-static {v0, v1, v2}, Lcom/fusepowered/util/XMLParser;->readTagValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/fusepowered/util/ResponseValues;->setTimestamp(Ljava/lang/String;)V

    .line 600
    const-string v4, "xml"

    invoke-interface {v3, v4}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v13

    .line 601
    .local v13, "items":Lorg/w3c/dom/NodeList;
    const/4 v3, 0x0

    .local v3, "i":I
    move v11, v3

    .end local v3    # "i":I
    .local v11, "i":I
    :goto_0
    invoke-interface {v13}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v11, v3, :cond_1c

    .line 602
    invoke-interface {v13, v11}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 603
    .local v3, "item":Lorg/w3c/dom/Node;
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v17

    .line 604
    .local v17, "properties":Lorg/w3c/dom/NodeList;
    const/4 v3, 0x0

    .local v3, "j":I
    move v14, v3

    .end local v3    # "j":I
    .local v14, "j":I
    :goto_1
    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v14, v3, :cond_1b

    .line 605
    move-object/from16 v0, v17

    move v1, v14

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v18

    .line 606
    .local v18, "property":Lorg/w3c/dom/Node;
    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v16

    .line 607
    .local v16, "name":Ljava/lang/String;
    const-string v3, "utc_time"

    move-object/from16 v0, v16

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 608
    const-string v3, "utc_time"

    const-string v4, "xml"

    move-object/from16 v0, p0

    move-object v1, v3

    move-object v2, v4

    invoke-static {v0, v1, v2}, Lcom/fusepowered/util/XMLParser;->readTagValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/fusepowered/util/ResponseValues;->setTimestamp(Ljava/lang/String;)V

    .line 604
    :cond_0
    :goto_2
    add-int/lit8 v3, v14, 0x1

    .end local v14    # "j":I
    .restart local v3    # "j":I
    move v14, v3

    .end local v3    # "j":I
    .restart local v14    # "j":I
    goto :goto_1

    .line 610
    :cond_1
    const-string v3, "config"

    move-object/from16 v0, v16

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 612
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 613
    .local v3, "ads":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/AdProvider;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 614
    .local v9, "gameConfigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/GameConfig;>;"
    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v8

    .line 615
    .local v8, "configs":Lorg/w3c/dom/NodeList;
    const/4 v4, 0x0

    .local v4, "k":I
    move v15, v4

    .end local v4    # "k":I
    .local v15, "k":I
    :goto_3
    invoke-interface {v8}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-ge v15, v4, :cond_1a

    .line 617
    invoke-interface {v8, v15}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 618
    .local v5, "configProperty":Lorg/w3c/dom/Node;
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    .line 619
    .local v4, "configPropertyName":Ljava/lang/String;
    const-string v6, "ads"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 620
    new-instance v4, Lcom/fusepowered/util/AdProvider;

    .end local v4    # "configPropertyName":Ljava/lang/String;
    invoke-direct {v4}, Lcom/fusepowered/util/AdProvider;-><init>()V

    .line 622
    .local v4, "ap":Lcom/fusepowered/util/AdProvider;
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v5

    .line 623
    .local v5, "apNodeList":Lorg/w3c/dom/NodeList;
    const/4 v6, 0x0

    .local v6, "h":I
    move v10, v6

    .end local v6    # "h":I
    .local v10, "h":I
    :goto_4
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-ge v10, v6, :cond_9

    .line 624
    invoke-interface {v5, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    .line 625
    .local v6, "apProperty":Lorg/w3c/dom/Node;
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v7

    .line 626
    .local v7, "attributes":Lorg/w3c/dom/NamedNodeMap;
    const-string v6, "provider_id"

    .end local v6    # "apProperty":Lorg/w3c/dom/Node;
    invoke-static {v7, v6}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 627
    .local v6, "attrValue":Ljava/lang/String;
    invoke-static {v6}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 628
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .end local v6    # "attrValue":Ljava/lang/String;
    invoke-virtual {v4, v6}, Lcom/fusepowered/util/AdProvider;->setProvider_id(I)V

    .line 629
    :cond_2
    const-string v6, "test"

    invoke-static {v7, v6}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 630
    .restart local v6    # "attrValue":Ljava/lang/String;
    invoke-static {v6}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    .end local v6    # "attrValue":Ljava/lang/String;
    if-nez v6, :cond_3

    .line 631
    const-string v6, "test"

    invoke-interface {v7, v6}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    const-string v12, "0"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    const/4 v6, 0x1

    :goto_5
    invoke-virtual {v4, v6}, Lcom/fusepowered/util/AdProvider;->setTest(Z)V

    .line 632
    :cond_3
    const-string v6, "value"

    invoke-static {v7, v6}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 633
    .restart local v6    # "attrValue":Ljava/lang/String;
    invoke-static {v6}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    .end local v6    # "attrValue":Ljava/lang/String;
    if-nez v6, :cond_4

    .line 634
    const-string v6, "value"

    invoke-interface {v7, v6}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/fusepowered/util/AdProvider;->setValue(I)V

    .line 635
    :cond_4
    const-string v6, "interstitial"

    invoke-static {v7, v6}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 636
    .restart local v6    # "attrValue":Ljava/lang/String;
    invoke-static {v6}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    .end local v6    # "attrValue":Ljava/lang/String;
    if-nez v6, :cond_5

    .line 637
    const-string v6, "interstitial"

    invoke-interface {v7, v6}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/fusepowered/util/AdProvider;->setInterstitial(I)V

    .line 638
    :cond_5
    const-string v6, "keywords"

    invoke-static {v7, v6}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 639
    .restart local v6    # "attrValue":Ljava/lang/String;
    invoke-static {v6}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    .end local v6    # "attrValue":Ljava/lang/String;
    if-nez v6, :cond_6

    .line 640
    const-string v6, "keywords"

    invoke-interface {v7, v6}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/fusepowered/util/AdProvider;->setKeywords(Ljava/lang/String;)V

    .line 641
    :cond_6
    const-string v6, "ids"

    invoke-static {v7, v6}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 642
    .restart local v6    # "attrValue":Ljava/lang/String;
    invoke-static {v6}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    .end local v6    # "attrValue":Ljava/lang/String;
    if-nez v6, :cond_7

    .line 643
    const-string v6, "ids"

    invoke-interface {v7, v6}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/fusepowered/util/AdProvider;->setIds(Ljava/lang/String;)V

    .line 623
    :cond_7
    add-int/lit8 v6, v10, 0x1

    .end local v10    # "h":I
    .local v6, "h":I
    move v10, v6

    .end local v6    # "h":I
    .restart local v10    # "h":I
    goto/16 :goto_4

    .line 631
    :cond_8
    const/4 v6, 0x0

    goto :goto_5

    .line 646
    .end local v7    # "attributes":Lorg/w3c/dom/NamedNodeMap;
    :cond_9
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 615
    .end local v4    # "ap":Lcom/fusepowered/util/AdProvider;
    .end local v5    # "apNodeList":Lorg/w3c/dom/NodeList;
    .end local v10    # "h":I
    :cond_a
    :goto_6
    add-int/lit8 v4, v15, 0x1

    .end local v15    # "k":I
    .local v4, "k":I
    move v15, v4

    .end local v4    # "k":I
    .restart local v15    # "k":I
    goto/16 :goto_3

    .line 648
    .local v4, "configPropertyName":Ljava/lang/String;
    .local v5, "configProperty":Lorg/w3c/dom/Node;
    :cond_b
    const-string v6, "game_config"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    .end local v4    # "configPropertyName":Ljava/lang/String;
    if-eqz v4, :cond_12

    .line 649
    new-instance v6, Lcom/fusepowered/util/GameConfig;

    invoke-direct {v6}, Lcom/fusepowered/util/GameConfig;-><init>()V

    .line 650
    .local v6, "gc":Lcom/fusepowered/util/GameConfig;
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v4

    .line 651
    .local v4, "attributes":Lorg/w3c/dom/NamedNodeMap;
    const-string v7, "id"

    invoke-static {v4, v7}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 652
    .local v4, "attrValue":Ljava/lang/String;
    invoke-static {v4}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_c

    .line 653
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .end local v4    # "attrValue":Ljava/lang/String;
    invoke-virtual {v6, v4}, Lcom/fusepowered/util/GameConfig;->setId(I)V

    .line 655
    :cond_c
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    .line 656
    .local v4, "gcNodeList":Lorg/w3c/dom/NodeList;
    const/4 v5, 0x0

    .local v5, "h":I
    move v10, v5

    .end local v5    # "h":I
    .restart local v10    # "h":I
    :goto_7
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-ge v10, v5, :cond_11

    .line 657
    invoke-interface {v4, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 658
    .local v5, "gcProperty":Lorg/w3c/dom/Node;
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    .line 659
    .local v7, "gcPropertyName":Ljava/lang/String;
    const-string v12, "key"

    invoke-virtual {v7, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_f

    .line 660
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v7

    .end local v7    # "gcPropertyName":Ljava/lang/String;
    if-eqz v7, :cond_e

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_e

    .line 661
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v5

    .end local v5    # "gcProperty":Lorg/w3c/dom/Node;
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/fusepowered/util/GameConfig;->setKey(Ljava/lang/String;)V

    .line 656
    :cond_d
    :goto_8
    add-int/lit8 v5, v10, 0x1

    .end local v10    # "h":I
    .local v5, "h":I
    move v10, v5

    .end local v5    # "h":I
    .restart local v10    # "h":I
    goto :goto_7

    .line 663
    .local v5, "gcProperty":Lorg/w3c/dom/Node;
    :cond_e
    const-string v5, ""

    .end local v5    # "gcProperty":Lorg/w3c/dom/Node;
    invoke-virtual {v6, v5}, Lcom/fusepowered/util/GameConfig;->setKey(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_8

    .line 715
    .end local v3    # "ads":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/AdProvider;>;"
    .end local v4    # "gcNodeList":Lorg/w3c/dom/NodeList;
    .end local v6    # "gc":Lcom/fusepowered/util/GameConfig;
    .end local v8    # "configs":Lorg/w3c/dom/NodeList;
    .end local v9    # "gameConfigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/GameConfig;>;"
    .end local v10    # "h":I
    .end local v11    # "i":I
    .end local v13    # "items":Lorg/w3c/dom/NodeList;
    .end local v14    # "j":I
    .end local v15    # "k":I
    .end local v16    # "name":Ljava/lang/String;
    .end local v17    # "properties":Lorg/w3c/dom/NodeList;
    .end local v18    # "property":Lorg/w3c/dom/Node;
    :catch_0
    move-exception p0

    .line 716
    .local p0, "e":Ljava/lang/Exception;
    throw p0

    .line 665
    .restart local v3    # "ads":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/AdProvider;>;"
    .restart local v4    # "gcNodeList":Lorg/w3c/dom/NodeList;
    .restart local v5    # "gcProperty":Lorg/w3c/dom/Node;
    .restart local v6    # "gc":Lcom/fusepowered/util/GameConfig;
    .restart local v7    # "gcPropertyName":Ljava/lang/String;
    .restart local v8    # "configs":Lorg/w3c/dom/NodeList;
    .restart local v9    # "gameConfigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/GameConfig;>;"
    .restart local v10    # "h":I
    .restart local v11    # "i":I
    .restart local v13    # "items":Lorg/w3c/dom/NodeList;
    .restart local v14    # "j":I
    .restart local v15    # "k":I
    .restart local v16    # "name":Ljava/lang/String;
    .restart local v17    # "properties":Lorg/w3c/dom/NodeList;
    .restart local v18    # "property":Lorg/w3c/dom/Node;
    .local p0, "xmlStr":Ljava/lang/String;
    :cond_f
    :try_start_1
    const-string v12, "value"

    invoke-virtual {v7, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    .end local v7    # "gcPropertyName":Ljava/lang/String;
    if-eqz v7, :cond_d

    .line 666
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v7

    if-eqz v7, :cond_10

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_10

    .line 667
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v5

    .end local v5    # "gcProperty":Lorg/w3c/dom/Node;
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/fusepowered/util/GameConfig;->setValue(Ljava/lang/String;)V

    goto :goto_8

    .line 669
    .restart local v5    # "gcProperty":Lorg/w3c/dom/Node;
    :cond_10
    const-string v5, ""

    .end local v5    # "gcProperty":Lorg/w3c/dom/Node;
    invoke-virtual {v6, v5}, Lcom/fusepowered/util/GameConfig;->setValue(Ljava/lang/String;)V

    goto :goto_8

    .line 672
    :cond_11
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 674
    .end local v4    # "gcNodeList":Lorg/w3c/dom/NodeList;
    .end local v6    # "gc":Lcom/fusepowered/util/GameConfig;
    .end local v10    # "h":I
    .local v5, "configProperty":Lorg/w3c/dom/Node;
    :cond_12
    const-string v4, "incentives"

    move-object/from16 v0, v16

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 676
    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v10

    .line 678
    .local v10, "incentiveNodeList":Lorg/w3c/dom/NodeList;
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 680
    .local v12, "incentives":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/Incentive;>;"
    const/4 v4, 0x0

    .local v4, "h":I
    move v6, v4

    .end local v4    # "h":I
    .end local v5    # "configProperty":Lorg/w3c/dom/Node;
    .local v6, "h":I
    :goto_9
    invoke-interface {v10}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-ge v6, v4, :cond_19

    .line 681
    new-instance v7, Lcom/fusepowered/util/Incentive;

    invoke-direct {v7}, Lcom/fusepowered/util/Incentive;-><init>()V

    .line 682
    .local v7, "incentive":Lcom/fusepowered/util/Incentive;
    invoke-interface {v10, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 683
    .local v4, "incentiveProperty":Lorg/w3c/dom/Node;
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    .line 684
    .local v5, "incentivePropertyName":Ljava/lang/String;
    const-string v19, "incentive"

    move-object v0, v5

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    .end local v5    # "incentivePropertyName":Ljava/lang/String;
    if-eqz v5, :cond_17

    .line 685
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v5

    .line 686
    .local v5, "dlcAttributes":Lorg/w3c/dom/NamedNodeMap;
    const-string v4, "incentive_id"

    .end local v4    # "incentiveProperty":Lorg/w3c/dom/Node;
    invoke-static {v5, v4}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 687
    .local v4, "attrValue":Ljava/lang/String;
    invoke-static {v4}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_13

    .line 688
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .end local v4    # "attrValue":Ljava/lang/String;
    invoke-virtual {v7, v4}, Lcom/fusepowered/util/Incentive;->setIncentiveId(I)V

    .line 689
    :cond_13
    const-string v4, "amount"

    invoke-static {v5, v4}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 690
    .restart local v4    # "attrValue":Ljava/lang/String;
    invoke-static {v4}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_14

    .line 691
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .end local v4    # "attrValue":Ljava/lang/String;
    invoke-virtual {v7, v4}, Lcom/fusepowered/util/Incentive;->setAmount(I)V

    .line 692
    :cond_14
    const-string v4, "reward_item_id"

    invoke-static {v5, v4}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 693
    .restart local v4    # "attrValue":Ljava/lang/String;
    invoke-static {v4}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_15

    .line 694
    invoke-virtual {v7, v4}, Lcom/fusepowered/util/Incentive;->setRewardItemId(Ljava/lang/String;)V

    .line 695
    :cond_15
    const-string v4, "reward_item_name"

    .end local v4    # "attrValue":Ljava/lang/String;
    invoke-static {v5, v4}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 696
    .restart local v4    # "attrValue":Ljava/lang/String;
    invoke-static {v4}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_16

    .line 697
    invoke-virtual {v7, v4}, Lcom/fusepowered/util/Incentive;->setRewardItemName(Ljava/lang/String;)V

    .line 698
    :cond_16
    const-string v4, "claim_confirmed"

    .end local v4    # "attrValue":Ljava/lang/String;
    invoke-static {v5, v4}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 699
    .restart local v4    # "attrValue":Ljava/lang/String;
    invoke-static {v4}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    .end local v5    # "dlcAttributes":Lorg/w3c/dom/NamedNodeMap;
    if-nez v5, :cond_17

    .line 700
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .end local v4    # "attrValue":Ljava/lang/String;
    if-eqz v4, :cond_18

    const/4 v4, 0x1

    :goto_a
    invoke-virtual {v7, v4}, Lcom/fusepowered/util/Incentive;->setClaimConfirmed(Z)V

    .line 702
    :cond_17
    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 680
    add-int/lit8 v4, v6, 0x1

    .end local v6    # "h":I
    .local v4, "h":I
    move v6, v4

    .end local v4    # "h":I
    .restart local v6    # "h":I
    goto/16 :goto_9

    .line 700
    :cond_18
    const/4 v4, 0x0

    goto :goto_a

    .line 705
    .end local v7    # "incentive":Lcom/fusepowered/util/Incentive;
    :cond_19
    move-object/from16 v0, p1

    move-object v1, v12

    invoke-virtual {v0, v1}, Lcom/fusepowered/util/ResponseValues;->setIncentives(Ljava/util/ArrayList;)V

    goto/16 :goto_6

    .line 709
    .end local v6    # "h":I
    .end local v10    # "incentiveNodeList":Lorg/w3c/dom/NodeList;
    .end local v12    # "incentives":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/Incentive;>;"
    :cond_1a
    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/fusepowered/util/ResponseValues;->setAds(Ljava/util/ArrayList;)V

    .line 710
    move-object/from16 v0, p1

    move-object v1, v9

    invoke-virtual {v0, v1}, Lcom/fusepowered/util/ResponseValues;->setGameConfigs(Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 601
    .end local v3    # "ads":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/AdProvider;>;"
    .end local v8    # "configs":Lorg/w3c/dom/NodeList;
    .end local v9    # "gameConfigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/GameConfig;>;"
    .end local v15    # "k":I
    .end local v16    # "name":Ljava/lang/String;
    .end local v18    # "property":Lorg/w3c/dom/Node;
    :cond_1b
    add-int/lit8 v3, v11, 0x1

    .end local v11    # "i":I
    .local v3, "i":I
    move v11, v3

    .end local v3    # "i":I
    .restart local v11    # "i":I
    goto/16 :goto_0

    .line 718
    .end local v14    # "j":I
    .end local v17    # "properties":Lorg/w3c/dom/NodeList;
    :cond_1c
    return-void
.end method

.method private static parseSessionStart(Ljava/lang/String;Lcom/fusepowered/util/ResponseValues;)V
    .locals 7
    .param p0, "xmlStr"    # Ljava/lang/String;
    .param p1, "responseValues"    # Lcom/fusepowered/util/ResponseValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 275
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v3

    .line 276
    .local v3, "f":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 277
    .local v0, "b":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v5, Ljava/io/ByteArrayInputStream;

    const-string v6, "UTF-8"

    invoke-virtual {p0, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v5}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v1

    .line 279
    .local v1, "doc":Lorg/w3c/dom/Document;
    const-string v5, "bootstrap"

    invoke-interface {v1, v5}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    .line 280
    .local v4, "items":Lorg/w3c/dom/NodeList;
    invoke-static {p1, v4}, Lcom/fusepowered/util/XMLParser;->parseSessionStart_Bootstrap(Lcom/fusepowered/util/ResponseValues;Lorg/w3c/dom/NodeList;)V

    .line 282
    const-string v5, "AD_REQUEST"

    invoke-interface {v1, v5}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    .line 283
    invoke-static {p1, v4}, Lcom/fusepowered/util/XMLParser;->parseAdContent(Lcom/fusepowered/util/ResponseValues;Lorg/w3c/dom/NodeList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    return-void

    .line 285
    .end local v0    # "b":Ljavax/xml/parsers/DocumentBuilder;
    .end local v1    # "doc":Lorg/w3c/dom/Document;
    .end local v3    # "f":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v4    # "items":Lorg/w3c/dom/NodeList;
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 286
    .local v2, "e":Ljava/lang/Exception;
    throw v2
.end method

.method private static parseSessionStart_Bootstrap(Lcom/fusepowered/util/ResponseValues;Lorg/w3c/dom/NodeList;)V
    .locals 14
    .param p0, "responseValues"    # Lcom/fusepowered/util/ResponseValues;
    .param p1, "items"    # Lorg/w3c/dom/NodeList;

    .prologue
    .line 292
    const/4 v0, 0x0

    .local v0, "i":I
    move v8, v0

    .end local v0    # "i":I
    .local v8, "i":I
    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge v8, v0, :cond_4b

    .line 293
    invoke-interface {p1, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    .line 295
    .local v9, "item":Lorg/w3c/dom/Node;
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v12

    .line 296
    .local v12, "properties":Lorg/w3c/dom/NodeList;
    const/4 v0, 0x0

    .local v0, "j":I
    move v10, v0

    .end local v0    # "j":I
    .local v10, "j":I
    :goto_1
    invoke-interface {v12}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge v10, v0, :cond_4a

    .line 297
    invoke-interface {v12, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 298
    .local v3, "property":Lorg/w3c/dom/Node;
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    .line 299
    .local v0, "name":Ljava/lang/String;
    const-string v1, "session_id"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 300
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    .end local v0    # "name":Ljava/lang/String;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fusepowered/util/ResponseValues;->setSessionId(Ljava/lang/String;)V

    .line 296
    .end local v3    # "property":Lorg/w3c/dom/Node;
    :cond_0
    :goto_2
    add-int/lit8 v0, v10, 0x1

    .end local v10    # "j":I
    .local v0, "j":I
    move v10, v0

    .end local v0    # "j":I
    .restart local v10    # "j":I
    goto :goto_1

    .line 302
    .local v0, "name":Ljava/lang/String;
    .restart local v3    # "property":Lorg/w3c/dom/Node;
    :cond_1
    const-string v1, "aid"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 303
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    .end local v0    # "name":Ljava/lang/String;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fusepowered/util/ResponseValues;->setApplifierId(Ljava/lang/String;)V

    .line 305
    const/4 v1, 0x0

    .line 308
    .local v1, "useImpact":Z
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    .line 309
    .local v0, "attributes":Lorg/w3c/dom/NamedNodeMap;
    if-eqz v0, :cond_4c

    .line 310
    const-string v2, "use_impact"

    invoke-interface {v0, v2}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 311
    .local v0, "useImpactNode":Lorg/w3c/dom/Node;
    if-eqz v0, :cond_4c

    .line 312
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    .end local v0    # "useImpactNode":Lorg/w3c/dom/Node;
    const-string v1, "use_impact"

    .end local v1    # "useImpact":Z
    invoke-interface {v0, v1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    .line 313
    .local v0, "useImpactValue":Ljava/lang/String;
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 317
    .local v0, "useImpact":Z
    :goto_3
    invoke-virtual {p0, v0}, Lcom/fusepowered/util/ResponseValues;->setApplifierUseImpact(Z)V

    .line 318
    const-string v1, "APPLIFIER"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-=-=-=-=-=-==-= USE IMPACT: "

    .end local v3    # "property":Lorg/w3c/dom/Node;
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v0, :cond_2

    const-string v0, "TRUE"

    .end local v0    # "useImpact":Z
    :goto_4
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .restart local v0    # "useImpact":Z
    :cond_2
    const-string v0, "FALSE"

    goto :goto_4

    .line 321
    .local v0, "name":Ljava/lang/String;
    .restart local v3    # "property":Lorg/w3c/dom/Node;
    :cond_3
    const-string v1, "vid"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 322
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    .end local v0    # "name":Ljava/lang/String;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fusepowered/util/ResponseValues;->setVungleId(Ljava/lang/String;)V

    goto :goto_2

    .line 324
    .restart local v0    # "name":Ljava/lang/String;
    :cond_4
    const-string v1, "disable_all"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 325
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    .end local v0    # "name":Ljava/lang/String;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x1

    :goto_5
    invoke-virtual {p0, v0}, Lcom/fusepowered/util/ResponseValues;->setDisableAll(Z)V

    goto/16 :goto_2

    :cond_5
    const/4 v0, 0x0

    goto :goto_5

    .line 327
    .restart local v0    # "name":Ljava/lang/String;
    :cond_6
    const-string v1, "disable_notifications"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 328
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    .end local v0    # "name":Ljava/lang/String;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const/4 v0, 0x1

    :goto_6
    invoke-virtual {p0, v0}, Lcom/fusepowered/util/ResponseValues;->setDisableNotifications(Z)V

    goto/16 :goto_2

    :cond_7
    const/4 v0, 0x0

    goto :goto_6

    .line 330
    .restart local v0    # "name":Ljava/lang/String;
    :cond_8
    const-string v1, "disable_configuration"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 331
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    .end local v0    # "name":Ljava/lang/String;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const/4 v0, 0x1

    :goto_7
    invoke-virtual {p0, v0}, Lcom/fusepowered/util/ResponseValues;->setDisableConfiguration(Z)V

    goto/16 :goto_2

    :cond_9
    const/4 v0, 0x0

    goto :goto_7

    .line 333
    .restart local v0    # "name":Ljava/lang/String;
    :cond_a
    const-string v1, "disable_analytics"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 334
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    .end local v0    # "name":Ljava/lang/String;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const/4 v0, 0x1

    :goto_8
    invoke-virtual {p0, v0}, Lcom/fusepowered/util/ResponseValues;->setDisableAnalytics(Z)V

    goto/16 :goto_2

    :cond_b
    const/4 v0, 0x0

    goto :goto_8

    .line 336
    .restart local v0    # "name":Ljava/lang/String;
    :cond_c
    const-string v1, "utc_time"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 337
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    .end local v0    # "name":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 338
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fusepowered/util/ResponseValues;->setTimestamp(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 340
    .restart local v0    # "name":Ljava/lang/String;
    :cond_d
    const-string v1, "user_city"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 341
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    .end local v0    # "name":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 342
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fusepowered/util/ResponseValues;->setUserCity(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 344
    .restart local v0    # "name":Ljava/lang/String;
    :cond_e
    const-string v1, "user_country"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 345
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    .end local v0    # "name":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 346
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fusepowered/util/ResponseValues;->setUserCountry(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 348
    .restart local v0    # "name":Ljava/lang/String;
    :cond_f
    const-string v1, "messages"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 349
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v7

    .line 350
    .local v7, "messages":Lorg/w3c/dom/NodeList;
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "property":Lorg/w3c/dom/Node;
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 351
    .local v3, "messageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/Message;>;"
    const/4 v0, 0x0

    .local v0, "k":I
    move v1, v0

    .end local v0    # "k":I
    .local v1, "k":I
    :goto_9
    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge v1, v0, :cond_19

    .line 352
    new-instance v2, Lcom/fusepowered/util/Message;

    invoke-direct {v2}, Lcom/fusepowered/util/Message;-><init>()V

    .line 353
    .local v2, "message":Lcom/fusepowered/util/Message;
    invoke-interface {v7, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 354
    .local v4, "messageNode":Lorg/w3c/dom/Node;
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    .line 355
    .local v0, "attributes":Lorg/w3c/dom/NamedNodeMap;
    const-string v5, "id"

    invoke-interface {v0, v5}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/fusepowered/util/Message;->setId(I)V

    .line 356
    const-string v5, "sticky"

    invoke-interface {v0, v5}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/fusepowered/util/Message;->setSticky(I)V

    .line 357
    const-string v5, "upgrade"

    invoke-interface {v0, v5}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_11

    const/4 v5, 0x1

    :goto_a
    invoke-virtual {v2, v5}, Lcom/fusepowered/util/Message;->setIsUpgrade(Z)V

    .line 358
    const-string v5, "max_views"

    invoke-interface {v0, v5}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v5

    if-eqz v5, :cond_12

    .line 359
    const-string v5, "max_views"

    invoke-interface {v0, v5}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/fusepowered/util/Message;->setMax_views(I)V

    .line 364
    :goto_b
    const-string v5, "show_on_view"

    invoke-interface {v0, v5}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/fusepowered/util/Message;->setShowOnView(I)V

    .line 365
    const-string v5, "is_url"

    invoke-interface {v0, v5}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v5

    if-eqz v5, :cond_13

    .line 366
    const-string v5, "is_url"

    invoke-interface {v0, v5}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/fusepowered/util/Message;->setIsUrl(I)V

    .line 371
    :goto_c
    const-string v5, "mandatory"

    invoke-interface {v0, v5}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v5

    if-eqz v5, :cond_14

    .line 372
    const-string v5, "mandatory"

    invoke-interface {v0, v5}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .end local v0    # "attributes":Lorg/w3c/dom/NamedNodeMap;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/fusepowered/util/Message;->setMandatory(I)V

    .line 377
    :goto_d
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcom/fusepowered/util/Message;->setDisplayed(Z)V

    .line 378
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcom/fusepowered/util/Message;->setClicked(Z)V

    .line 380
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    .line 381
    .local v4, "messageNodeList":Lorg/w3c/dom/NodeList;
    const/4 v0, 0x0

    .local v0, "h":I
    :goto_e
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-ge v0, v5, :cond_18

    .line 382
    invoke-interface {v4, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 383
    .local v5, "messageProperty":Lorg/w3c/dom/Node;
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    .line 384
    .local v6, "messagePropertyName":Ljava/lang/String;
    const-string v11, "title"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_15

    .line 385
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v5

    .end local v5    # "messageProperty":Lorg/w3c/dom/Node;
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/fusepowered/util/Message;->setTitle(Ljava/lang/String;)V

    .line 381
    .end local v6    # "messagePropertyName":Ljava/lang/String;
    :cond_10
    :goto_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 357
    .local v0, "attributes":Lorg/w3c/dom/NamedNodeMap;
    .local v4, "messageNode":Lorg/w3c/dom/Node;
    :cond_11
    const/4 v5, 0x0

    goto/16 :goto_a

    .line 362
    :cond_12
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/fusepowered/util/Message;->setMax_views(I)V

    goto :goto_b

    .line 369
    :cond_13
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lcom/fusepowered/util/Message;->setIsUrl(I)V

    goto :goto_c

    .line 375
    :cond_14
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcom/fusepowered/util/Message;->setMandatory(I)V

    goto :goto_d

    .line 387
    .local v0, "h":I
    .local v4, "messageNodeList":Lorg/w3c/dom/NodeList;
    .restart local v5    # "messageProperty":Lorg/w3c/dom/Node;
    .restart local v6    # "messagePropertyName":Ljava/lang/String;
    :cond_15
    const-string v11, "action"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_16

    .line 388
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v5

    .end local v5    # "messageProperty":Lorg/w3c/dom/Node;
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/fusepowered/util/Message;->setAction(Ljava/lang/String;)V

    goto :goto_f

    .line 390
    .restart local v5    # "messageProperty":Lorg/w3c/dom/Node;
    :cond_16
    const-string v11, "body"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_17

    .line 391
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v5

    .end local v5    # "messageProperty":Lorg/w3c/dom/Node;
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/fusepowered/util/Message;->setBody(Ljava/lang/String;)V

    goto :goto_f

    .line 393
    .restart local v5    # "messageProperty":Lorg/w3c/dom/Node;
    :cond_17
    const-string v11, "action_title"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    .end local v6    # "messagePropertyName":Ljava/lang/String;
    if-eqz v6, :cond_10

    .line 394
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v5

    .end local v5    # "messageProperty":Lorg/w3c/dom/Node;
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/fusepowered/util/Message;->setActionTtitle(Ljava/lang/String;)V

    goto :goto_f

    .line 397
    :cond_18
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 351
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "k":I
    .local v0, "k":I
    move v1, v0

    .end local v0    # "k":I
    .restart local v1    # "k":I
    goto/16 :goto_9

    .line 401
    .end local v2    # "message":Lcom/fusepowered/util/Message;
    .end local v4    # "messageNodeList":Lorg/w3c/dom/NodeList;
    :cond_19
    const/4 v2, 0x0

    .line 402
    .local v2, "temp":Lcom/fusepowered/util/Message;
    const/4 v1, 0x0

    .local v1, "start":I
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v4, 0x1

    sub-int/2addr v0, v4

    .local v0, "end":I
    :goto_10
    if-ge v1, v0, :cond_1a

    .line 404
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "temp":Lcom/fusepowered/util/Message;
    check-cast v2, Lcom/fusepowered/util/Message;

    .line 405
    .restart local v2    # "temp":Lcom/fusepowered/util/Message;
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 406
    invoke-virtual {v3, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 402
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_10

    .line 409
    :cond_1a
    invoke-virtual {p0, v3}, Lcom/fusepowered/util/ResponseValues;->setMessages(Ljava/util/ArrayList;)V

    goto/16 :goto_2

    .line 412
    .end local v1    # "start":I
    .end local v2    # "temp":Lcom/fusepowered/util/Message;
    .end local v7    # "messages":Lorg/w3c/dom/NodeList;
    .local v0, "name":Ljava/lang/String;
    .local v3, "property":Lorg/w3c/dom/Node;
    :cond_1b
    const-string v1, "config"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 413
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "name":Ljava/lang/String;
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 414
    .local v0, "ads":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/AdProvider;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 415
    .local v6, "gameConfigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/GameConfig;>;"
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v5

    .line 416
    .local v5, "configs":Lorg/w3c/dom/NodeList;
    const/4 v1, 0x0

    .local v1, "k":I
    move v11, v1

    .end local v1    # "k":I
    .end local v3    # "property":Lorg/w3c/dom/Node;
    .local v11, "k":I
    :goto_11
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v11, v1, :cond_2c

    .line 417
    invoke-interface {v5, v11}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 418
    .local v2, "configProperty":Lorg/w3c/dom/Node;
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    .line 419
    .local v1, "configPropertyName":Ljava/lang/String;
    const-string v3, "ads"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 420
    new-instance v1, Lcom/fusepowered/util/AdProvider;

    .end local v1    # "configPropertyName":Ljava/lang/String;
    invoke-direct {v1}, Lcom/fusepowered/util/AdProvider;-><init>()V

    .line 422
    .local v1, "ap":Lcom/fusepowered/util/AdProvider;
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 423
    .local v2, "apNodeList":Lorg/w3c/dom/NodeList;
    const/4 v3, 0x0

    .local v3, "h":I
    move v7, v3

    .end local v3    # "h":I
    .local v7, "h":I
    :goto_12
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v7, v3, :cond_23

    .line 424
    invoke-interface {v2, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 425
    .local v3, "apProperty":Lorg/w3c/dom/Node;
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v4

    .line 426
    .local v4, "attributes":Lorg/w3c/dom/NamedNodeMap;
    const-string v3, "provider_id"

    .end local v3    # "apProperty":Lorg/w3c/dom/Node;
    invoke-static {v4, v3}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 427
    .local v3, "attrValue":Ljava/lang/String;
    invoke-static {v3}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_1c

    .line 428
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .end local v3    # "attrValue":Ljava/lang/String;
    invoke-virtual {v1, v3}, Lcom/fusepowered/util/AdProvider;->setProvider_id(I)V

    .line 429
    :cond_1c
    const-string v3, "test"

    invoke-static {v4, v3}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 430
    .restart local v3    # "attrValue":Ljava/lang/String;
    invoke-static {v3}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    .end local v3    # "attrValue":Ljava/lang/String;
    if-nez v3, :cond_1d

    .line 431
    const-string v3, "test"

    invoke-interface {v4, v3}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    const-string v13, "0"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_22

    const/4 v3, 0x1

    :goto_13
    invoke-virtual {v1, v3}, Lcom/fusepowered/util/AdProvider;->setTest(Z)V

    .line 432
    :cond_1d
    const-string v3, "value"

    invoke-static {v4, v3}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 433
    .restart local v3    # "attrValue":Ljava/lang/String;
    invoke-static {v3}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    .end local v3    # "attrValue":Ljava/lang/String;
    if-nez v3, :cond_1e

    .line 434
    const-string v3, "value"

    invoke-interface {v4, v3}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/fusepowered/util/AdProvider;->setValue(I)V

    .line 435
    :cond_1e
    const-string v3, "interstitial"

    invoke-static {v4, v3}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 436
    .restart local v3    # "attrValue":Ljava/lang/String;
    invoke-static {v3}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    .end local v3    # "attrValue":Ljava/lang/String;
    if-nez v3, :cond_1f

    .line 437
    const-string v3, "interstitial"

    invoke-interface {v4, v3}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/fusepowered/util/AdProvider;->setInterstitial(I)V

    .line 438
    :cond_1f
    const-string v3, "keywords"

    invoke-static {v4, v3}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 439
    .restart local v3    # "attrValue":Ljava/lang/String;
    invoke-static {v3}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    .end local v3    # "attrValue":Ljava/lang/String;
    if-nez v3, :cond_20

    .line 440
    const-string v3, "keywords"

    invoke-interface {v4, v3}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/fusepowered/util/AdProvider;->setKeywords(Ljava/lang/String;)V

    .line 441
    :cond_20
    const-string v3, "ids"

    invoke-static {v4, v3}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 442
    .restart local v3    # "attrValue":Ljava/lang/String;
    invoke-static {v3}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    .end local v3    # "attrValue":Ljava/lang/String;
    if-nez v3, :cond_21

    .line 443
    const-string v3, "ids"

    invoke-interface {v4, v3}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/fusepowered/util/AdProvider;->setIds(Ljava/lang/String;)V

    .line 423
    :cond_21
    add-int/lit8 v3, v7, 0x1

    .end local v7    # "h":I
    .local v3, "h":I
    move v7, v3

    .end local v3    # "h":I
    .restart local v7    # "h":I
    goto/16 :goto_12

    .line 431
    :cond_22
    const/4 v3, 0x0

    goto :goto_13

    .line 446
    .end local v4    # "attributes":Lorg/w3c/dom/NamedNodeMap;
    :cond_23
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 416
    .end local v1    # "ap":Lcom/fusepowered/util/AdProvider;
    .end local v2    # "apNodeList":Lorg/w3c/dom/NodeList;
    .end local v7    # "h":I
    :cond_24
    :goto_14
    add-int/lit8 v1, v11, 0x1

    .end local v11    # "k":I
    .local v1, "k":I
    move v11, v1

    .end local v1    # "k":I
    .restart local v11    # "k":I
    goto/16 :goto_11

    .line 448
    .local v1, "configPropertyName":Ljava/lang/String;
    .local v2, "configProperty":Lorg/w3c/dom/Node;
    :cond_25
    const-string v3, "game_config"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    .end local v1    # "configPropertyName":Ljava/lang/String;
    if-eqz v1, :cond_24

    .line 449
    new-instance v3, Lcom/fusepowered/util/GameConfig;

    invoke-direct {v3}, Lcom/fusepowered/util/GameConfig;-><init>()V

    .line 450
    .local v3, "gc":Lcom/fusepowered/util/GameConfig;
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    .line 451
    .local v1, "attributes":Lorg/w3c/dom/NamedNodeMap;
    const-string v4, "id"

    invoke-static {v1, v4}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 452
    .local v1, "attrValue":Ljava/lang/String;
    invoke-static {v1}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_26

    .line 453
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .end local v1    # "attrValue":Ljava/lang/String;
    invoke-virtual {v3, v1}, Lcom/fusepowered/util/GameConfig;->setId(I)V

    .line 455
    :cond_26
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 456
    .local v1, "gcNodeList":Lorg/w3c/dom/NodeList;
    const/4 v2, 0x0

    .local v2, "h":I
    move v7, v2

    .end local v2    # "h":I
    .restart local v7    # "h":I
    :goto_15
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v7, v2, :cond_2b

    .line 457
    invoke-interface {v1, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 458
    .local v2, "gcProperty":Lorg/w3c/dom/Node;
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    .line 459
    .local v4, "gcPropertyName":Ljava/lang/String;
    const-string v13, "key"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_29

    .line 460
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v4

    .end local v4    # "gcPropertyName":Ljava/lang/String;
    if-eqz v4, :cond_28

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_28

    .line 461
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    .end local v2    # "gcProperty":Lorg/w3c/dom/Node;
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/fusepowered/util/GameConfig;->setKey(Ljava/lang/String;)V

    .line 456
    :cond_27
    :goto_16
    add-int/lit8 v2, v7, 0x1

    .end local v7    # "h":I
    .local v2, "h":I
    move v7, v2

    .end local v2    # "h":I
    .restart local v7    # "h":I
    goto :goto_15

    .line 463
    .local v2, "gcProperty":Lorg/w3c/dom/Node;
    :cond_28
    const-string v2, ""

    .end local v2    # "gcProperty":Lorg/w3c/dom/Node;
    invoke-virtual {v3, v2}, Lcom/fusepowered/util/GameConfig;->setKey(Ljava/lang/String;)V

    goto :goto_16

    .line 465
    .restart local v2    # "gcProperty":Lorg/w3c/dom/Node;
    .restart local v4    # "gcPropertyName":Ljava/lang/String;
    :cond_29
    const-string v13, "value"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    .end local v4    # "gcPropertyName":Ljava/lang/String;
    if-eqz v4, :cond_27

    .line 466
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v4

    if-eqz v4, :cond_2a

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2a

    .line 467
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    .end local v2    # "gcProperty":Lorg/w3c/dom/Node;
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/fusepowered/util/GameConfig;->setValue(Ljava/lang/String;)V

    goto :goto_16

    .line 469
    .restart local v2    # "gcProperty":Lorg/w3c/dom/Node;
    :cond_2a
    const-string v2, ""

    .end local v2    # "gcProperty":Lorg/w3c/dom/Node;
    invoke-virtual {v3, v2}, Lcom/fusepowered/util/GameConfig;->setValue(Ljava/lang/String;)V

    goto :goto_16

    .line 472
    :cond_2b
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_14

    .line 476
    .end local v1    # "gcNodeList":Lorg/w3c/dom/NodeList;
    .end local v3    # "gc":Lcom/fusepowered/util/GameConfig;
    .end local v7    # "h":I
    :cond_2c
    invoke-virtual {p0, v0}, Lcom/fusepowered/util/ResponseValues;->setAds(Ljava/util/ArrayList;)V

    .line 477
    invoke-virtual {p0, v6}, Lcom/fusepowered/util/ResponseValues;->setGameConfigs(Ljava/util/ArrayList;)V

    goto/16 :goto_2

    .line 480
    .end local v5    # "configs":Lorg/w3c/dom/NodeList;
    .end local v6    # "gameConfigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/GameConfig;>;"
    .end local v11    # "k":I
    .local v0, "name":Ljava/lang/String;
    .local v3, "property":Lorg/w3c/dom/Node;
    :cond_2d
    const-string v1, "dlc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 482
    new-instance v2, Lcom/fusepowered/util/DLC;

    invoke-direct {v2}, Lcom/fusepowered/util/DLC;-><init>()V

    .line 484
    .local v2, "dlc":Lcom/fusepowered/util/DLC;
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    .line 485
    .local v1, "attributes":Lorg/w3c/dom/NamedNodeMap;
    const-string v0, "bytes"

    .end local v0    # "name":Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 486
    .local v0, "attrValue":Ljava/lang/String;
    invoke-static {v0}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2e

    .line 487
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .end local v0    # "attrValue":Ljava/lang/String;
    invoke-virtual {v2, v0}, Lcom/fusepowered/util/DLC;->setBytes(I)V

    .line 488
    :cond_2e
    const-string v0, "content_id"

    invoke-static {v1, v0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 489
    .restart local v0    # "attrValue":Ljava/lang/String;
    invoke-static {v0}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2f

    .line 490
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .end local v0    # "attrValue":Ljava/lang/String;
    invoke-virtual {v2, v0}, Lcom/fusepowered/util/DLC;->setContentId(I)V

    .line 491
    :cond_2f
    const-string v0, "id"

    invoke-static {v1, v0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 492
    .restart local v0    # "attrValue":Ljava/lang/String;
    invoke-static {v0}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_30

    .line 493
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .end local v0    # "attrValue":Ljava/lang/String;
    invoke-virtual {v2, v0}, Lcom/fusepowered/util/DLC;->setId(I)V

    .line 494
    :cond_30
    const-string v0, "num_files"

    invoke-static {v1, v0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 495
    .restart local v0    # "attrValue":Ljava/lang/String;
    invoke-static {v0}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_31

    .line 496
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .end local v0    # "attrValue":Ljava/lang/String;
    invoke-virtual {v2, v0}, Lcom/fusepowered/util/DLC;->setNumFiles(I)V

    .line 497
    :cond_31
    const-string v0, "product_id"

    invoke-static {v1, v0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 498
    .restart local v0    # "attrValue":Ljava/lang/String;
    invoke-static {v0}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_32

    .line 499
    invoke-virtual {v2, v0}, Lcom/fusepowered/util/DLC;->setProductId(Ljava/lang/String;)V

    .line 500
    :cond_32
    const-string v0, "update"

    .end local v0    # "attrValue":Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 501
    .restart local v0    # "attrValue":Ljava/lang/String;
    invoke-static {v0}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    .end local v1    # "attributes":Lorg/w3c/dom/NamedNodeMap;
    if-nez v1, :cond_33

    .line 502
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3d

    const/4 v1, 0x1

    :goto_17
    invoke-virtual {v2, v1}, Lcom/fusepowered/util/DLC;->setUpdate(Z)V

    .line 504
    :cond_33
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v5

    .line 506
    .local v5, "dlcNodeList":Lorg/w3c/dom/NodeList;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 508
    .local v4, "dlcContents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/DlcContent;>;"
    const/4 v1, 0x0

    .local v1, "h":I
    move v7, v1

    .end local v1    # "h":I
    .end local v3    # "property":Lorg/w3c/dom/Node;
    .restart local v7    # "h":I
    :goto_18
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v7, v1, :cond_40

    .line 509
    new-instance v3, Lcom/fusepowered/util/DlcContent;

    invoke-direct {v3}, Lcom/fusepowered/util/DlcContent;-><init>()V

    .line 510
    .local v3, "dlcContent":Lcom/fusepowered/util/DlcContent;
    invoke-interface {v5, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 511
    .local v1, "dlcProperty":Lorg/w3c/dom/Node;
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    .line 512
    .local v6, "dlcPropertyName":Ljava/lang/String;
    const-string v11, "dlc_content"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    .end local v6    # "dlcPropertyName":Ljava/lang/String;
    if-eqz v6, :cond_3c

    .line 513
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    .line 514
    .local v1, "dlcAttributes":Lorg/w3c/dom/NamedNodeMap;
    const-string v0, "bytes"

    .end local v0    # "attrValue":Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 515
    .restart local v0    # "attrValue":Ljava/lang/String;
    invoke-static {v0}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_34

    .line 516
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .end local v0    # "attrValue":Ljava/lang/String;
    invoke-virtual {v3, v0}, Lcom/fusepowered/util/DlcContent;->setBytes(I)V

    .line 517
    :cond_34
    const-string v0, "content_id"

    invoke-static {v1, v0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 518
    .restart local v0    # "attrValue":Ljava/lang/String;
    invoke-static {v0}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_35

    .line 519
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .end local v0    # "attrValue":Ljava/lang/String;
    invoke-virtual {v3, v0}, Lcom/fusepowered/util/DlcContent;->setContentId(I)V

    .line 520
    :cond_35
    const-string v0, "downloadpath"

    invoke-static {v1, v0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 521
    .restart local v0    # "attrValue":Ljava/lang/String;
    invoke-static {v0}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_36

    .line 522
    invoke-virtual {v3, v0}, Lcom/fusepowered/util/DlcContent;->setDownloadPath(Ljava/lang/String;)V

    .line 523
    :cond_36
    const-string v0, "id"

    .end local v0    # "attrValue":Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 524
    .restart local v0    # "attrValue":Ljava/lang/String;
    invoke-static {v0}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_37

    .line 525
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .end local v0    # "attrValue":Ljava/lang/String;
    invoke-virtual {v3, v0}, Lcom/fusepowered/util/DlcContent;->setId(I)V

    .line 526
    :cond_37
    const-string v0, "md5"

    invoke-static {v1, v0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 527
    .restart local v0    # "attrValue":Ljava/lang/String;
    invoke-static {v0}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_38

    .line 528
    invoke-virtual {v3, v0}, Lcom/fusepowered/util/DlcContent;->setMd5(Ljava/lang/String;)V

    .line 529
    :cond_38
    const-string v0, "parent_id"

    .end local v0    # "attrValue":Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 530
    .restart local v0    # "attrValue":Ljava/lang/String;
    invoke-static {v0}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_39

    .line 531
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .end local v0    # "attrValue":Ljava/lang/String;
    invoke-virtual {v3, v0}, Lcom/fusepowered/util/DlcContent;->setParentId(I)V

    .line 532
    :cond_39
    const-string v0, "purchased"

    invoke-static {v1, v0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 533
    .restart local v0    # "attrValue":Ljava/lang/String;
    invoke-static {v0}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3a

    .line 534
    const-string v6, "0"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .end local v0    # "attrValue":Ljava/lang/String;
    if-nez v0, :cond_3e

    const/4 v0, 0x1

    :goto_19
    invoke-virtual {v3, v0}, Lcom/fusepowered/util/DlcContent;->setPurchased(Z)V

    .line 535
    :cond_3a
    const-string v0, "auto_download"

    invoke-static {v1, v0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 536
    .restart local v0    # "attrValue":Ljava/lang/String;
    invoke-static {v0}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3b

    .line 537
    const-string v6, "0"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .end local v0    # "attrValue":Ljava/lang/String;
    if-nez v0, :cond_3f

    const/4 v0, 0x1

    :goto_1a
    invoke-virtual {v3, v0}, Lcom/fusepowered/util/DlcContent;->setAutoDownload(Z)V

    .line 538
    :cond_3b
    const-string v0, "product_id"

    invoke-static {v1, v0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 539
    .restart local v0    # "attrValue":Ljava/lang/String;
    invoke-static {v0}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    .end local v1    # "dlcAttributes":Lorg/w3c/dom/NamedNodeMap;
    if-nez v1, :cond_3c

    .line 540
    invoke-virtual {v3, v0}, Lcom/fusepowered/util/DlcContent;->setProductId(Ljava/lang/String;)V

    .line 542
    :cond_3c
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 508
    add-int/lit8 v1, v7, 0x1

    .end local v7    # "h":I
    .local v1, "h":I
    move v7, v1

    .end local v1    # "h":I
    .restart local v7    # "h":I
    goto/16 :goto_18

    .line 502
    .end local v4    # "dlcContents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/DlcContent;>;"
    .end local v5    # "dlcNodeList":Lorg/w3c/dom/NodeList;
    .end local v7    # "h":I
    .local v3, "property":Lorg/w3c/dom/Node;
    :cond_3d
    const/4 v1, 0x0

    goto/16 :goto_17

    .line 534
    .end local v0    # "attrValue":Ljava/lang/String;
    .local v1, "dlcAttributes":Lorg/w3c/dom/NamedNodeMap;
    .local v3, "dlcContent":Lcom/fusepowered/util/DlcContent;
    .restart local v4    # "dlcContents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/DlcContent;>;"
    .restart local v5    # "dlcNodeList":Lorg/w3c/dom/NodeList;
    .restart local v7    # "h":I
    :cond_3e
    const/4 v0, 0x0

    goto :goto_19

    .line 537
    :cond_3f
    const/4 v0, 0x0

    goto :goto_1a

    .line 544
    .end local v1    # "dlcAttributes":Lorg/w3c/dom/NamedNodeMap;
    .end local v3    # "dlcContent":Lcom/fusepowered/util/DlcContent;
    .restart local v0    # "attrValue":Ljava/lang/String;
    :cond_40
    invoke-virtual {v2, v4}, Lcom/fusepowered/util/DLC;->setDlcContents(Ljava/util/ArrayList;)V

    .line 546
    invoke-virtual {p0}, Lcom/fusepowered/util/ResponseValues;->getDlc()Ljava/util/ArrayList;

    move-result-object v0

    .line 548
    .local v0, "dlcs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/DLC;>;"
    if-nez v0, :cond_41

    .line 549
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "dlcs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/DLC;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 552
    .restart local v0    # "dlcs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/DLC;>;"
    :cond_41
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 554
    invoke-virtual {p0, v0}, Lcom/fusepowered/util/ResponseValues;->setDlc(Ljava/util/ArrayList;)V

    goto/16 :goto_2

    .line 556
    .end local v2    # "dlc":Lcom/fusepowered/util/DLC;
    .end local v4    # "dlcContents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/DlcContent;>;"
    .end local v5    # "dlcNodeList":Lorg/w3c/dom/NodeList;
    .end local v7    # "h":I
    .local v0, "name":Ljava/lang/String;
    .local v3, "property":Lorg/w3c/dom/Node;
    :cond_42
    const-string v1, "incentives"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .end local v0    # "name":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 558
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    .line 560
    .local v4, "incentiveNodeList":Lorg/w3c/dom/NodeList;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 562
    .local v5, "incentives":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/Incentive;>;"
    const/4 v0, 0x0

    .local v0, "h":I
    move v2, v0

    .end local v0    # "h":I
    .end local v3    # "property":Lorg/w3c/dom/Node;
    .local v2, "h":I
    :goto_1b
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge v2, v0, :cond_49

    .line 563
    new-instance v3, Lcom/fusepowered/util/Incentive;

    invoke-direct {v3}, Lcom/fusepowered/util/Incentive;-><init>()V

    .line 564
    .local v3, "incentive":Lcom/fusepowered/util/Incentive;
    invoke-interface {v4, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 565
    .local v0, "incentiveProperty":Lorg/w3c/dom/Node;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    .line 566
    .local v1, "incentivePropertyName":Ljava/lang/String;
    const-string v6, "incentive"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    .end local v1    # "incentivePropertyName":Ljava/lang/String;
    if-eqz v1, :cond_47

    .line 567
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    .line 568
    .local v1, "dlcAttributes":Lorg/w3c/dom/NamedNodeMap;
    const-string v0, "incentive_id"

    .end local v0    # "incentiveProperty":Lorg/w3c/dom/Node;
    invoke-static {v1, v0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 569
    .local v0, "attrValue":Ljava/lang/String;
    invoke-static {v0}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_43

    .line 570
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .end local v0    # "attrValue":Ljava/lang/String;
    invoke-virtual {v3, v0}, Lcom/fusepowered/util/Incentive;->setIncentiveId(I)V

    .line 571
    :cond_43
    const-string v0, "amount"

    invoke-static {v1, v0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 572
    .restart local v0    # "attrValue":Ljava/lang/String;
    invoke-static {v0}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_44

    .line 573
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .end local v0    # "attrValue":Ljava/lang/String;
    invoke-virtual {v3, v0}, Lcom/fusepowered/util/Incentive;->setAmount(I)V

    .line 574
    :cond_44
    const-string v0, "reward_item_id"

    invoke-static {v1, v0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 575
    .restart local v0    # "attrValue":Ljava/lang/String;
    invoke-static {v0}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_45

    .line 576
    invoke-virtual {v3, v0}, Lcom/fusepowered/util/Incentive;->setRewardItemId(Ljava/lang/String;)V

    .line 577
    :cond_45
    const-string v0, "reward_item_name"

    .end local v0    # "attrValue":Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 578
    .restart local v0    # "attrValue":Ljava/lang/String;
    invoke-static {v0}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_46

    .line 579
    invoke-virtual {v3, v0}, Lcom/fusepowered/util/Incentive;->setRewardItemName(Ljava/lang/String;)V

    .line 580
    :cond_46
    const-string v0, "claim_confirmed"

    .end local v0    # "attrValue":Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 581
    .restart local v0    # "attrValue":Ljava/lang/String;
    invoke-static {v0}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    .end local v1    # "dlcAttributes":Lorg/w3c/dom/NamedNodeMap;
    if-nez v1, :cond_47

    .line 582
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .end local v0    # "attrValue":Ljava/lang/String;
    if-eqz v0, :cond_48

    const/4 v0, 0x1

    :goto_1c
    invoke-virtual {v3, v0}, Lcom/fusepowered/util/Incentive;->setClaimConfirmed(Z)V

    .line 584
    :cond_47
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 562
    add-int/lit8 v0, v2, 0x1

    .end local v2    # "h":I
    .local v0, "h":I
    move v2, v0

    .end local v0    # "h":I
    .restart local v2    # "h":I
    goto :goto_1b

    .line 582
    :cond_48
    const/4 v0, 0x0

    goto :goto_1c

    .line 587
    .end local v3    # "incentive":Lcom/fusepowered/util/Incentive;
    :cond_49
    invoke-virtual {p0, v5}, Lcom/fusepowered/util/ResponseValues;->setIncentives(Ljava/util/ArrayList;)V

    goto/16 :goto_2

    .line 292
    .end local v2    # "h":I
    .end local v4    # "incentiveNodeList":Lorg/w3c/dom/NodeList;
    .end local v5    # "incentives":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/Incentive;>;"
    :cond_4a
    add-int/lit8 v0, v8, 0x1

    .end local v8    # "i":I
    .local v0, "i":I
    move v8, v0

    .end local v0    # "i":I
    .restart local v8    # "i":I
    goto/16 :goto_0

    .line 591
    .end local v9    # "item":Lorg/w3c/dom/Node;
    .end local v10    # "j":I
    .end local v12    # "properties":Lorg/w3c/dom/NodeList;
    :cond_4b
    return-void

    .local v1, "useImpact":Z
    .local v3, "property":Lorg/w3c/dom/Node;
    .restart local v9    # "item":Lorg/w3c/dom/Node;
    .restart local v10    # "j":I
    .restart local v12    # "properties":Lorg/w3c/dom/NodeList;
    :cond_4c
    move v0, v1

    .end local v1    # "useImpact":Z
    .local v0, "useImpact":Z
    goto/16 :goto_3
.end method

.method private static parseSetGamedata(Ljava/lang/String;Lcom/fusepowered/util/ResponseValues;I)Z
    .locals 12
    .param p0, "xmlStr"    # Ljava/lang/String;
    .param p1, "responseValues"    # Lcom/fusepowered/util/ResponseValues;
    .param p2, "targetRequestId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 982
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v6

    .line 983
    .local v6, "f":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v6}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    .line 984
    .local v2, "b":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v10, Ljava/io/ByteArrayInputStream;

    const-string v11, "UTF-8"

    invoke-virtual {p0, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v2, v10}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v4

    .line 985
    .local v4, "doc":Lorg/w3c/dom/Document;
    const-string v10, "set_game_data"

    invoke-interface {v4, v10}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v9

    .line 987
    .local v9, "items":Lorg/w3c/dom/NodeList;
    const/4 v3, 0x0

    .line 988
    .local v3, "currentRequestId":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    invoke-interface {v9}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v10

    if-ge v7, v10, :cond_2

    .line 989
    invoke-interface {v9, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    .line 990
    .local v8, "item":Lorg/w3c/dom/Node;
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    .line 992
    .local v1, "attributes":Lorg/w3c/dom/NamedNodeMap;
    const-string v10, "reqID"

    invoke-static {v1, v10}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 993
    .local v0, "attrValue":Ljava/lang/String;
    invoke-static {v0}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 994
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 996
    :cond_0
    if-ne v3, p2, :cond_1

    .line 997
    const/4 v10, 0x1

    .line 1004
    .end local v0    # "attrValue":Ljava/lang/String;
    .end local v1    # "attributes":Lorg/w3c/dom/NamedNodeMap;
    .end local v8    # "item":Lorg/w3c/dom/Node;
    :goto_1
    return v10

    .line 988
    .restart local v0    # "attrValue":Ljava/lang/String;
    .restart local v1    # "attributes":Lorg/w3c/dom/NamedNodeMap;
    .restart local v8    # "item":Lorg/w3c/dom/Node;
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1001
    .end local v0    # "attrValue":Ljava/lang/String;
    .end local v1    # "attributes":Lorg/w3c/dom/NamedNodeMap;
    .end local v2    # "b":Ljavax/xml/parsers/DocumentBuilder;
    .end local v3    # "currentRequestId":I
    .end local v4    # "doc":Lorg/w3c/dom/Document;
    .end local v6    # "f":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v7    # "i":I
    .end local v8    # "item":Lorg/w3c/dom/Node;
    .end local v9    # "items":Lorg/w3c/dom/NodeList;
    :catch_0
    move-exception v10

    move-object v5, v10

    .line 1002
    .local v5, "e":Ljava/lang/Exception;
    throw v5

    .line 1004
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v2    # "b":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v3    # "currentRequestId":I
    .restart local v4    # "doc":Lorg/w3c/dom/Document;
    .restart local v6    # "f":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v7    # "i":I
    .restart local v9    # "items":Lorg/w3c/dom/NodeList;
    :cond_2
    const/4 v10, 0x0

    goto :goto_1
.end method

.method private static parseSignPost(Ljava/lang/String;Lcom/fusepowered/util/ResponseValues;)V
    .locals 9
    .param p0, "xmlStr"    # Ljava/lang/String;
    .param p1, "responseValues"    # Lcom/fusepowered/util/ResponseValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1330
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    .line 1331
    .local v0, "f":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 1332
    .local v0, "b":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v1, Ljava/io/ByteArrayInputStream;

    const-string v2, "UTF-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    .end local p0    # "xmlStr":Ljava/lang/String;
    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object p0

    .line 1333
    .local p0, "doc":Lorg/w3c/dom/Document;
    const-string v0, "sign_posts"

    .end local v0    # "b":Ljavax/xml/parsers/DocumentBuilder;
    invoke-interface {p0, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 1335
    .local v2, "items":Lorg/w3c/dom/NodeList;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1337
    .local v7, "signPosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/SignPost;>;"
    const/4 p0, 0x0

    .local p0, "i":I
    move v1, p0

    .end local p0    # "i":I
    .local v1, "i":I
    :goto_0
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result p0

    if-ge v1, p0, :cond_7

    .line 1338
    invoke-interface {v2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p0

    .line 1339
    .local p0, "item":Lorg/w3c/dom/Node;
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v6

    .line 1340
    .local v6, "signPostList":Lorg/w3c/dom/NodeList;
    const/4 p0, 0x0

    .local p0, "j":I
    move v3, p0

    .end local p0    # "j":I
    .local v3, "j":I
    :goto_1
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result p0

    if-ge v3, p0, :cond_6

    .line 1341
    new-instance v4, Lcom/fusepowered/util/SignPost;

    invoke-direct {v4}, Lcom/fusepowered/util/SignPost;-><init>()V

    .line 1342
    .local v4, "signPost":Lcom/fusepowered/util/SignPost;
    invoke-interface {v6, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 1343
    .local v5, "signPostItem":Lorg/w3c/dom/Node;
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    .line 1344
    .local v0, "attributes":Lorg/w3c/dom/NamedNodeMap;
    const-string p0, "id"

    invoke-static {v0, p0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1345
    .local p0, "attrValue":Ljava/lang/String;
    invoke-static {p0}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1346
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .end local p0    # "attrValue":Ljava/lang/String;
    invoke-virtual {v4, p0}, Lcom/fusepowered/util/SignPost;->setId(I)V

    .line 1347
    :cond_0
    const-string p0, "alias"

    invoke-static {v0, p0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1348
    .restart local p0    # "attrValue":Ljava/lang/String;
    invoke-static {p0}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 1349
    invoke-static {p0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p0

    .end local p0    # "attrValue":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Lcom/fusepowered/util/SignPost;->setAlias(Ljava/lang/String;)V

    .line 1350
    :cond_1
    const-string p0, "from_user"

    invoke-static {v0, p0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1351
    .restart local p0    # "attrValue":Ljava/lang/String;
    invoke-static {p0}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 1352
    invoke-virtual {v4, p0}, Lcom/fusepowered/util/SignPost;->setFuseId(Ljava/lang/String;)V

    .line 1353
    :cond_2
    const-string p0, "time"

    .end local p0    # "attrValue":Ljava/lang/String;
    invoke-static {v0, p0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1354
    .restart local p0    # "attrValue":Ljava/lang/String;
    invoke-static {p0}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 1355
    invoke-virtual {v4, p0}, Lcom/fusepowered/util/SignPost;->setDate(Ljava/lang/String;)V

    .line 1356
    :cond_3
    const-string p0, "url"

    .end local p0    # "attrValue":Ljava/lang/String;
    invoke-static {v0, p0}, Lcom/fusepowered/util/XMLParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1357
    .restart local p0    # "attrValue":Ljava/lang/String;
    invoke-static {p0}, Lcom/fusepowered/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    .end local v0    # "attributes":Lorg/w3c/dom/NamedNodeMap;
    if-nez v0, :cond_4

    .line 1358
    invoke-virtual {v4, p0}, Lcom/fusepowered/util/SignPost;->setUrl(Ljava/lang/String;)V

    .line 1360
    :cond_4
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object p0

    .end local p0    # "attrValue":Ljava/lang/String;
    if-eqz p0, :cond_5

    .line 1361
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object p0

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Lcom/fusepowered/util/SignPost;->setMessage(Ljava/lang/String;)V

    .line 1364
    :cond_5
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1340
    add-int/lit8 p0, v3, 0x1

    .end local v3    # "j":I
    .local p0, "j":I
    move v3, p0

    .end local p0    # "j":I
    .restart local v3    # "j":I
    goto/16 :goto_1

    .line 1337
    .end local v4    # "signPost":Lcom/fusepowered/util/SignPost;
    .end local v5    # "signPostItem":Lorg/w3c/dom/Node;
    :cond_6
    add-int/lit8 p0, v1, 0x1

    .end local v1    # "i":I
    .local p0, "i":I
    move v1, p0

    .end local p0    # "i":I
    .restart local v1    # "i":I
    goto/16 :goto_0

    .line 1369
    .end local v3    # "j":I
    .end local v6    # "signPostList":Lorg/w3c/dom/NodeList;
    :cond_7
    invoke-virtual {p1, v7}, Lcom/fusepowered/util/ResponseValues;->setSignPosts(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1376
    return-void

    .line 1372
    .end local v1    # "i":I
    .end local v2    # "items":Lorg/w3c/dom/NodeList;
    .end local v7    # "signPosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/util/SignPost;>;"
    :catch_0
    move-exception p0

    .line 1373
    .local p0, "e":Ljava/lang/Exception;
    throw p0
.end method

.method private static readTagValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "xmlStr"    # Ljava/lang/String;
    .param p1, "tagName"    # Ljava/lang/String;
    .param p2, "parentTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 241
    const-string v1, ""

    .line 243
    .local v1, "value":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    .line 244
    .local v0, "f":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 245
    .local v0, "b":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v2, Ljava/io/ByteArrayInputStream;

    const-string v3, "UTF-8"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    .end local p0    # "xmlStr":Ljava/lang/String;
    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v2}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object p0

    .line 246
    .local p0, "doc":Lorg/w3c/dom/Document;
    invoke-interface {p0, p2}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 247
    .local v0, "items":Lorg/w3c/dom/NodeList;
    const/4 p0, 0x0

    .end local p2    # "parentTag":Ljava/lang/String;
    .local p0, "i":I
    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result p2

    if-ge p0, p2, :cond_1

    .line 248
    invoke-interface {v0, p0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p2

    .line 249
    .local p2, "item":Lorg/w3c/dom/Node;
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 250
    .local v2, "properties":Lorg/w3c/dom/NodeList;
    const/4 p2, 0x0

    .local p2, "j":I
    move-object v4, v1

    .end local v1    # "value":Ljava/lang/String;
    .local v4, "value":Ljava/lang/String;
    :goto_1
    :try_start_1
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge p2, v1, :cond_0

    .line 251
    invoke-interface {v2, p2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 252
    .local v3, "property":Lorg/w3c/dom/Node;
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    .line 253
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    .end local v1    # "name":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 254
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 250
    .end local v4    # "value":Ljava/lang/String;
    .local v1, "value":Ljava/lang/String;
    :goto_2
    add-int/lit8 p2, p2, 0x1

    move-object v4, v1

    .end local v1    # "value":Ljava/lang/String;
    .restart local v4    # "value":Ljava/lang/String;
    goto :goto_1

    .line 247
    .end local v3    # "property":Lorg/w3c/dom/Node;
    :cond_0
    add-int/lit8 p0, p0, 0x1

    move-object v1, v4

    .end local v4    # "value":Ljava/lang/String;
    .restart local v1    # "value":Ljava/lang/String;
    goto :goto_0

    .line 259
    .end local v0    # "items":Lorg/w3c/dom/NodeList;
    .end local v2    # "properties":Lorg/w3c/dom/NodeList;
    .end local p0    # "i":I
    .end local p2    # "j":I
    :catch_0
    move-exception p0

    move-object p1, v1

    .line 260
    .end local v1    # "value":Ljava/lang/String;
    .local p0, "e":Ljava/lang/Exception;
    .local p1, "value":Ljava/lang/String;
    :goto_3
    throw p0

    .line 263
    .restart local v0    # "items":Lorg/w3c/dom/NodeList;
    .restart local v1    # "value":Ljava/lang/String;
    .local p0, "i":I
    .local p1, "tagName":Ljava/lang/String;
    :cond_1
    return-object v1

    .line 259
    .end local v1    # "value":Ljava/lang/String;
    .restart local v2    # "properties":Lorg/w3c/dom/NodeList;
    .restart local v4    # "value":Ljava/lang/String;
    .restart local p2    # "j":I
    :catch_1
    move-exception p0

    move-object p1, v4

    .end local v4    # "value":Ljava/lang/String;
    .local p1, "value":Ljava/lang/String;
    goto :goto_3

    .restart local v3    # "property":Lorg/w3c/dom/Node;
    .restart local v4    # "value":Ljava/lang/String;
    .local p1, "tagName":Ljava/lang/String;
    :cond_2
    move-object v1, v4

    .end local v4    # "value":Ljava/lang/String;
    .restart local v1    # "value":Ljava/lang/String;
    goto :goto_2
.end method
