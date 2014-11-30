.class public Lcom/dolphin/browser/voice/command/c;
.super Ljava/lang/Object;
.source "HotWord.java"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/dolphin/browser/voice/command/c;->a:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    if-nez p1, :cond_0

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/dolphin/browser/voice/command/c;->a:Ljava/lang/String;

    .line 35
    :goto_0
    return-void

    .line 33
    :cond_0
    iput-object p1, p0, Lcom/dolphin/browser/voice/command/c;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method public static final a(Landroid/content/Context;I)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/voice/command/c;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 58
    if-eqz p0, :cond_0

    if-gtz p1, :cond_1

    .line 71
    :cond_0
    return-object v0

    .line 61
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 62
    if-eqz v2, :cond_0

    array-length v1, v2

    if-eqz v1, :cond_0

    .line 65
    array-length v3, v2

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 67
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 68
    new-instance v4, Lcom/dolphin/browser/voice/command/c;

    aget-object v5, v2, v1

    invoke-direct {v4, v5}, Lcom/dolphin/browser/voice/command/c;-><init>(Ljava/lang/String;)V

    .line 69
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static final a(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/voice/command/c;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 76
    if-nez p0, :cond_1

    .line 95
    :cond_0
    return-object v0

    .line 79
    :cond_1
    const-string v1, "words"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 80
    if-eqz v2, :cond_0

    .line 83
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 85
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 86
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    .line 87
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 85
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 90
    :cond_2
    new-instance v5, Lcom/dolphin/browser/voice/command/c;

    invoke-direct {v5, v4}, Lcom/dolphin/browser/voice/command/c;-><init>(Ljava/lang/String;)V

    .line 91
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/dolphin/browser/voice/command/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/dolphin/browser/voice/command/c;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
