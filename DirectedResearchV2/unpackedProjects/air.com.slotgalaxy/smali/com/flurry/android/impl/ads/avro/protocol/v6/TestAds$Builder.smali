.class public Lcom/flurry/android/impl/ads/avro/protocol/v6/TestAds$Builder;
.super Lcom/flurry/android/monolithic/sdk/impl/nv;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/android/monolithic/sdk/impl/nv",
        "<",
        "Lcom/flurry/android/impl/ads/avro/protocol/v6/TestAds;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/flurry/android/impl/ads/avro/protocol/v6/TestAds;->SCHEMA$:Lcom/flurry/android/monolithic/sdk/impl/ji;

    invoke-direct {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/nv;-><init>(Lcom/flurry/android/monolithic/sdk/impl/ji;)V

    .line 69
    return-void
.end method

.method synthetic constructor <init>(Lcom/flurry/android/impl/ads/avro/protocol/v6/TestAds$1;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v6/TestAds$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Lcom/flurry/android/impl/ads/avro/protocol/v6/TestAds$Builder;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 92
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v6/TestAds$Builder;->b()[Lcom/flurry/android/monolithic/sdk/impl/js;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/flurry/android/impl/ads/avro/protocol/v6/TestAds$Builder;->a(Lcom/flurry/android/monolithic/sdk/impl/js;Ljava/lang/Object;)V

    .line 93
    iput p1, p0, Lcom/flurry/android/impl/ads/avro/protocol/v6/TestAds$Builder;->a:I

    .line 94
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v6/TestAds$Builder;->c()[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 95
    return-object p0
.end method

.method public a()Lcom/flurry/android/impl/ads/avro/protocol/v6/TestAds;
    .locals 3

    .prologue
    .line 112
    :try_start_0
    new-instance v0, Lcom/flurry/android/impl/ads/avro/protocol/v6/TestAds;

    invoke-direct {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v6/TestAds;-><init>()V

    .line 113
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v6/TestAds$Builder;->c()[Z

    move-result-object v1

    const/4 v2, 0x0

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/flurry/android/impl/ads/avro/protocol/v6/TestAds$Builder;->a:I

    :goto_0
    iput v1, v0, Lcom/flurry/android/impl/ads/avro/protocol/v6/TestAds;->a:I

    .line 114
    return-object v0

    .line 113
    :cond_0
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v6/TestAds$Builder;->b()[Lcom/flurry/android/monolithic/sdk/impl/js;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/flurry/android/impl/ads/avro/protocol/v6/TestAds$Builder;->a(Lcom/flurry/android/monolithic/sdk/impl/js;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 115
    :catch_0
    move-exception v0

    .line 116
    new-instance v1, Lcom/flurry/android/monolithic/sdk/impl/jg;

    invoke-direct {v1, v0}, Lcom/flurry/android/monolithic/sdk/impl/jg;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
