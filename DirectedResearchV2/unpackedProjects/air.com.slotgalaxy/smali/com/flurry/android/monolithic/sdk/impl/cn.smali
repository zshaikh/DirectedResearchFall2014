.class public abstract Lcom/flurry/android/monolithic/sdk/impl/cn;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Ljava/lang/String;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Lcom/flurry/android/impl/ads/FlurryAdModule;

.field private final d:Lcom/flurry/android/monolithic/sdk/impl/m;

.field private final e:Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/flurry/android/monolithic/sdk/impl/cn;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/cn;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/flurry/android/impl/ads/FlurryAdModule;Lcom/flurry/android/monolithic/sdk/impl/m;Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/cn;->b:Landroid/content/Context;

    .line 37
    iput-object p2, p0, Lcom/flurry/android/monolithic/sdk/impl/cn;->c:Lcom/flurry/android/impl/ads/FlurryAdModule;

    .line 38
    iput-object p3, p0, Lcom/flurry/android/monolithic/sdk/impl/cn;->d:Lcom/flurry/android/monolithic/sdk/impl/m;

    .line 39
    iput-object p4, p0, Lcom/flurry/android/monolithic/sdk/impl/cn;->e:Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;

    .line 40
    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public b()Landroid/content/Context;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/cn;->b:Landroid/content/Context;

    return-object v0
.end method

.method public c()Lcom/flurry/android/impl/ads/FlurryAdModule;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/cn;->c:Lcom/flurry/android/impl/ads/FlurryAdModule;

    return-object v0
.end method

.method public d()Lcom/flurry/android/monolithic/sdk/impl/m;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/cn;->d:Lcom/flurry/android/monolithic/sdk/impl/m;

    return-object v0
.end method

.method public e()Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/cn;->e:Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;

    return-object v0
.end method
