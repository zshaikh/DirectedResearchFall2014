.class final Lcom/twitter/android/provider/h;
.super Ljava/lang/Object;


# instance fields
.field private a:J

.field private b:Lcom/twitter/android/api/PromotedContent;


# direct methods
.method constructor <init>(JLcom/twitter/android/api/PromotedContent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/twitter/android/provider/h;->a:J

    iput-object p3, p0, Lcom/twitter/android/provider/h;->b:Lcom/twitter/android/api/PromotedContent;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lcom/twitter/android/provider/h;

    iget-wide v2, p0, Lcom/twitter/android/provider/h;->a:J

    iget-wide v4, p1, Lcom/twitter/android/provider/h;->a:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/twitter/android/provider/h;->b:Lcom/twitter/android/api/PromotedContent;

    if-eqz v2, :cond_5

    iget-object v0, p0, Lcom/twitter/android/provider/h;->b:Lcom/twitter/android/api/PromotedContent;

    iget-object v1, p1, Lcom/twitter/android/provider/h;->b:Lcom/twitter/android/api/PromotedContent;

    invoke-virtual {v0, v1}, Lcom/twitter/android/api/PromotedContent;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_5
    iget-object v2, p1, Lcom/twitter/android/provider/h;->b:Lcom/twitter/android/api/PromotedContent;

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 5

    iget-wide v0, p0, Lcom/twitter/android/provider/h;->a:J

    iget-wide v2, p0, Lcom/twitter/android/provider/h;->a:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/twitter/android/provider/h;->b:Lcom/twitter/android/api/PromotedContent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/provider/h;->b:Lcom/twitter/android/api/PromotedContent;

    invoke-virtual {v0}, Lcom/twitter/android/api/PromotedContent;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
