.class public Lcom/flurry/android/impl/ads/avro/protocol/v6/AdSpaceLayout;
.super Lcom/flurry/android/monolithic/sdk/impl/nu;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/android/monolithic/sdk/impl/nt;


# static fields
.field public static final SCHEMA$:Lcom/flurry/android/monolithic/sdk/impl/ji;


# instance fields
.field public a:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public b:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public c:Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public d:Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public e:Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 9
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/ke;

    invoke-direct {v0}, Lcom/flurry/android/monolithic/sdk/impl/ke;-><init>()V

    const-string v1, "{\"type\":\"record\",\"name\":\"AdSpaceLayout\",\"namespace\":\"com.flurry.android.impl.ads.avro.protocol.v6\",\"fields\":[{\"name\":\"adWidth\",\"type\":\"int\"},{\"name\":\"adHeight\",\"type\":\"int\"},{\"name\":\"fix\",\"type\":\"string\"},{\"name\":\"format\",\"type\":\"string\"},{\"name\":\"alignment\",\"type\":\"string\"}]}"

    invoke-virtual {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/ke;->a(Ljava/lang/String;)Lcom/flurry/android/monolithic/sdk/impl/ji;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdSpaceLayout;->SCHEMA$:Lcom/flurry/android/monolithic/sdk/impl/ji;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/flurry/android/monolithic/sdk/impl/nu;-><init>()V

    .line 133
    return-void
.end method


# virtual methods
.method public a()Lcom/flurry/android/monolithic/sdk/impl/ji;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdSpaceLayout;->SCHEMA$:Lcom/flurry/android/monolithic/sdk/impl/ji;

    return-object v0
.end method

.method public a(I)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 18
    packed-switch p1, :pswitch_data_0

    .line 24
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/jg;

    const-string v1, "Bad index"

    invoke-direct {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/jg;-><init>(Ljava/lang/String;)V

    throw v0

    .line 19
    :pswitch_0
    iget v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdSpaceLayout;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 23
    :goto_0
    return-object v0

    .line 20
    :pswitch_1
    iget v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdSpaceLayout;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 21
    :pswitch_2
    iget-object v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdSpaceLayout;->c:Ljava/lang/CharSequence;

    goto :goto_0

    .line 22
    :pswitch_3
    iget-object v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdSpaceLayout;->d:Ljava/lang/CharSequence;

    goto :goto_0

    .line 23
    :pswitch_4
    iget-object v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdSpaceLayout;->e:Ljava/lang/CharSequence;

    goto :goto_0

    .line 18
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public a(ILjava/lang/Object;)V
    .locals 2

    .prologue
    .line 30
    packed-switch p1, :pswitch_data_0

    .line 36
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/jg;

    const-string v1, "Bad index"

    invoke-direct {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/jg;-><init>(Ljava/lang/String;)V

    throw v0

    .line 31
    :pswitch_0
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdSpaceLayout;->a:I

    .line 38
    :goto_0
    return-void

    .line 32
    :pswitch_1
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdSpaceLayout;->b:I

    goto :goto_0

    .line 33
    :pswitch_2
    check-cast p2, Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdSpaceLayout;->c:Ljava/lang/CharSequence;

    goto :goto_0

    .line 34
    :pswitch_3
    check-cast p2, Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdSpaceLayout;->d:Ljava/lang/CharSequence;

    goto :goto_0

    .line 35
    :pswitch_4
    check-cast p2, Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdSpaceLayout;->e:Ljava/lang/CharSequence;

    goto :goto_0

    .line 30
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public b()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdSpaceLayout;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdSpaceLayout;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdSpaceLayout;->c:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public e()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdSpaceLayout;->d:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public f()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdSpaceLayout;->e:Ljava/lang/CharSequence;

    return-object v0
.end method
