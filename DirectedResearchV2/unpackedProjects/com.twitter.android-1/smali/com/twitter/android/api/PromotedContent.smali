.class public Lcom/twitter/android/api/PromotedContent;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x15dc09a5a1d4d172L


# instance fields
.field public disclosureType:Ljava/lang/String;

.field public impressionId:Ljava/lang/String;

.field public promotedTrendId:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lorg/codehaus/jackson/JsonParser;)Lcom/twitter/android/api/PromotedContent;
    .locals 4

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->g()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    new-instance v1, Lcom/twitter/android/api/PromotedContent;

    invoke-direct {v1}, Lcom/twitter/android/api/PromotedContent;-><init>()V

    :goto_0
    sget-object v2, Lorg/codehaus/jackson/JsonToken;->b:Lorg/codehaus/jackson/JsonToken;

    if-eq v0, v2, :cond_2

    sget-object v2, Lcom/twitter/android/api/l;->a:[I

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_1
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->g()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->h()Lorg/codehaus/jackson/JsonParser;

    goto :goto_1

    :pswitch_1
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->m()Ljava/lang/String;

    move-result-object v0

    const-string v2, "impression_id"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/twitter/android/api/PromotedContent;->impressionId:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const-string v2, "disclosure_type"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/twitter/android/api/PromotedContent;->disclosureType:Ljava/lang/String;

    goto :goto_1

    :pswitch_2
    const-string v0, "promoted_trend_id"

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->e()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/twitter/android/api/PromotedContent;->promotedTrendId:J

    goto :goto_1

    :cond_2
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public final a()Z
    .locals 2

    const-string v0, "political"

    iget-object v1, p0, Lcom/twitter/android/api/PromotedContent;->disclosureType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
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
    check-cast p1, Lcom/twitter/android/api/PromotedContent;

    iget-object v2, p0, Lcom/twitter/android/api/PromotedContent;->impressionId:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-wide v2, p0, Lcom/twitter/android/api/PromotedContent;->promotedTrendId:J

    iget-wide v4, p1, Lcom/twitter/android/api/PromotedContent;->promotedTrendId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/twitter/android/api/PromotedContent;->impressionId:Ljava/lang/String;

    iget-object v3, p1, Lcom/twitter/android/api/PromotedContent;->impressionId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    iget-wide v2, p0, Lcom/twitter/android/api/PromotedContent;->promotedTrendId:J

    iget-wide v4, p1, Lcom/twitter/android/api/PromotedContent;->promotedTrendId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_6

    iget-object v2, p1, Lcom/twitter/android/api/PromotedContent;->impressionId:Ljava/lang/String;

    if-eqz v2, :cond_0

    :cond_6
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 6

    iget-object v0, p0, Lcom/twitter/android/api/PromotedContent;->impressionId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/api/PromotedContent;->impressionId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/twitter/android/api/PromotedContent;->promotedTrendId:J

    iget-wide v3, p0, Lcom/twitter/android/api/PromotedContent;->promotedTrendId:J

    const/16 v5, 0x20

    ushr-long/2addr v3, v5

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
