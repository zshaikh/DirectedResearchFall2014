.class public Lcom/dolphin/browser/sync/w;
.super Lcom/dolphin/browser/sync/e;
.source "DeviceItem.java"


# static fields
.field private static e:Z


# instance fields
.field a:I

.field b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/sync/ar;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x0

    sput-boolean v0, Lcom/dolphin/browser/sync/w;->e:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/dolphin/browser/sync/e;-><init>()V

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/dolphin/browser/sync/w;->c:Ljava/lang/String;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/sync/w;->d:Ljava/util/List;

    .line 65
    invoke-static {}, Lcom/dolphin/browser/sync/w;->n()I

    move-result v0

    iput v0, p0, Lcom/dolphin/browser/sync/w;->b:I

    .line 66
    return-void
.end method

.method public constructor <init>(Lcom/dolphin/browser/sync/e;)V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/dolphin/browser/sync/e;-><init>(Lcom/dolphin/browser/sync/e;)V

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/dolphin/browser/sync/w;->c:Ljava/lang/String;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/sync/w;->d:Ljava/util/List;

    .line 70
    invoke-static {}, Lcom/dolphin/browser/sync/w;->n()I

    move-result v0

    iput v0, p0, Lcom/dolphin/browser/sync/w;->b:I

    .line 71
    return-void
.end method

.method static b(Lorg/json/JSONObject;)Lcom/dolphin/browser/sync/w;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 75
    :try_start_0
    new-instance v1, Lcom/dolphin/browser/sync/w;

    invoke-static {p0}, Lcom/dolphin/browser/sync/e;->a(Lorg/json/JSONObject;)Lcom/dolphin/browser/sync/e;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/dolphin/browser/sync/w;-><init>(Lcom/dolphin/browser/sync/e;)V

    .line 76
    const-string v2, "type"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/dolphin/browser/sync/w;->a:I

    .line 78
    const-string v2, "payload"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 79
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 80
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 81
    invoke-virtual {v1, v3}, Lcom/dolphin/browser/sync/w;->d(Ljava/lang/String;)V

    .line 84
    const-string v3, "devicetype"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/dolphin/browser/sync/w;->e(I)V

    .line 86
    const-string v3, "tabs"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 88
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v2, v0

    .line 89
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-ge v2, v0, :cond_0

    .line 91
    :try_start_1
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 92
    invoke-static {v0}, Lcom/dolphin/browser/sync/ar;->a(Lorg/json/JSONObject;)Lcom/dolphin/browser/sync/ar;

    move-result-object v5

    .line 93
    invoke-virtual {v1}, Lcom/dolphin/browser/sync/w;->e()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/dolphin/browser/sync/ar;->c(Ljava/lang/String;)V

    .line 94
    invoke-static {v0}, Lcom/dolphin/browser/sync/ar;->a(Lorg/json/JSONObject;)Lcom/dolphin/browser/sync/ar;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 89
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 95
    :catch_0
    move-exception v0

    .line 96
    :try_start_2
    const-string v5, "DeviceItem"

    invoke-static {v5, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 107
    :catch_1
    move-exception v0

    .line 108
    const-string v1, "DeviceItem"

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 111
    const/4 v0, 0x0

    :goto_2
    return-object v0

    .line 100
    :cond_0
    :try_start_3
    invoke-virtual {v1, v4}, Lcom/dolphin/browser/sync/w;->a(Ljava/util/List;)V

    :goto_3
    move-object v0, v1

    .line 106
    goto :goto_2

    .line 103
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/sync/w;->b(I)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3
.end method

.method private static n()I
    .locals 2

    .prologue
    .line 226
    invoke-static {}, Lcom/dolphin/browser/sync/ai;->a()Lcom/dolphin/browser/sync/ai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/sync/ai;->d()Landroid/content/Context;

    move-result-object v0

    .line 227
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 228
    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    .line 229
    const/4 v1, 0x4

    if-eq v1, v0, :cond_0

    const/4 v1, 0x3

    if-ne v1, v0, :cond_1

    .line 230
    :cond_0
    const/4 v0, 0x1

    .line 232
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method a()Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 39
    :try_start_0
    invoke-super {p0}, Lcom/dolphin/browser/sync/e;->a()Lorg/json/JSONObject;

    move-result-object v1

    .line 40
    const-string v0, "type"

    iget v2, p0, Lcom/dolphin/browser/sync/w;->a:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 42
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 43
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v0, p0, Lcom/dolphin/browser/sync/w;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/dolphin/browser/sync/w;->d:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/sync/ar;

    .line 45
    invoke-virtual {v0}, Lcom/dolphin/browser/sync/ar;->b()Lorg/json/JSONObject;

    move-result-object v0

    .line 46
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 43
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 49
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 50
    const-string v2, "name"

    iget-object v4, p0, Lcom/dolphin/browser/sync/w;->c:Ljava/lang/String;

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 51
    const-string v2, "tabs"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 52
    const-string v2, "devicetype"

    iget v3, p0, Lcom/dolphin/browser/sync/w;->b:I

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 54
    const-string v2, "payload"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 60
    :goto_1
    return-object v0

    .line 56
    :catch_0
    move-exception v0

    .line 57
    const-string v1, "DeviceItem"

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 60
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/sync/ar;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 207
    iput-object p1, p0, Lcom/dolphin/browser/sync/w;->d:Ljava/util/List;

    .line 208
    return-void
.end method

.method b()Landroid/content/ContentValues;
    .locals 2

    .prologue
    .line 185
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 186
    invoke-static {}, Lcom/dolphin/browser/sync/ao;->a()Lcom/dolphin/browser/sync/ao;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/sync/ao;->e()Lcom/dolphin/browser/sync/ag;

    move-result-object v1

    invoke-interface {v1, v0, p0}, Lcom/dolphin/browser/sync/ag;->a(Landroid/content/ContentValues;Ljava/lang/Object;)Landroid/content/ContentValues;

    move-result-object v0

    .line 187
    return-object v0
.end method

.method public d(I)V
    .locals 0

    .prologue
    .line 191
    iput p1, p0, Lcom/dolphin/browser/sync/w;->a:I

    .line 192
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Lcom/dolphin/browser/sync/w;->c:Ljava/lang/String;

    .line 200
    return-void
.end method

.method public e(I)V
    .locals 0

    .prologue
    .line 219
    iput p1, p0, Lcom/dolphin/browser/sync/w;->b:I

    .line 220
    return-void
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/dolphin/browser/sync/w;->c:Ljava/lang/String;

    return-object v0
.end method

.method public l()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/sync/ar;",
            ">;"
        }
    .end annotation

    .prologue
    .line 211
    iget-object v0, p0, Lcom/dolphin/browser/sync/w;->d:Ljava/util/List;

    return-object v0
.end method

.method public m()I
    .locals 1

    .prologue
    .line 215
    iget v0, p0, Lcom/dolphin/browser/sync/w;->b:I

    return v0
.end method
