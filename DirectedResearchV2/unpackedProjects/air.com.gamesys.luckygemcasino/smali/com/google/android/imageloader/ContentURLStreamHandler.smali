.class Lcom/google/android/imageloader/ContentURLStreamHandler;
.super Ljava/net/URLStreamHandler;
.source "ContentURLStreamHandler.java"


# instance fields
.field private final mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 1
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/net/URLStreamHandler;-><init>()V

    .line 34
    if-nez p1, :cond_0

    .line 35
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 37
    :cond_0
    iput-object p1, p0, Lcom/google/android/imageloader/ContentURLStreamHandler;->mResolver:Landroid/content/ContentResolver;

    .line 38
    return-void
.end method


# virtual methods
.method protected openConnection(Ljava/net/URL;)Ljava/net/URLConnection;
    .locals 2
    .param p1, "url"    # Ljava/net/URL;

    .prologue
    .line 42
    new-instance v0, Lcom/google/android/imageloader/ContentURLConnection;

    iget-object v1, p0, Lcom/google/android/imageloader/ContentURLStreamHandler;->mResolver:Landroid/content/ContentResolver;

    invoke-direct {v0, v1, p1}, Lcom/google/android/imageloader/ContentURLConnection;-><init>(Landroid/content/ContentResolver;Ljava/net/URL;)V

    return-object v0
.end method
