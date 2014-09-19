.class final Lcom/fusepowered/m1/android/AdCache$3;
.super Ljava/lang/Object;
.source "AdCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/m1/android/AdCache;->cleanCache(Landroid/content/Context;)V
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
    .parameter

    .prologue
    .line 430
    iput-object p1, p0, Lcom/fusepowered/m1/android/AdCache$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 434
    const-string v0, "AdCache"

    invoke-static {v0}, Lcom/fusepowered/m1/android/MMSDK$Log;->d(Ljava/lang/String;)V

    .line 435
    iget-object v0, p0, Lcom/fusepowered/m1/android/AdCache$3;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/fusepowered/m1/android/AdCache;->cleanUpExpiredAds(Landroid/content/Context;)V

    .line 436
    iget-object v0, p0, Lcom/fusepowered/m1/android/AdCache$3;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/fusepowered/m1/android/AdCache;->cleanupCache(Landroid/content/Context;)V

    .line 437
    return-void
.end method
