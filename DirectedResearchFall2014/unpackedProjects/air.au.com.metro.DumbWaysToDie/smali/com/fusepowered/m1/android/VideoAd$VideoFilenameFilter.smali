.class Lcom/fusepowered/m1/android/VideoAd$VideoFilenameFilter;
.super Ljava/lang/Object;
.source "VideoAd.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/m1/android/VideoAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VideoFilenameFilter"
.end annotation


# instance fields
.field private videoAdRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/fusepowered/m1/android/VideoAd;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/fusepowered/m1/android/VideoAd;)V
    .locals 1
    .parameter "videoAd"

    .prologue
    .line 461
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 462
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/fusepowered/m1/android/VideoAd$VideoFilenameFilter;->videoAdRef:Ljava/lang/ref/WeakReference;

    .line 463
    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 4
    .parameter "dir"
    .parameter "filename"

    .prologue
    const/4 v3, 0x0

    .line 468
    iget-object v2, p0, Lcom/fusepowered/m1/android/VideoAd$VideoFilenameFilter;->videoAdRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fusepowered/m1/android/VideoAd;

    .line 469
    .local v1, videoAd:Lcom/fusepowered/m1/android/VideoAd;
    if-eqz v1, :cond_1

    .line 471
    invoke-virtual {v1}, Lcom/fusepowered/m1/android/VideoAd;->getId()Ljava/lang/String;

    move-result-object v0

    .line 472
    .local v0, id:Ljava/lang/String;
    if-nez v0, :cond_0

    move v2, v3

    .line 476
    .end local v0           #id:Ljava/lang/String;
    :goto_0
    return v2

    .line 474
    .restart local v0       #id:Ljava/lang/String;
    :cond_0
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    goto :goto_0

    .end local v0           #id:Ljava/lang/String;
    :cond_1
    move v2, v3

    .line 476
    goto :goto_0
.end method
