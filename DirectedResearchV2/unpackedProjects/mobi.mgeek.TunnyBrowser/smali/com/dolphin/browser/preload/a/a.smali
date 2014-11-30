.class public Lcom/dolphin/browser/preload/a/a;
.super Ljava/lang/Object;
.source "Bookmark.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/preload/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/dolphin/browser/preload/a/a;
    .locals 2

    .prologue
    .line 62
    if-nez p0, :cond_0

    .line 63
    const/4 v0, 0x0

    .line 78
    :goto_0
    return-object v0

    .line 66
    :cond_0
    new-instance v0, Lcom/dolphin/browser/preload/a/a;

    invoke-direct {v0}, Lcom/dolphin/browser/preload/a/a;-><init>()V

    .line 67
    const-string v1, "name"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dolphin/browser/preload/a/a;->a:Ljava/lang/String;

    .line 68
    const-string v1, "bookmarks"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 69
    const-string v1, "bookmarks"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v1}, Lcom/dolphin/browser/preload/a/a;->a(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/dolphin/browser/preload/a/a;->e:Ljava/util/List;

    .line 70
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/dolphin/browser/preload/a/a;->f:Z

    goto :goto_0

    .line 72
    :cond_1
    const-string v1, "favicon"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dolphin/browser/preload/a/a;->c:Ljava/lang/String;

    .line 73
    const-string v1, "url"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dolphin/browser/preload/a/a;->b:Ljava/lang/String;

    .line 74
    const-string v1, "order"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/dolphin/browser/preload/a/a;->d:I

    .line 75
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/dolphin/browser/preload/a/a;->f:Z

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
            "Lcom/dolphin/browser/preload/a/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 83
    const/4 v0, 0x0

    .line 84
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 85
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 88
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 89
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lcom/dolphin/browser/preload/a/a;->a(Lorg/json/JSONObject;)Lcom/dolphin/browser/preload/a/a;

    move-result-object v3

    .line 90
    if-eqz v3, :cond_0

    .line 91
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 96
    :cond_1
    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/dolphin/browser/preload/a/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/dolphin/browser/preload/a/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/dolphin/browser/preload/a/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/dolphin/browser/preload/a/a;->d:I

    return v0
.end method

.method public e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/preload/a/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lcom/dolphin/browser/preload/a/a;->e:Ljava/util/List;

    return-object v0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/dolphin/browser/preload/a/a;->f:Z

    return v0
.end method
