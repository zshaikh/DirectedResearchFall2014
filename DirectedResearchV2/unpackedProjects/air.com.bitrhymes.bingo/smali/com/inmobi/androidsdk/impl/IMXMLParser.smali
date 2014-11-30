.class public final Lcom/inmobi/androidsdk/impl/IMXMLParser;
.super Ljava/lang/Object;
.source "IMXMLParser.java"


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-string v0, "Ad"

    sput-object v0, Lcom/inmobi/androidsdk/impl/IMXMLParser;->a:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildAdUnitFromResponseData(Ljava/io/Reader;)Lcom/inmobi/androidsdk/impl/IMAdUnit;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/inmobi/androidsdk/impl/IMAdException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v0, "IP Address not found in CCID File"

    const-string v0, "InMobiAndroidSDK_3.6.2"

    .line 27
    new-instance v0, Lcom/inmobi/androidsdk/impl/IMAdUnit;

    invoke-direct {v0}, Lcom/inmobi/androidsdk/impl/IMAdUnit;-><init>()V

    .line 32
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v1

    .line 33
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 34
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 35
    invoke-interface {v1, p0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 36
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    move v4, v2

    move v5, v3

    move v6, v3

    move-object v3, v8

    move-object v2, v8

    .line 39
    :goto_0
    if-ne v4, v9, :cond_0

    .line 79
    if-nez v5, :cond_5

    .line 81
    new-instance v0, Lcom/inmobi/androidsdk/impl/IMAdException;

    const-string v1, "App Id may be Invalid or Inactive"

    const/16 v2, 0x320

    invoke-direct {v0, v1, v2}, Lcom/inmobi/androidsdk/impl/IMAdException;-><init>(Ljava/lang/String;I)V

    throw v0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :catch_0
    move-exception v0

    .line 108
    new-instance v1, Lcom/inmobi/androidsdk/impl/IMAdException;

    const-string v2, "Exception constructing Ad"

    .line 109
    const/16 v3, 0xc8

    .line 108
    invoke-direct {v1, v2, v0, v3}, Lcom/inmobi/androidsdk/impl/IMAdException;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw v1

    .line 40
    :cond_0
    if-eqz v4, :cond_4

    .line 43
    const/4 v7, 0x2

    if-ne v4, v7, :cond_1

    .line 44
    :try_start_1
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 46
    if-eqz v3, :cond_c

    move v4, v9

    .line 50
    :goto_1
    if-eqz v3, :cond_b

    sget-object v5, Lcom/inmobi/androidsdk/impl/IMXMLParser;->a:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 55
    const/4 v2, 0x0

    const-string v5, "width"

    .line 54
    invoke-interface {v1, v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/inmobi/androidsdk/impl/IMAdUnit;->setWidth(I)V

    .line 57
    const/4 v2, 0x0

    const-string v5, "height"

    .line 56
    invoke-interface {v1, v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/inmobi/androidsdk/impl/IMAdUnit;->setHeight(I)V

    .line 59
    const/4 v2, 0x0

    const-string v5, "actionName"

    invoke-interface {v1, v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 58
    invoke-static {v2}, Lcom/inmobi/androidsdk/impl/IMAdUnit;->adActionNamefromString(Ljava/lang/String;)Lcom/inmobi/androidsdk/impl/IMAdUnit$AdActionNames;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/inmobi/androidsdk/impl/IMAdUnit;->setAdActionName(Lcom/inmobi/androidsdk/impl/IMAdUnit$AdActionNames;)V

    .line 61
    const/4 v2, 0x0

    const-string v5, "type"

    invoke-interface {v1, v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 60
    invoke-static {v2}, Lcom/inmobi/androidsdk/impl/IMAdUnit;->adTypefromString(Ljava/lang/String;)Lcom/inmobi/androidsdk/impl/IMAdUnit$AdTypes;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/inmobi/androidsdk/impl/IMAdUnit;->setAdType(Lcom/inmobi/androidsdk/impl/IMAdUnit$AdTypes;)V

    .line 62
    const/4 v2, 0x0

    const-string v5, "errorcode"

    invoke-interface {v1, v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move v5, v9

    .line 76
    :goto_2
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->nextToken()I

    move-result v6

    move v10, v6

    move v6, v5

    move v5, v4

    move v4, v10

    goto :goto_0

    .line 64
    :cond_1
    const/4 v7, 0x3

    if-ne v4, v7, :cond_2

    move-object v3, v8

    move v4, v5

    move v5, v6

    .line 65
    goto :goto_2

    .line 66
    :cond_2
    const/4 v7, 0x5

    if-ne v4, v7, :cond_3

    .line 67
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/inmobi/androidsdk/impl/IMAdUnit;->setCDATABlock(Ljava/lang/String;)V

    move v4, v5

    move v5, v6

    goto :goto_2

    .line 68
    :cond_3
    const/4 v7, 0x4

    if-ne v4, v7, :cond_4

    .line 69
    if-eqz v3, :cond_4

    .line 70
    const-string v4, "AdURL"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 71
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/inmobi/androidsdk/impl/IMAdUnit;->setTargetUrl(Ljava/lang/String;)V

    .line 72
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/inmobi/androidsdk/impl/IMAdUnit;->setDefaultTargetUrl(Ljava/lang/String;)V

    :cond_4
    move v4, v5

    move v5, v6

    goto :goto_2

    .line 84
    :cond_5
    if-nez v6, :cond_6

    .line 85
    new-instance v0, Lcom/inmobi/androidsdk/impl/IMAdException;

    const-string v1, "No Ads present"

    const/16 v2, 0x64

    invoke-direct {v0, v1, v2}, Lcom/inmobi/androidsdk/impl/IMAdException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 87
    :cond_6
    if-eqz v2, :cond_a

    .line 88
    const-string v1, "OOF"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 89
    const-string v0, "InMobiAndroidSDK_3.6.2"

    .line 90
    const-string v1, "IP Address not found in CCID File"

    .line 89
    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    new-instance v0, Lcom/inmobi/androidsdk/impl/IMAdException;

    const-string v1, "IP Address not found in CCID File"

    const/16 v2, 0x190

    invoke-direct {v0, v1, v2}, Lcom/inmobi/androidsdk/impl/IMAdException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 92
    :cond_7
    const-string v1, "BADIP"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 93
    const-string v0, "InMobiAndroidSDK_3.6.2"

    .line 94
    const-string v1, "Invalid IP Address"

    .line 93
    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    new-instance v0, Lcom/inmobi/androidsdk/impl/IMAdException;

    const-string v1, "Invalid IP Address"

    const/16 v2, 0x1f4

    invoke-direct {v0, v1, v2}, Lcom/inmobi/androidsdk/impl/IMAdException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 96
    :cond_8
    const-string v1, "UAND"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 97
    const-string v0, "InMobiAndroidSDK_3.6.2"

    .line 98
    const-string v1, "User Agent not detected through using wurfl"

    .line 97
    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    new-instance v0, Lcom/inmobi/androidsdk/impl/IMAdException;

    const-string v1, "User Agent not detected through using wurfl"

    const/16 v2, 0x258

    invoke-direct {v0, v1, v2}, Lcom/inmobi/androidsdk/impl/IMAdException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 100
    :cond_9
    const-string v1, "-UA"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 101
    const-string v0, "InMobiAndroidSDK_3.6.2"

    .line 102
    const-string v1, "No User Agent found"

    .line 101
    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    new-instance v0, Lcom/inmobi/androidsdk/impl/IMAdException;

    const-string v1, "No User Agent found"

    const/16 v2, 0x2bc

    invoke-direct {v0, v1, v2}, Lcom/inmobi/androidsdk/impl/IMAdException;-><init>(Ljava/lang/String;I)V

    throw v0
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0

    .line 111
    :cond_a
    return-object v0

    :cond_b
    move v5, v6

    goto/16 :goto_2

    :cond_c
    move v4, v5

    goto/16 :goto_1
.end method
