.class Lcom/facebook/widget/ImageResponse;
.super Ljava/lang/Object;


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private error:Ljava/lang/Exception;

.field private isCachedRedirect:Z

.field private request:Lcom/facebook/widget/ImageRequest;


# direct methods
.method constructor <init>(Lcom/facebook/widget/ImageRequest;Ljava/lang/Exception;ZLandroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/widget/ImageResponse;->request:Lcom/facebook/widget/ImageRequest;

    iput-object p2, p0, Lcom/facebook/widget/ImageResponse;->error:Ljava/lang/Exception;

    iput-object p4, p0, Lcom/facebook/widget/ImageResponse;->bitmap:Landroid/graphics/Bitmap;

    iput-boolean p3, p0, Lcom/facebook/widget/ImageResponse;->isCachedRedirect:Z

    return-void
.end method


# virtual methods
.method getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/facebook/widget/ImageResponse;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method getError()Ljava/lang/Exception;
    .locals 1

    iget-object v0, p0, Lcom/facebook/widget/ImageResponse;->error:Ljava/lang/Exception;

    return-object v0
.end method

.method getRequest()Lcom/facebook/widget/ImageRequest;
    .locals 1

    iget-object v0, p0, Lcom/facebook/widget/ImageResponse;->request:Lcom/facebook/widget/ImageRequest;

    return-object v0
.end method

.method isCachedRedirect()Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/widget/ImageResponse;->isCachedRedirect:Z

    return v0
.end method
