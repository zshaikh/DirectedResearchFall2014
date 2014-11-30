.class public final Lcom/dolphin/browser/q/c/a;
.super Ljava/lang/Object;
.source "CrawledWebPage.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Lorg/json/JSONObject;)Lcom/dolphin/browser/q/c/a;
    .locals 7

    .prologue
    .line 77
    if-nez p0, :cond_1

    .line 78
    const/4 v0, 0x0

    .line 101
    :cond_0
    :goto_0
    return-object v0

    .line 81
    :cond_1
    new-instance v0, Lcom/dolphin/browser/q/c/a;

    invoke-direct {v0}, Lcom/dolphin/browser/q/c/a;-><init>()V

    .line 82
    const-string v1, "url"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dolphin/browser/q/c/a;->a:Ljava/lang/String;

    .line 83
    const-string v1, "title"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dolphin/browser/q/c/a;->b:Ljava/lang/String;

    .line 84
    const-string v1, "description"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dolphin/browser/q/c/a;->c:Ljava/lang/String;

    .line 85
    const-string v1, "type"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dolphin/browser/q/c/a;->d:Ljava/lang/String;

    .line 86
    const-string v1, "image"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 87
    if-eqz v2, :cond_0

    .line 88
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 89
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 90
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_3

    .line 91
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 92
    if-eqz v5, :cond_2

    .line 93
    const-string v6, "url"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 94
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 95
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 99
    :cond_3
    iput-object v4, v0, Lcom/dolphin/browser/q/c/a;->e:Ljava/util/List;

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/dolphin/browser/q/c/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/dolphin/browser/q/c/a;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/q/c/a;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/dolphin/browser/q/c/a;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 73
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/dolphin/browser/q/c/a;->a:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/dolphin/browser/q/c/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/dolphin/browser/q/c/a;->b:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/dolphin/browser/q/c/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/dolphin/browser/q/c/a;->d:Ljava/lang/String;

    .line 47
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    const-string v0, "website"

    .line 50
    :cond_0
    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/dolphin/browser/q/c/a;->d()Ljava/lang/String;

    move-result-object v0

    .line 55
    const-string v1, "video.movie"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    const-string v0, "movie"

    .line 58
    :cond_0
    return-object v0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/dolphin/browser/q/c/a;->e:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/q/c/a;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
