.class final Lcom/vungle/sdk/a;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Lcom/vungle/sdk/VungleBitmapFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/sdk/a$a;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/vungle/sdk/a;-><init>()V

    return-void
.end method

.method public static a()Lcom/vungle/sdk/a;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/vungle/sdk/a$a;->a:Lcom/vungle/sdk/a;

    return-object v0
.end method


# virtual methods
.method public final getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 23
    invoke-static {}, Lcom/vungle/sdk/n;->e()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
