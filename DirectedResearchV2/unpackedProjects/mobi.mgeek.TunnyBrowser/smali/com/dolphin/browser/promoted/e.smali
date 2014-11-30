.class public Lcom/dolphin/browser/promoted/e;
.super Ljava/lang/Object;
.source "PromotedApp.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/dolphin/browser/promoted/e;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method private static a(Lorg/json/JSONObject;)Lcom/dolphin/browser/promoted/e;
    .locals 2

    .prologue
    .line 106
    if-nez p0, :cond_0

    .line 107
    const/4 v0, 0x0

    .line 121
    :goto_0
    return-object v0

    .line 110
    :cond_0
    new-instance v0, Lcom/dolphin/browser/promoted/e;

    invoke-direct {v0}, Lcom/dolphin/browser/promoted/e;-><init>()V

    .line 112
    const-string v1, "id"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dolphin/browser/promoted/e;->a:Ljava/lang/String;

    .line 113
    const-string v1, "name"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dolphin/browser/promoted/e;->b:Ljava/lang/String;

    .line 114
    const-string v1, "download_url"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dolphin/browser/promoted/e;->c:Ljava/lang/String;

    .line 115
    const-string v1, "package_name"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dolphin/browser/promoted/e;->d:Ljava/lang/String;

    .line 116
    const-string v1, "icon_url"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dolphin/browser/promoted/e;->e:Ljava/lang/String;

    .line 117
    const-string v1, "logo_url"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dolphin/browser/promoted/e;->g:Ljava/lang/String;

    .line 118
    const-string v1, "description"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dolphin/browser/promoted/e;->f:Ljava/lang/String;

    .line 119
    const-string v1, "order"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/dolphin/browser/promoted/e;->h:I

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/promoted/e;",
            ">;"
        }
    .end annotation

    .prologue
    .line 83
    const/4 v1, 0x0

    .line 85
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 86
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 88
    if-lez v3, :cond_2

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    .line 91
    :try_start_1
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v4}, Lcom/dolphin/browser/promoted/e;->a(Lorg/json/JSONObject;)Lcom/dolphin/browser/promoted/e;

    move-result-object v4

    .line 92
    if-eqz v4, :cond_0

    .line 93
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 90
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 98
    :catch_0
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    .line 99
    :goto_1
    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    .line 102
    :cond_1
    :goto_2
    return-object v0

    .line 98
    :catch_1
    move-exception v1

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_2
.end method


# virtual methods
.method public a(Lcom/dolphin/browser/promoted/e;)I
    .locals 2

    .prologue
    .line 127
    iget v0, p0, Lcom/dolphin/browser/promoted/e;->h:I

    iget v1, p1, Lcom/dolphin/browser/promoted/e;->h:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/dolphin/browser/promoted/e;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/dolphin/browser/promoted/e;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/dolphin/browser/promoted/e;->d:Ljava/lang/String;

    return-object v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 14
    check-cast p1, Lcom/dolphin/browser/promoted/e;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/promoted/e;->a(Lcom/dolphin/browser/promoted/e;)I

    move-result v0

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/dolphin/browser/promoted/e;->e:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/dolphin/browser/promoted/e;->g:Ljava/lang/String;

    return-object v0
.end method
