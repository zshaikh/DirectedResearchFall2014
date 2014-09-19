.class Lcom/facebook/widget/ImageRequest$Builder;
.super Ljava/lang/Object;


# instance fields
.field private allowCachedRedirects:Z

.field private callback:Lcom/facebook/widget/ImageRequest$Callback;

.field private callerTag:Ljava/lang/Object;

.field private context:Landroid/content/Context;

.field private imageUrl:Ljava/net/URL;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/net/URL;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "imageUrl"

    invoke-static {p2, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/facebook/widget/ImageRequest$Builder;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/facebook/widget/ImageRequest$Builder;->imageUrl:Ljava/net/URL;

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/widget/ImageRequest$Builder;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/facebook/widget/ImageRequest$Builder;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/facebook/widget/ImageRequest$Builder;)Ljava/net/URL;
    .locals 1

    iget-object v0, p0, Lcom/facebook/widget/ImageRequest$Builder;->imageUrl:Ljava/net/URL;

    return-object v0
.end method

.method static synthetic access$200(Lcom/facebook/widget/ImageRequest$Builder;)Lcom/facebook/widget/ImageRequest$Callback;
    .locals 1

    iget-object v0, p0, Lcom/facebook/widget/ImageRequest$Builder;->callback:Lcom/facebook/widget/ImageRequest$Callback;

    return-object v0
.end method

.method static synthetic access$300(Lcom/facebook/widget/ImageRequest$Builder;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/widget/ImageRequest$Builder;->allowCachedRedirects:Z

    return v0
.end method

.method static synthetic access$400(Lcom/facebook/widget/ImageRequest$Builder;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/facebook/widget/ImageRequest$Builder;->callerTag:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method build()Lcom/facebook/widget/ImageRequest;
    .locals 2

    new-instance v0, Lcom/facebook/widget/ImageRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/widget/ImageRequest;-><init>(Lcom/facebook/widget/ImageRequest$Builder;Lcom/facebook/widget/ImageRequest$1;)V

    return-object v0
.end method

.method setAllowCachedRedirects(Z)Lcom/facebook/widget/ImageRequest$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/facebook/widget/ImageRequest$Builder;->allowCachedRedirects:Z

    return-object p0
.end method

.method setCallback(Lcom/facebook/widget/ImageRequest$Callback;)Lcom/facebook/widget/ImageRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/facebook/widget/ImageRequest$Builder;->callback:Lcom/facebook/widget/ImageRequest$Callback;

    return-object p0
.end method

.method setCallerTag(Ljava/lang/Object;)Lcom/facebook/widget/ImageRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/facebook/widget/ImageRequest$Builder;->callerTag:Ljava/lang/Object;

    return-object p0
.end method
