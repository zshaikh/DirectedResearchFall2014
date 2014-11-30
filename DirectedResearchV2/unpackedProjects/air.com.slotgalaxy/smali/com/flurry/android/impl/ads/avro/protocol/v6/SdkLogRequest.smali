.class public Lcom/flurry/android/impl/ads/avro/protocol/v6/SdkLogRequest;
.super Lcom/flurry/android/monolithic/sdk/impl/nu;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/android/monolithic/sdk/impl/nt;


# static fields
.field public static final SCHEMA$:Lcom/flurry/android/monolithic/sdk/impl/ji;


# instance fields
.field public a:Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/impl/ads/avro/protocol/v6/AdReportedId;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/impl/ads/avro/protocol/v6/SdkAdLog;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public d:J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public e:Z
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

    const-string v1, "{\"type\":\"record\",\"name\":\"SdkLogRequest\",\"namespace\":\"com.flurry.android.impl.ads.avro.protocol.v6\",\"fields\":[{\"name\":\"apiKey\",\"type\":\"string\"},{\"name\":\"adReportedIds\",\"type\":{\"type\":\"array\",\"items\":{\"type\":\"record\",\"name\":\"AdReportedId\",\"fields\":[{\"name\":\"type\",\"type\":\"int\"},{\"name\":\"id\",\"type\":\"bytes\"}]}}},{\"name\":\"sdkAdLogs\",\"type\":{\"type\":\"array\",\"items\":{\"type\":\"record\",\"name\":\"SdkAdLog\",\"fields\":[{\"name\":\"sessionId\",\"type\":\"long\"},{\"name\":\"adLogGUID\",\"type\":\"string\"},{\"name\":\"sdkAdEvents\",\"type\":{\"type\":\"array\",\"items\":{\"type\":\"record\",\"name\":\"SdkAdEvent\",\"fields\":[{\"name\":\"type\",\"type\":\"string\"},{\"name\":\"params\",\"type\":{\"type\":\"map\",\"values\":\"string\"}},{\"name\":\"timeOffset\",\"type\":\"long\"}]}}}]}}},{\"name\":\"agentTimestamp\",\"type\":\"long\"},{\"name\":\"testDevice\",\"type\":\"boolean\",\"default\":false}]}"

    invoke-virtual {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/ke;->a(Ljava/lang/String;)Lcom/flurry/android/monolithic/sdk/impl/ji;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/impl/ads/avro/protocol/v6/SdkLogRequest;->SCHEMA$:Lcom/flurry/android/monolithic/sdk/impl/ji;

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

.method public static b()Lcom/flurry/android/impl/ads/avro/protocol/v6/SdkLogRequest$Builder;
    .locals 2

    .prologue
    .line 117
    new-instance v0, Lcom/flurry/android/impl/ads/avro/protocol/v6/SdkLogRequest$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/flurry/android/impl/ads/avro/protocol/v6/SdkLogRequest$Builder;-><init>(Lcom/flurry/android/impl/ads/avro/protocol/v6/SdkLogRequest$1;)V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/flurry/android/monolithic/sdk/impl/ji;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/flurry/android/impl/ads/avro/protocol/v6/SdkLogRequest;->SCHEMA$:Lcom/flurry/android/monolithic/sdk/impl/ji;

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
    iget-object v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v6/SdkLogRequest;->a:Ljava/lang/CharSequence;

    .line 23
    :goto_0
    return-object v0

    .line 20
    :pswitch_1
    iget-object v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v6/SdkLogRequest;->b:Ljava/util/List;

    goto :goto_0

    .line 21
    :pswitch_2
    iget-object v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v6/SdkLogRequest;->c:Ljava/util/List;

    goto :goto_0

    .line 22
    :pswitch_3
    iget-wide v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v6/SdkLogRequest;->d:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 23
    :pswitch_4
    iget-boolean v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v6/SdkLogRequest;->e:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

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
    check-cast p2, Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/flurry/android/impl/ads/avro/protocol/v6/SdkLogRequest;->a:Ljava/lang/CharSequence;

    .line 38
    :goto_0
    return-void

    .line 32
    :pswitch_1
    check-cast p2, Ljava/util/List;

    iput-object p2, p0, Lcom/flurry/android/impl/ads/avro/protocol/v6/SdkLogRequest;->b:Ljava/util/List;

    goto :goto_0

    .line 33
    :pswitch_2
    check-cast p2, Ljava/util/List;

    iput-object p2, p0, Lcom/flurry/android/impl/ads/avro/protocol/v6/SdkLogRequest;->c:Ljava/util/List;

    goto :goto_0

    .line 34
    :pswitch_3
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v6/SdkLogRequest;->d:J

    goto :goto_0

    .line 35
    :pswitch_4
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v6/SdkLogRequest;->e:Z

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
