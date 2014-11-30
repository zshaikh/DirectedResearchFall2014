.class public interface abstract Lcom/dolphin/browser/sync/ag;
.super Ljava/lang/Object;
.source "SyncClientDataStore.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract a(Landroid/content/ContentValues;Ljava/lang/Object;)Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentValues;",
            "TT;)",
            "Landroid/content/ContentValues;"
        }
    .end annotation
.end method

.method public abstract a()Ljava/lang/String;
.end method

.method public abstract a(Lorg/json/JSONObject;Ljava/lang/Object;)Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "TT;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation
.end method

.method public abstract a(Lcom/dolphin/browser/sync/k;)V
.end method

.method public abstract a(Lcom/dolphin/browser/sync/k;Landroid/database/sqlite/SQLiteDatabase;)Z
.end method

.method public abstract a(Lcom/dolphin/browser/sync/k;Landroid/database/sqlite/SQLiteDatabase;Ljava/util/HashMap;Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dolphin/browser/sync/k;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "TT;>;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract b()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end method

.method public abstract b(Lcom/dolphin/browser/sync/k;Landroid/database/sqlite/SQLiteDatabase;)V
.end method

.method public abstract c(Lcom/dolphin/browser/sync/k;Landroid/database/sqlite/SQLiteDatabase;)V
.end method
