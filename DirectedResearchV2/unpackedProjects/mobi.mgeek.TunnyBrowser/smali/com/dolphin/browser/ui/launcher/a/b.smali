.class public Lcom/dolphin/browser/ui/launcher/a/b;
.super Ljava/lang/Object;
.source "HomeShortcut.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/dolphin/browser/ui/launcher/a/b;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Ljava/lang/String;

.field private g:I

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/ui/launcher/a/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/ui/launcher/a/b;->h:Ljava/util/List;

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/ui/launcher/a/b;->h:Ljava/util/List;

    .line 39
    iput-object p1, p0, Lcom/dolphin/browser/ui/launcher/a/b;->c:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lcom/dolphin/browser/ui/launcher/a/b;->f:Ljava/lang/String;

    .line 41
    iput p3, p0, Lcom/dolphin/browser/ui/launcher/a/b;->e:I

    .line 42
    iput-boolean p4, p0, Lcom/dolphin/browser/ui/launcher/a/b;->a:Z

    .line 43
    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/dolphin/browser/ui/launcher/a/b;
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 86
    const/4 v0, 0x0

    .line 87
    if-eqz p0, :cond_1

    .line 89
    new-instance v0, Lcom/dolphin/browser/ui/launcher/a/b;

    invoke-direct {v0}, Lcom/dolphin/browser/ui/launcher/a/b;-><init>()V

    .line 90
    const-string v2, "ttl"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/dolphin/browser/ui/launcher/a/b;->c:Ljava/lang/String;

    .line 91
    const-string v2, "d"

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v0, Lcom/dolphin/browser/ui/launcher/a/b;->a:Z

    .line 92
    const-string v2, "p"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/dolphin/browser/ui/launcher/a/b;->e:I

    .line 93
    const-string v2, "ico"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/dolphin/browser/ui/launcher/a/b;->d:Ljava/lang/String;

    .line 94
    const-string v2, "url"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/dolphin/browser/ui/launcher/a/b;->f:Ljava/lang/String;

    .line 95
    const-string v2, "id"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/dolphin/browser/ui/launcher/a/b;->g:I

    .line 96
    iput-boolean v1, v0, Lcom/dolphin/browser/ui/launcher/a/b;->b:Z

    .line 97
    const-string v2, "its"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 98
    iput-boolean v3, v0, Lcom/dolphin/browser/ui/launcher/a/b;->b:Z

    .line 99
    const-string v2, "its"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 100
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 101
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    move v2, v1

    .line 102
    :goto_0
    if-ge v2, v4, :cond_1

    .line 104
    :try_start_0
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 105
    invoke-static {v1}, Lcom/dolphin/browser/ui/launcher/a/b;->a(Lorg/json/JSONObject;)Lcom/dolphin/browser/ui/launcher/a/b;

    move-result-object v1

    .line 106
    if-eqz v1, :cond_0

    .line 107
    iget-object v5, v0, Lcom/dolphin/browser/ui/launcher/a/b;->h:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :cond_0
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 109
    :catch_0
    move-exception v1

    .line 110
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 118
    :cond_1
    return-object v0
.end method


# virtual methods
.method public a(Lcom/dolphin/browser/ui/launcher/a/b;)I
    .locals 2

    .prologue
    .line 124
    iget v0, p0, Lcom/dolphin/browser/ui/launcher/a/b;->e:I

    iget v1, p1, Lcom/dolphin/browser/ui/launcher/a/b;->e:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/dolphin/browser/ui/launcher/a/b;->d:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/dolphin/browser/ui/launcher/a/b;->d:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/dolphin/browser/ui/launcher/a/b;->b:Z

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/dolphin/browser/ui/launcher/a/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 14
    check-cast p1, Lcom/dolphin/browser/ui/launcher/a/b;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/ui/launcher/a/b;->a(Lcom/dolphin/browser/ui/launcher/a/b;)I

    move-result v0

    return v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/dolphin/browser/ui/launcher/a/b;->a:Z

    return v0
.end method

.method public e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/ui/launcher/a/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lcom/dolphin/browser/ui/launcher/a/b;->h:Ljava/util/List;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/dolphin/browser/ui/launcher/a/b;->f:Ljava/lang/String;

    return-object v0
.end method
