.class Lcom/dolphin/browser/promoted/impl/a;
.super Ljava/lang/Object;
.source "AddShortcutPromotionImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/promoted/impl/AddShortcutPromotionImpl;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/promoted/impl/AddShortcutPromotionImpl;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/dolphin/browser/promoted/impl/a;->a:Lcom/dolphin/browser/promoted/impl/AddShortcutPromotionImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 74
    new-instance v0, Lcom/dolphin/browser/preload/n;

    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dolphin/browser/preload/n;-><init>(Landroid/content/Context;)V

    .line 75
    invoke-virtual {v0}, Lcom/dolphin/browser/preload/n;->j()Ljava/lang/String;

    move-result-object v0

    .line 77
    if-nez v0, :cond_1

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    const/4 v2, 0x0

    .line 83
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :goto_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 88
    :cond_2
    invoke-static {}, Lcom/dolphin/browser/util/bn;->a()Lcom/dolphin/browser/util/bn;

    move-result-object v0

    .line 89
    invoke-virtual {v0}, Lcom/dolphin/browser/util/bn;->c()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 90
    invoke-static {v2}, Lcom/dolphin/browser/search/h;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 91
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v2

    const-string v3, "preload_yandex"

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/util/bn;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/dolphin/browser/util/IOUtilities;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 94
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 95
    const-string v0, "launcher_shortcuts"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 102
    :goto_2
    if-eqz v0, :cond_0

    .line 105
    invoke-static {v0}, Lcom/dolphin/browser/preload/a/d;->a(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v0

    .line 106
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v1

    invoke-static {v1}, Lcom/dolphin/browser/preload/f;->a(Landroid/content/Context;)Lcom/dolphin/browser/preload/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/preload/f;->a(Ljava/util/List;)V

    goto :goto_0

    .line 84
    :catch_0
    move-exception v0

    .line 85
    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;)I

    move-object v1, v2

    goto :goto_1

    .line 96
    :catch_1
    move-exception v0

    .line 97
    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;)I

    :cond_3
    move-object v0, v1

    goto :goto_2
.end method
