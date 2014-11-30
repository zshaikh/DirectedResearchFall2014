.class public Lcom/dolphin/browser/sync/as;
.super Ljava/lang/Object;
.source "TabSyncClientStore.java"

# interfaces
.implements Lcom/dolphin/browser/sync/ag;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/dolphin/browser/sync/ag",
        "<",
        "Lcom/dolphin/browser/sync/ar;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/ContentValues;Lcom/dolphin/browser/sync/ar;)Landroid/content/ContentValues;
    .locals 0

    .prologue
    .line 77
    return-object p1
.end method

.method public bridge synthetic a(Landroid/content/ContentValues;Ljava/lang/Object;)Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 16
    check-cast p2, Lcom/dolphin/browser/sync/ar;

    invoke-virtual {p0, p1, p2}, Lcom/dolphin/browser/sync/as;->a(Landroid/content/ContentValues;Lcom/dolphin/browser/sync/ar;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    const-string v0, "tabs"

    return-object v0
.end method

.method public a(Lorg/json/JSONObject;Lcom/dolphin/browser/sync/ar;)Lorg/json/JSONObject;
    .locals 0

    .prologue
    .line 72
    return-object p1
.end method

.method public bridge synthetic a(Lorg/json/JSONObject;Ljava/lang/Object;)Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 16
    check-cast p2, Lcom/dolphin/browser/sync/ar;

    invoke-virtual {p0, p1, p2}, Lcom/dolphin/browser/sync/as;->a(Lorg/json/JSONObject;Lcom/dolphin/browser/sync/ar;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/dolphin/browser/sync/k;)V
    .locals 0

    .prologue
    .line 54
    return-void
.end method

.method public a(Lcom/dolphin/browser/sync/k;Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x1

    return v0
.end method

.method public a(Lcom/dolphin/browser/sync/k;Landroid/database/sqlite/SQLiteDatabase;Ljava/util/HashMap;Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dolphin/browser/sync/k;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/dolphin/browser/sync/ar;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 49
    const/4 v0, 0x1

    return v0
.end method

.method public b()Ljava/util/List;
    .locals 8
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
    .line 20
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 21
    invoke-static {}, Lcom/dolphin/browser/core/TabManager;->getInstance()Lcom/dolphin/browser/core/TabManager;

    move-result-object v2

    .line 22
    if-nez v2, :cond_0

    move-object v0, v1

    .line 42
    :goto_0
    return-object v0

    .line 25
    :cond_0
    invoke-virtual {v2}, Lcom/dolphin/browser/core/TabManager;->getTabCount()I

    move-result v3

    .line 26
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 27
    invoke-static {}, Lcom/dolphin/browser/sync/at;->t()Lcom/dolphin/browser/sync/at;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/sync/at;->b()Lcom/dolphin/browser/sync/k;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/sync/au;

    invoke-virtual {v0}, Lcom/dolphin/browser/sync/au;->o()Ljava/lang/String;

    move-result-object v4

    .line 28
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_2

    .line 29
    invoke-virtual {v2, v0}, Lcom/dolphin/browser/core/TabManager;->getTab(I)Lcom/dolphin/browser/core/ITab;

    move-result-object v5

    .line 30
    if-eqz v5, :cond_1

    .line 31
    invoke-interface {v5}, Lcom/dolphin/browser/core/ITab;->getUrl()Ljava/lang/String;

    move-result-object v6

    .line 32
    if-eqz v6, :cond_1

    .line 33
    invoke-interface {v5}, Lcom/dolphin/browser/core/ITab;->getTitle()Ljava/lang/String;

    move-result-object v5

    .line 34
    new-instance v7, Lcom/dolphin/browser/sync/ar;

    invoke-direct {v7}, Lcom/dolphin/browser/sync/ar;-><init>()V

    .line 35
    invoke-virtual {v7, v5}, Lcom/dolphin/browser/sync/ar;->a(Ljava/lang/String;)V

    .line 36
    invoke-virtual {v7, v6}, Lcom/dolphin/browser/sync/ar;->b(Ljava/lang/String;)V

    .line 37
    invoke-virtual {v7, v4}, Lcom/dolphin/browser/sync/ar;->c(Ljava/lang/String;)V

    .line 38
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 42
    goto :goto_0
.end method

.method public b(Lcom/dolphin/browser/sync/k;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .prologue
    .line 59
    return-void
.end method

.method public c(Lcom/dolphin/browser/sync/k;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .prologue
    .line 63
    return-void
.end method
