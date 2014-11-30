.class Lcom/facebook/widget/ImageDownloader$RequestKey;
.super Ljava/lang/Object;


# static fields
.field private static final HASH_MULTIPLIER:I = 0x25

.field private static final HASH_SEED:I = 0x1d


# instance fields
.field tag:Ljava/lang/Object;

.field url:Ljava/net/URL;


# direct methods
.method constructor <init>(Ljava/net/URL;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/widget/ImageDownloader$RequestKey;->url:Ljava/net/URL;

    iput-object p2, p0, Lcom/facebook/widget/ImageDownloader$RequestKey;->tag:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    instance-of v0, p1, Lcom/facebook/widget/ImageDownloader$RequestKey;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/facebook/widget/ImageDownloader$RequestKey;

    iget-object v0, p1, Lcom/facebook/widget/ImageDownloader$RequestKey;->url:Ljava/net/URL;

    iget-object v1, p0, Lcom/facebook/widget/ImageDownloader$RequestKey;->url:Ljava/net/URL;

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lcom/facebook/widget/ImageDownloader$RequestKey;->tag:Ljava/lang/Object;

    iget-object v1, p0, Lcom/facebook/widget/ImageDownloader$RequestKey;->tag:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/facebook/widget/ImageDownloader$RequestKey;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x431

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/facebook/widget/ImageDownloader$RequestKey;->tag:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
