.class public Lcom/dolphin/browser/preload/a/e;
.super Ljava/lang/Object;
.source "SpeedDial.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/dolphin/browser/preload/a/e;
    .locals 2

    .prologue
    .line 43
    if-nez p0, :cond_0

    .line 44
    const/4 v0, 0x0

    .line 53
    :goto_0
    return-object v0

    .line 47
    :cond_0
    new-instance v0, Lcom/dolphin/browser/preload/a/e;

    invoke-direct {v0}, Lcom/dolphin/browser/preload/a/e;-><init>()V

    .line 48
    const-string v1, "title"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dolphin/browser/preload/a/e;->a:Ljava/lang/String;

    .line 49
    const-string v1, "url"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dolphin/browser/preload/a/e;->b:Ljava/lang/String;

    .line 50
    const-string v1, "favicon"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dolphin/browser/preload/a/e;->c:Ljava/lang/String;

    .line 51
    const-string v1, "order"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/dolphin/browser/preload/a/e;->d:I

    goto :goto_0
.end method

.method public static a(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/preload/a/e;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    const/4 v0, 0x0

    .line 59
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 60
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 63
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 64
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lcom/dolphin/browser/preload/a/e;->a(Lorg/json/JSONObject;)Lcom/dolphin/browser/preload/a/e;

    move-result-object v3

    .line 65
    if-eqz v3, :cond_0

    .line 66
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 71
    :cond_1
    return-object v0
.end method
