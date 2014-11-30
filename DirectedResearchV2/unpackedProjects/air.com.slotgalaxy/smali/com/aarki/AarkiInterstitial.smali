.class final Lcom/aarki/AarkiInterstitial;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aarki/AarkiInterstitial$Listener;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/Boolean;

.field private static d:Ljava/util/Date;


# direct methods
.method public static a()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 131
    sget-object v0, Lcom/aarki/AarkiInterstitial;->d:Ljava/util/Date;

    if-eqz v0, :cond_1

    .line 132
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    sget-object v1, Lcom/aarki/AarkiInterstitial;->d:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/aarki/AarkiInterstitial;->c:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 141
    :goto_0
    return-object v0

    .line 136
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 141
    :cond_1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method static synthetic a(Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .prologue
    .line 16
    sput-object p0, Lcom/aarki/AarkiInterstitial;->c:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 16
    sput-object p0, Lcom/aarki/AarkiInterstitial;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Ljava/util/Date;)Ljava/util/Date;
    .locals 0

    .prologue
    .line 16
    sput-object p0, Lcom/aarki/AarkiInterstitial;->d:Ljava/util/Date;

    return-object p0
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "showInterstitialAd: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/aarki/AarkiInterstitial;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    sget-object v0, Lcom/aarki/AarkiInterstitial;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/aarki/AarkiInterstitial;->a:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 121
    :cond_0
    sget-object v0, Lcom/aarki/Aarki$Status;->NotAvailable:Lcom/aarki/Aarki$Status;

    invoke-static {v0}, Lcom/aarki/Aarki;->a(Lcom/aarki/Aarki$Status;)V

    .line 127
    :goto_0
    return-void

    .line 124
    :cond_1
    sget-object v0, Lcom/aarki/AarkiInterstitial;->b:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sget-object v2, Lcom/aarki/AarkiInterstitial;->a:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2}, Lcom/aarki/AarkiActivity;->launch(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/aarki/AarkiInterstitial$Listener;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/aarki/AarkiInterstitial$Listener;",
            ")V"
        }
    .end annotation

    .prologue
    const-string v7, "sdk_version"

    const-string v6, "2.8"

    .line 88
    invoke-static {}, Lcom/aarki/b;->a()Lcom/aarki/b;

    .line 91
    sput-object p0, Lcom/aarki/AarkiInterstitial;->b:Ljava/lang/String;

    .line 94
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 95
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "src"

    invoke-direct {v1, v2, p0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "device_platform"

    invoke-static {}, Lcom/aarki/b;->m()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "format"

    const-string v4, "interstitial"

    invoke-direct {v1, v2, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    if-eqz p1, :cond_0

    .line 99
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "action"

    invoke-direct {v1, v2, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    :cond_0
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "sdk_version"

    const-string v2, "2.8"

    invoke-direct {v1, v7, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    invoke-static {v3}, Lcom/aarki/a;->a(Ljava/util/List;)V

    .line 103
    if-eqz p2, :cond_1

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Additiona user options: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/util/Map$Entry;

    move-object v2, v0

    .line 107
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v5, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 112
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 113
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "sdk_version"

    const-string v4, "2.8"

    invoke-direct {v2, v7, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "checkInterstitial: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "/media.json"

    new-instance v5, Lcom/aarki/c;

    invoke-direct {v5, v2}, Lcom/aarki/c;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "http://hs.aarki.net/adpick"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/aarki/c;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/aarki/AarkiInterstitial$1;

    invoke-direct {v4, p3, v2}, Lcom/aarki/AarkiInterstitial$1;-><init>(Lcom/aarki/AarkiInterstitial$Listener;Ljava/lang/String;)V

    invoke-virtual {v5, v3, v1, v4}, Lcom/aarki/c;->a(Ljava/lang/String;Ljava/util/List;Lcom/aarki/c$b;)V

    .line 115
    return-void
.end method

.method public static b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 146
    sput-object v1, Lcom/aarki/AarkiInterstitial;->d:Ljava/util/Date;

    .line 147
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v0, Lcom/aarki/AarkiInterstitial;->c:Ljava/lang/Boolean;

    .line 148
    sput-object v1, Lcom/aarki/AarkiInterstitial;->a:Ljava/lang/String;

    .line 150
    return-void
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/aarki/AarkiInterstitial;->a:Ljava/lang/String;

    return-object v0
.end method
