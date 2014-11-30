.class public Lcom/gamesys/android/tools/ane/cache/ImageManager;
.super Ljava/lang/Object;
.source "ImageManager.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/gamesys/android/tools/ane/cache/ImageManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gamesys/android/tools/ane/cache/ImageManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getImageFromUrl(Landroid/content/Context;Ljava/lang/String;Lcom/gamesys/android/tools/ane/cache/IBitmapCreation;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/gamesys/android/tools/ane/cache/IBitmapCreation;

    .prologue
    .line 30
    invoke-static {p0}, Lcom/gamesys/android/tools/ane/ToolsExtension;->getImageLoader(Landroid/content/Context;)Lcom/google/android/imageloader/ImageLoader;

    move-result-object v2

    .line 32
    .local v2, "imageLoader":Lcom/google/android/imageloader/ImageLoader;
    new-instance v0, Lcom/gamesys/android/tools/ane/cache/ImageManager$1;

    invoke-direct {v0, p2}, Lcom/gamesys/android/tools/ane/cache/ImageManager$1;-><init>(Lcom/gamesys/android/tools/ane/cache/IBitmapCreation;)V

    .line 56
    .local v0, "callback":Lcom/google/android/imageloader/ImageLoader$Callback;
    :try_start_0
    sget-object v3, Lcom/gamesys/android/tools/ane/cache/ImageManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Retrieving this picture : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-virtual {v2, p1, v0}, Lcom/google/android/imageloader/ImageLoader;->bind(Ljava/lang/String;Lcom/google/android/imageloader/ImageLoader$Callback;)Lcom/google/android/imageloader/ImageLoader$BindResult;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :goto_0
    return-void

    .line 61
    :catch_0
    move-exception v1

    .line 62
    .local v1, "e":Ljava/lang/NullPointerException;
    sget-object v3, Lcom/gamesys/android/tools/ane/cache/ImageManager;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
