.class public Lcom/aarki/AarkiUserBalance;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aarki/AarkiUserBalance$Listener;,
        Lcom/aarki/AarkiUserBalance$Status;
    }
.end annotation


# static fields
.field public static final AARKI_USER_BALANCE_URL:Ljava/lang/String; = "https://hs.aarki.net/user/balance"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/aarki/AarkiUserBalance$Listener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Lcom/aarki/AarkiUserBalance$Listener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 23
    new-instance v0, Lcom/aarki/c;

    invoke-direct {v0, p0}, Lcom/aarki/c;-><init>(Ljava/lang/String;)V

    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "https://hs.aarki.net/user/balance"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/aarki/c;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/aarki/AarkiUserBalance$1;

    invoke-direct {v2, p4, p0}, Lcom/aarki/AarkiUserBalance$1;-><init>(Lcom/aarki/AarkiUserBalance$Listener;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p3, v2}, Lcom/aarki/c;->a(Ljava/lang/String;Ljava/util/List;Lcom/aarki/c$b;)V

    .line 58
    return-void
.end method

.method private static a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 62
    if-eqz p2, :cond_0

    .line 63
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    invoke-direct {v0, p1, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    :cond_0
    return-void
.end method

.method public static add(Ljava/lang/String;ILcom/aarki/AarkiUserBalance$Listener;)V
    .locals 8

    .prologue
    const-string v7, "user_id"

    const-string v6, "amount"

    .line 89
    invoke-static {}, Lcom/aarki/b;->a()Lcom/aarki/b;

    move-result-object v0

    .line 90
    if-nez v0, :cond_0

    .line 114
    :goto_0
    return-void

    .line 92
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 93
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "src"

    invoke-direct {v2, v3, p0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "sdk_version"

    const-string v4, "2.8"

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "device_platform"

    invoke-static {}, Lcom/aarki/b;->m()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "app_sec_key"

    invoke-static {}, Lcom/aarki/b;->l()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    invoke-virtual {v0}, Lcom/aarki/b;->i()Ljava/lang/String;

    move-result-object v2

    .line 99
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 100
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "user_id"

    invoke-direct {v4, v7, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "amount"

    invoke-direct {v4, v6, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    const-string v4, "client_type"

    invoke-virtual {v0}, Lcom/aarki/b;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v4, v0}, Lcom/aarki/AarkiUserBalance;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 105
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "user_id"

    invoke-direct {v4, v7, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "amount"

    invoke-direct {v4, v6, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/aarki/b;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/aarki/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 109
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "sha1_signature"

    invoke-direct {v3, v4, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "add:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/add.json"

    invoke-static {v2, v3, v1, v0, p2}, Lcom/aarki/AarkiUserBalance;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/aarki/AarkiUserBalance$Listener;)V

    goto/16 :goto_0

    .line 110
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public static check(Ljava/lang/String;Lcom/aarki/AarkiUserBalance$Listener;)V
    .locals 5

    .prologue
    .line 71
    invoke-static {}, Lcom/aarki/b;->a()Lcom/aarki/b;

    move-result-object v0

    .line 72
    if-nez v0, :cond_0

    .line 85
    :goto_0
    return-void

    .line 74
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 75
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "src"

    invoke-direct {v2, v3, p0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "sdk_version"

    const-string v4, "2.8"

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "device_platform"

    invoke-static {}, Lcom/aarki/b;->m()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "app_sec_key"

    invoke-static {}, Lcom/aarki/b;->l()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "user_id"

    invoke-virtual {v0}, Lcom/aarki/b;->i()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    const-string v2, "client_type"

    invoke-virtual {v0}, Lcom/aarki/b;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/aarki/AarkiUserBalance;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "check:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "/check.json"

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3, p1}, Lcom/aarki/AarkiUserBalance;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/aarki/AarkiUserBalance$Listener;)V

    goto :goto_0
.end method

.method public static withdraw(Ljava/lang/String;ILcom/aarki/AarkiUserBalance$Listener;)V
    .locals 1

    .prologue
    .line 119
    neg-int v0, p1

    invoke-static {p0, v0, p2}, Lcom/aarki/AarkiUserBalance;->add(Ljava/lang/String;ILcom/aarki/AarkiUserBalance$Listener;)V

    .line 120
    return-void
.end method
