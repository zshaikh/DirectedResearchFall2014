.class final Lcom/fusepowered/m1/android/AdCache$4;
.super Lcom/fusepowered/m1/android/AdCache$Iterator;
.source "AdCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/m1/android/AdCache;->cleanUpExpiredAds(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 445
    iput-object p1, p0, Lcom/fusepowered/m1/android/AdCache$4;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/fusepowered/m1/android/AdCache$Iterator;-><init>()V

    return-void
.end method


# virtual methods
.method callback(Ljava/lang/String;ILjava/util/Date;Ljava/lang/String;JLjava/io/ObjectInputStream;)Z
    .locals 8
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "expiration"    # Ljava/util/Date;
    .param p4, "acid"    # Ljava/lang/String;
    .param p5, "deferredViewStart"    # J
    .param p7, "objectInputStream"    # Ljava/io/ObjectInputStream;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 449
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    .line 454
    :try_start_0
    invoke-virtual {p7}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/m1/android/CachedAd;

    .line 456
    .local v0, "ad":Lcom/fusepowered/m1/android/CachedAd;
    const-string v2, "Deleting expired ad %s."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/fusepowered/m1/android/CachedAd;->getId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/fusepowered/m1/android/MMSDK$Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 457
    iget-object v2, p0, Lcom/fusepowered/m1/android/AdCache$4;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/fusepowered/m1/android/CachedAd;->delete(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 465
    .end local v0    # "ad":Lcom/fusepowered/m1/android/CachedAd;
    :cond_0
    :goto_0
    return v6

    .line 459
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 461
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "There was a problem reading the cached ad %s."

    new-array v3, v6, [Ljava/lang/Object;

    aput-object p1, v3, v7

    invoke-static {v2, v3}, Lcom/fusepowered/m1/android/MMSDK$Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 462
    invoke-static {v1}, Lcom/fusepowered/m1/android/MMSDK$Log;->d(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
