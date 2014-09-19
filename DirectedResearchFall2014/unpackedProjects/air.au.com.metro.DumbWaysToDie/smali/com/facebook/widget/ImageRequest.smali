.class Lcom/facebook/widget/ImageRequest;
.super Ljava/lang/Object;


# static fields
.field private static final HEIGHT_PARAM:Ljava/lang/String; = "height"

.field private static final MIGRATION_PARAM:Ljava/lang/String; = "migration_overrides"

.field private static final MIGRATION_VALUE:Ljava/lang/String; = "{october_2012:true}"

.field private static final PROFILEPIC_URL_FORMAT:Ljava/lang/String; = "https://graph.facebook.com/%s/picture"

.field static final UNSPECIFIED_DIMENSION:I = 0x0

.field private static final WIDTH_PARAM:Ljava/lang/String; = "width"


# instance fields
.field private allowCachedRedirects:Z

.field private callback:Lcom/facebook/widget/ImageRequest$Callback;

.field private callerTag:Ljava/lang/Object;

.field private context:Landroid/content/Context;

.field private imageUrl:Ljava/net/URL;


# direct methods
.method private constructor <init>(Lcom/facebook/widget/ImageRequest$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #getter for: Lcom/facebook/widget/ImageRequest$Builder;->context:Landroid/content/Context;
    invoke-static {p1}, Lcom/facebook/widget/ImageRequest$Builder;->access$000(Lcom/facebook/widget/ImageRequest$Builder;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/widget/ImageRequest;->context:Landroid/content/Context;

    #getter for: Lcom/facebook/widget/ImageRequest$Builder;->imageUrl:Ljava/net/URL;
    invoke-static {p1}, Lcom/facebook/widget/ImageRequest$Builder;->access$100(Lcom/facebook/widget/ImageRequest$Builder;)Ljava/net/URL;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/widget/ImageRequest;->imageUrl:Ljava/net/URL;

    #getter for: Lcom/facebook/widget/ImageRequest$Builder;->callback:Lcom/facebook/widget/ImageRequest$Callback;
    invoke-static {p1}, Lcom/facebook/widget/ImageRequest$Builder;->access$200(Lcom/facebook/widget/ImageRequest$Builder;)Lcom/facebook/widget/ImageRequest$Callback;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/widget/ImageRequest;->callback:Lcom/facebook/widget/ImageRequest$Callback;

    #getter for: Lcom/facebook/widget/ImageRequest$Builder;->allowCachedRedirects:Z
    invoke-static {p1}, Lcom/facebook/widget/ImageRequest$Builder;->access$300(Lcom/facebook/widget/ImageRequest$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/widget/ImageRequest;->allowCachedRedirects:Z

    #getter for: Lcom/facebook/widget/ImageRequest$Builder;->callerTag:Ljava/lang/Object;
    invoke-static {p1}, Lcom/facebook/widget/ImageRequest$Builder;->access$400(Lcom/facebook/widget/ImageRequest$Builder;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    :goto_0
    iput-object v0, p0, Lcom/facebook/widget/ImageRequest;->callerTag:Ljava/lang/Object;

    return-void

    :cond_0
    #getter for: Lcom/facebook/widget/ImageRequest$Builder;->callerTag:Ljava/lang/Object;
    invoke-static {p1}, Lcom/facebook/widget/ImageRequest$Builder;->access$400(Lcom/facebook/widget/ImageRequest$Builder;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/facebook/widget/ImageRequest$Builder;Lcom/facebook/widget/ImageRequest$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/facebook/widget/ImageRequest;-><init>(Lcom/facebook/widget/ImageRequest$Builder;)V

    return-void
.end method

.method static getProfilePictureUrl(Ljava/lang/String;II)Ljava/net/URL;
    .locals 6

    const/4 v5, 0x0

    const-string v0, "userId"

    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {p2, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Either width or height must be greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v2, Landroid/net/Uri$Builder;

    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    const-string v3, "https://graph.facebook.com/%s/picture"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->encodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    if-eqz v1, :cond_1

    const-string v3, "height"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_1
    if-eqz v0, :cond_2

    const-string v1, "width"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_2
    const-string v0, "migration_overrides"

    const-string v1, "{october_2012:true}"

    invoke-virtual {v2, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    new-instance v0, Ljava/net/URL;

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method getCallback()Lcom/facebook/widget/ImageRequest$Callback;
    .locals 1

    iget-object v0, p0, Lcom/facebook/widget/ImageRequest;->callback:Lcom/facebook/widget/ImageRequest$Callback;

    return-object v0
.end method

.method getCallerTag()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/facebook/widget/ImageRequest;->callerTag:Ljava/lang/Object;

    return-object v0
.end method

.method getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/facebook/widget/ImageRequest;->context:Landroid/content/Context;

    return-object v0
.end method

.method getImageUrl()Ljava/net/URL;
    .locals 1

    iget-object v0, p0, Lcom/facebook/widget/ImageRequest;->imageUrl:Ljava/net/URL;

    return-object v0
.end method

.method isCachedRedirectAllowed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/widget/ImageRequest;->allowCachedRedirects:Z

    return v0
.end method
