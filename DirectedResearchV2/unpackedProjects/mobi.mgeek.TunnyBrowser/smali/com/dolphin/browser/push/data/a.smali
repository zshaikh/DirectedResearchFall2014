.class public Lcom/dolphin/browser/push/data/a;
.super Ljava/lang/Object;
.source "AuthResponse.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I

.field private d:I

.field private e:Lorg/json/JSONObject;

.field private f:Lorg/json/JSONArray;

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dolphin/browser/push/data/DeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private h:I

.field private i:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/dolphin/browser/push/data/a;->a:Ljava/lang/String;

    .line 26
    const/16 v0, 0x1388

    iput v0, p0, Lcom/dolphin/browser/push/data/a;->b:I

    .line 27
    iput v1, p0, Lcom/dolphin/browser/push/data/a;->c:I

    .line 28
    const/16 v0, 0x2af8

    iput v0, p0, Lcom/dolphin/browser/push/data/a;->d:I

    .line 29
    iput-object v2, p0, Lcom/dolphin/browser/push/data/a;->e:Lorg/json/JSONObject;

    .line 30
    iput-object v2, p0, Lcom/dolphin/browser/push/data/a;->f:Lorg/json/JSONArray;

    .line 32
    iput v1, p0, Lcom/dolphin/browser/push/data/a;->h:I

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/dolphin/browser/push/data/a;->i:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public static a(Lcom/dolphin/browser/DolphinService/WebService/f;)Lcom/dolphin/browser/push/data/a;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 44
    if-nez p0, :cond_0

    move-object v0, v1

    .line 81
    :goto_0
    return-object v0

    .line 49
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/dolphin/browser/DolphinService/WebService/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 50
    if-nez v0, :cond_1

    move-object v0, v1

    .line 51
    goto :goto_0

    .line 54
    :cond_1
    new-instance v2, Lcom/dolphin/browser/push/data/a;

    invoke-direct {v2}, Lcom/dolphin/browser/push/data/a;-><init>()V

    .line 55
    const-string v3, "device_state"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/dolphin/browser/push/data/a;->h:I

    .line 57
    iget v3, v2, Lcom/dolphin/browser/push/data/a;->h:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    move-object v0, v2

    .line 58
    goto :goto_0

    .line 61
    :cond_2
    const-string v3, "url"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/dolphin/browser/push/data/a;->a:Ljava/lang/String;

    .line 62
    iget-object v3, v2, Lcom/dolphin/browser/push/data/a;->a:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v0, v1

    .line 63
    goto :goto_0

    .line 67
    :cond_3
    const-string v3, "timeout"

    const/16 v4, 0x1388

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    iput v3, v2, Lcom/dolphin/browser/push/data/a;->b:I

    .line 69
    const-string v3, "sync_commit_delay"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/dolphin/browser/push/data/a;->c:I

    .line 71
    const-string v3, "tab_sync_commit_delay"

    const/16 v4, 0x2af8

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/dolphin/browser/push/data/a;->d:I

    .line 74
    const-string v3, "ext"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/dolphin/browser/push/data/a;->i:Ljava/lang/String;

    .line 75
    const-string v3, "device_list"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    iput-object v3, v2, Lcom/dolphin/browser/push/data/a;->e:Lorg/json/JSONObject;

    .line 76
    const-string v3, "msgid_list"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, v2, Lcom/dolphin/browser/push/data/a;->f:Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 78
    goto :goto_0

    .line 79
    :catch_0
    move-exception v0

    .line 80
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    move-object v0, v1

    .line 81
    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/dolphin/browser/push/data/a;->i:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/dolphin/browser/push/data/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/dolphin/browser/push/data/a;->h:I

    return v0
.end method

.method public d()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/push/data/DeviceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 122
    iget-object v0, p0, Lcom/dolphin/browser/push/data/a;->g:Ljava/util/ArrayList;

    .line 123
    if-nez v0, :cond_2

    .line 124
    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/dolphin/browser/push/data/a;->e:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 125
    iget-object v2, p0, Lcom/dolphin/browser/push/data/a;->e:Lorg/json/JSONObject;

    .line 126
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 127
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 128
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 130
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 131
    new-instance v4, Lcom/dolphin/browser/push/data/DeviceInfo;

    invoke-direct {v4, v0, v5}, Lcom/dolphin/browser/push/data/DeviceInfo;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 132
    invoke-virtual {v4}, Lcom/dolphin/browser/push/data/DeviceInfo;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 135
    :catch_0
    move-exception v0

    goto :goto_0

    .line 139
    :cond_1
    iput-object v1, p0, Lcom/dolphin/browser/push/data/a;->g:Ljava/util/ArrayList;

    move-object v0, v1

    .line 141
    :cond_2
    return-object v0
.end method

.method public e()Lorg/json/JSONArray;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/dolphin/browser/push/data/a;->f:Lorg/json/JSONArray;

    return-object v0
.end method
