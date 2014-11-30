.class public Lcom/nativex/monetization/manager/StringsManager;
.super Ljava/lang/Object;
.source "StringsManager.java"


# static fields
.field private static stringResourcesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getString(Lcom/nativex/monetization/enums/StringResources;)Ljava/lang/String;
    .locals 4
    .param p0, "resourceName"    # Lcom/nativex/monetization/enums/StringResources;

    .prologue
    .line 112
    sget-object v2, Lcom/nativex/monetization/manager/StringsManager;->stringResourcesMap:Ljava/util/HashMap;

    if-nez v2, :cond_0

    .line 113
    invoke-static {}, Lcom/nativex/common/SharedPreferenceManager;->getLanguge()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/nativex/monetization/enums/Language;->getEnum(Ljava/lang/String;)Lcom/nativex/monetization/enums/Language;

    move-result-object v0

    .line 114
    .local v0, "language":Lcom/nativex/monetization/enums/Language;
    invoke-static {v0}, Lcom/nativex/monetization/manager/StringsManager;->initialize(Lcom/nativex/monetization/enums/Language;)V

    .line 116
    .end local v0    # "language":Lcom/nativex/monetization/enums/Language;
    :cond_0
    sget-object v2, Lcom/nativex/monetization/manager/StringsManager;->stringResourcesMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/nativex/monetization/enums/StringResources;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 117
    .local v1, "stringFromXml":Ljava/lang/String;
    if-eqz v1, :cond_1

    move-object v2, v1

    :goto_0
    return-object v2

    :cond_1
    const-string v2, ""

    goto :goto_0
.end method

.method public static initialize(Lcom/nativex/monetization/enums/Language;)V
    .locals 2
    .param p0, "defaultLanguage"    # Lcom/nativex/monetization/enums/Language;

    .prologue
    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/nativex/monetization/manager/StringsManager;->stringResourcesMap:Ljava/util/HashMap;

    .line 45
    invoke-virtual {p0}, Lcom/nativex/monetization/enums/Language;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nativex/monetization/manager/StringsManager;->parseStringsFromXml(Ljava/lang/String;Z)V

    .line 48
    sget-object v0, Lcom/nativex/monetization/enums/Language;->PARTNER_STRINGS:Lcom/nativex/monetization/enums/Language;

    invoke-virtual {v0}, Lcom/nativex/monetization/enums/Language;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/nativex/monetization/manager/StringsManager;->parseStringsFromXml(Ljava/lang/String;Z)V

    .line 49
    return-void
.end method

.method private static parseStringsFromXml(Ljava/lang/String;Z)V
    .locals 13
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "checkForSpam"    # Z

    .prologue
    const/4 v12, 0x1

    .line 54
    const/4 v6, 0x0

    .line 56
    .local v6, "inputStream":Ljava/io/InputStream;
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v5

    .line 57
    .local v5, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    const/4 v10, 0x1

    invoke-virtual {v5, v10}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 58
    invoke-virtual {v5}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v9

    .line 59
    .local v9, "xmlParser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-static {}, Lcom/nativex/monetization/manager/MonetizationSharedDataManager;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 60
    .local v0, "assetManager":Landroid/content/res/AssetManager;
    invoke-virtual {v0, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    .line 61
    new-instance v10, Ljava/io/InputStreamReader;

    invoke-direct {v10, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 63
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    .line 64
    .local v4, "eventType":I
    const/4 v2, 0x0

    .line 65
    .local v2, "attributeValue":Ljava/lang/String;
    const/4 v7, 0x0

    .line 67
    .local v7, "isAttributeName":Z
    :goto_0
    if-eq v4, v12, :cond_5

    .line 69
    if-nez v4, :cond_1

    .line 97
    :cond_0
    :goto_1
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    goto :goto_0

    .line 71
    :cond_1
    const/4 v10, 0x2

    if-ne v4, v10, :cond_2

    .line 72
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "string"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 73
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v10

    if-lez v10, :cond_0

    .line 74
    const/4 v10, 0x0

    invoke-interface {v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, "attribute":Ljava/lang/String;
    const-string v10, "name"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 76
    const/4 v10, 0x0

    invoke-interface {v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    .line 77
    const/4 v7, 0x1

    goto :goto_1

    .line 81
    .end local v1    # "attribute":Ljava/lang/String;
    :cond_2
    const/4 v10, 0x3

    if-eq v4, v10, :cond_0

    .line 83
    const/4 v10, 0x4

    if-ne v4, v10, :cond_0

    .line 84
    if-eqz v7, :cond_0

    .line 85
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v8

    .line 86
    .local v8, "text":Ljava/lang/String;
    if-eqz p1, :cond_4

    .line 87
    sget-object v10, Lcom/nativex/monetization/manager/StringsManager;->stringResourcesMap:Ljava/util/HashMap;

    invoke-virtual {v10, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 88
    sget-object v10, Lcom/nativex/monetization/manager/StringsManager;->stringResourcesMap:Ljava/util/HashMap;

    invoke-virtual {v10, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    :cond_3
    :goto_2
    const/4 v7, 0x0

    .line 94
    const/4 v2, 0x0

    goto :goto_1

    .line 91
    :cond_4
    sget-object v10, Lcom/nativex/monetization/manager/StringsManager;->stringResourcesMap:Ljava/util/HashMap;

    invoke-virtual {v10, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    .line 100
    .end local v0    # "assetManager":Landroid/content/res/AssetManager;
    .end local v2    # "attributeValue":Ljava/lang/String;
    .end local v4    # "eventType":I
    .end local v5    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v7    # "isAttributeName":Z
    .end local v8    # "text":Ljava/lang/String;
    .end local v9    # "xmlParser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v10

    move-object v3, v10

    .line 102
    .local v3, "e":Ljava/io/FileNotFoundException;
    sget-object v10, Lcom/nativex/monetization/enums/Language;->PARTNER_STRINGS:Lcom/nativex/monetization/enums/Language;

    invoke-virtual {v10}, Lcom/nativex/monetization/enums/Language;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 103
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 108
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    :cond_5
    :goto_3
    return-void

    .line 105
    :catch_1
    move-exception v10

    move-object v3, v10

    .line 106
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method
