.class public Lcom/google/android/imageloader/ContentURLStreamHandlerFactory;
.super Ljava/lang/Object;
.source "ContentURLStreamHandlerFactory.java"

# interfaces
.implements Ljava/net/URLStreamHandlerFactory;


# instance fields
.field private final mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 1
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    if-nez p1, :cond_0

    .line 34
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 36
    :cond_0
    iput-object p1, p0, Lcom/google/android/imageloader/ContentURLStreamHandlerFactory;->mResolver:Landroid/content/ContentResolver;

    .line 37
    return-void
.end method


# virtual methods
.method public createURLStreamHandler(Ljava/lang/String;)Ljava/net/URLStreamHandler;
    .locals 2
    .param p1, "protocol"    # Ljava/lang/String;

    .prologue
    .line 43
    const-string v0, "content"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    const-string v0, "file"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 45
    const-string v0, "android.resource"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 46
    :cond_0
    new-instance v0, Lcom/google/android/imageloader/ContentURLStreamHandler;

    iget-object v1, p0, Lcom/google/android/imageloader/ContentURLStreamHandlerFactory;->mResolver:Landroid/content/ContentResolver;

    invoke-direct {v0, v1}, Lcom/google/android/imageloader/ContentURLStreamHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 48
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
