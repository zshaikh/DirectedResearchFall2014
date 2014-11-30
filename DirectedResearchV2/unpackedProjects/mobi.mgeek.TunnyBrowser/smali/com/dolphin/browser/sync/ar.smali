.class public Lcom/dolphin/browser/sync/ar;
.super Ljava/lang/Object;
.source "TabItem.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/dolphin/browser/sync/ar;->a:Ljava/lang/String;

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/dolphin/browser/sync/ar;->b:Ljava/lang/String;

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/dolphin/browser/sync/ar;->c:Ljava/lang/String;

    return-void
.end method

.method static a(Lorg/json/JSONObject;)Lcom/dolphin/browser/sync/ar;
    .locals 2

    .prologue
    .line 73
    :try_start_0
    new-instance v0, Lcom/dolphin/browser/sync/ar;

    invoke-direct {v0}, Lcom/dolphin/browser/sync/ar;-><init>()V

    .line 74
    const-string v1, "title"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/sync/ar;->a(Ljava/lang/String;)V

    .line 75
    const-string v1, "url"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/sync/ar;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :goto_0
    return-object v0

    .line 77
    :catch_0
    move-exception v0

    .line 78
    const-string v1, "TabItem"

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 81
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    const-string v0, "tabs"

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 140
    if-nez p1, :cond_0

    .line 141
    const-string p1, ""

    .line 144
    :cond_0
    iput-object p1, p0, Lcom/dolphin/browser/sync/ar;->a:Ljava/lang/String;

    .line 145
    return-void
.end method

.method b()Lorg/json/JSONObject;
    .locals 5

    .prologue
    const/16 v4, 0x400

    .line 48
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 49
    iget-object v1, p0, Lcom/dolphin/browser/sync/ar;->a:Ljava/lang/String;

    .line 50
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v4, :cond_0

    .line 51
    const/4 v2, 0x0

    const/16 v3, 0x400

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 54
    :cond_0
    const-string v2, "title"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 56
    invoke-virtual {p0}, Lcom/dolphin/browser/sync/ar;->d()Ljava/lang/String;

    move-result-object v1

    .line 57
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v4, :cond_1

    .line 58
    const/4 v2, 0x0

    const/16 v3, 0x400

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 61
    :cond_1
    const-string v2, "url"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :goto_0
    return-object v0

    .line 64
    :catch_0
    move-exception v0

    .line 65
    const-string v1, "TabItem"

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 68
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/dolphin/browser/sync/ar;->b:Ljava/lang/String;

    .line 155
    return-void
.end method

.method c()Landroid/content/ContentValues;
    .locals 3

    .prologue
    .line 120
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 121
    const-string v1, "title"

    iget-object v2, p0, Lcom/dolphin/browser/sync/ar;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const-string v1, "url"

    iget-object v2, p0, Lcom/dolphin/browser/sync/ar;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const-string v1, "deviceid"

    iget-object v2, p0, Lcom/dolphin/browser/sync/ar;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/dolphin/browser/sync/ar;->c:Ljava/lang/String;

    .line 159
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/dolphin/browser/sync/ar;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/sync/ar;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/dolphin/browser/sync/ar;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ==> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dolphin/browser/sync/ar;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
