.class public Lcom/nativex/monetization/mraid/MRAIDSchemeHandler;
.super Ljava/lang/Object;
.source "MRAIDSchemeHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nativex/monetization/mraid/MRAIDSchemeHandler$1;
    }
.end annotation


# instance fields
.field private jsInterface:Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;


# direct methods
.method public constructor <init>(Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;)V
    .locals 0
    .param p1, "jsInterface"    # Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/nativex/monetization/mraid/MRAIDSchemeHandler;->jsInterface:Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;

    .line 35
    return-void
.end method

.method private getEncodedData(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 129
    :try_start_0
    const-string v1, "\\?"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, "urlSplit":[Ljava/lang/String;
    array-length v1, v0

    if-le v1, v2, :cond_0

    .line 131
    const/4 v1, 0x1

    aget-object v1, v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    .end local v0    # "urlSplit":[Ljava/lang/String;
    :goto_0
    return-object v1

    .line 133
    :catch_0
    move-exception v1

    .line 135
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public handleScheme(Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;Ljava/lang/String;Ljava/util/List;)Z
    .locals 8
    .param p1, "scheme"    # Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;
    .param p2, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p3, "callsHandled":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v7, "url="

    .line 41
    iget-object v3, p0, Lcom/nativex/monetization/mraid/MRAIDSchemeHandler;->jsInterface:Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;

    if-nez v3, :cond_0

    move v3, v5

    .line 123
    :goto_0
    return v3

    .line 44
    :cond_0
    if-nez p1, :cond_1

    move v3, v5

    .line 45
    goto :goto_0

    .line 47
    :cond_1
    invoke-direct {p0, p2}, Lcom/nativex/monetization/mraid/MRAIDSchemeHandler;->getEncodedData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 48
    .local v2, "urlData":Ljava/lang/String;
    sget-object v3, Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;->SIZE_SCRIPT_SET_PAGE_SIZE:Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;

    if-ne p1, v3, :cond_2

    .line 49
    iget-object v3, p0, Lcom/nativex/monetization/mraid/MRAIDSchemeHandler;->jsInterface:Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;

    invoke-virtual {v3, v2}, Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;->setPageSize(Ljava/lang/String;)V

    .line 51
    :cond_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 52
    invoke-static {v2}, Lcom/nativex/monetization/mraid/MRAIDUtils;->decodeData(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 53
    .local v1, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "callId"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 54
    .local v0, "callId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 55
    invoke-interface {p3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 56
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    iget-object v3, p0, Lcom/nativex/monetization/mraid/MRAIDSchemeHandler;->jsInterface:Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;

    invoke-virtual {v3, v0}, Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;->registerCallId(Ljava/lang/String;)V

    .line 64
    .end local v0    # "callId":Ljava/lang/String;
    .end local v1    # "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    sget-object v3, Lcom/nativex/monetization/mraid/MRAIDSchemeHandler$1;->$SwitchMap$com$nativex$monetization$mraid$MRAIDUtils$UrlScheme:[I

    invoke-virtual {p1}, Lcom/nativex/monetization/mraid/MRAIDUtils$UrlScheme;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    move v3, v5

    .line 121
    goto :goto_0

    .restart local v0    # "callId":Ljava/lang/String;
    .restart local v1    # "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    move v3, v6

    .line 59
    goto :goto_0

    .line 68
    .end local v0    # "callId":Ljava/lang/String;
    .end local v1    # "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :pswitch_0
    iget-object v3, p0, Lcom/nativex/monetization/mraid/MRAIDSchemeHandler;->jsInterface:Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;

    invoke-virtual {v3}, Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;->close()V

    :goto_1
    move v3, v6

    .line 123
    goto :goto_0

    .line 71
    :pswitch_1
    iget-object v3, p0, Lcom/nativex/monetization/mraid/MRAIDSchemeHandler;->jsInterface:Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;

    invoke-virtual {v3, v2}, Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;->expand(Ljava/lang/String;)V

    goto :goto_1

    .line 74
    :pswitch_2
    iget-object v3, p0, Lcom/nativex/monetization/mraid/MRAIDSchemeHandler;->jsInterface:Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;

    invoke-virtual {v3, v2}, Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 77
    :pswitch_3
    iget-object v3, p0, Lcom/nativex/monetization/mraid/MRAIDSchemeHandler;->jsInterface:Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;

    invoke-virtual {v3, v2}, Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;->open(Ljava/lang/String;)V

    goto :goto_1

    .line 80
    :pswitch_4
    iget-object v3, p0, Lcom/nativex/monetization/mraid/MRAIDSchemeHandler;->jsInterface:Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;

    invoke-virtual {v3, v2}, Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;->playVideo(Ljava/lang/String;)V

    goto :goto_1

    .line 83
    :pswitch_5
    iget-object v3, p0, Lcom/nativex/monetization/mraid/MRAIDSchemeHandler;->jsInterface:Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;

    invoke-virtual {v3}, Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;->resize()V

    goto :goto_1

    .line 86
    :pswitch_6
    iget-object v3, p0, Lcom/nativex/monetization/mraid/MRAIDSchemeHandler;->jsInterface:Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;

    invoke-virtual {v3, v2}, Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;->setExpandProperties(Ljava/lang/String;)V

    goto :goto_1

    .line 89
    :pswitch_7
    iget-object v3, p0, Lcom/nativex/monetization/mraid/MRAIDSchemeHandler;->jsInterface:Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;

    invoke-virtual {v3, v2}, Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;->setOrientationProperties(Ljava/lang/String;)V

    goto :goto_1

    .line 92
    :pswitch_8
    iget-object v3, p0, Lcom/nativex/monetization/mraid/MRAIDSchemeHandler;->jsInterface:Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;

    invoke-virtual {v3, v2}, Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;->setResizeProperties(Ljava/lang/String;)V

    goto :goto_1

    .line 95
    :pswitch_9
    iget-object v3, p0, Lcom/nativex/monetization/mraid/MRAIDSchemeHandler;->jsInterface:Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;

    invoke-virtual {v3, v2}, Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;->storePicture(Ljava/lang/String;)V

    goto :goto_1

    .line 98
    :pswitch_a
    iget-object v3, p0, Lcom/nativex/monetization/mraid/MRAIDSchemeHandler;->jsInterface:Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;

    invoke-virtual {v3}, Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;->loaded()V

    goto :goto_1

    .line 101
    :pswitch_b
    iget-object v3, p0, Lcom/nativex/monetization/mraid/MRAIDSchemeHandler;->jsInterface:Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;

    invoke-virtual {v3, v2}, Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;->useCustomClose(Ljava/lang/String;)V

    goto :goto_1

    .line 104
    :pswitch_c
    iget-object v3, p0, Lcom/nativex/monetization/mraid/MRAIDSchemeHandler;->jsInterface:Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;

    invoke-virtual {v3, v2}, Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;->createCalendarEvent(Ljava/lang/String;)V

    goto :goto_1

    .line 109
    :pswitch_d
    iget-object v3, p0, Lcom/nativex/monetization/mraid/MRAIDSchemeHandler;->jsInterface:Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "url="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;->open(Ljava/lang/String;)V

    goto :goto_1

    .line 113
    :pswitch_e
    iget-object v3, p0, Lcom/nativex/monetization/mraid/MRAIDSchemeHandler;->jsInterface:Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "url="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;->open(Ljava/lang/String;)V

    goto :goto_1

    .line 117
    :pswitch_f
    iget-object v3, p0, Lcom/nativex/monetization/mraid/MRAIDSchemeHandler;->jsInterface:Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;

    invoke-virtual {v3}, Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;->adConverted()V

    goto/16 :goto_1

    .line 64
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
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
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method
