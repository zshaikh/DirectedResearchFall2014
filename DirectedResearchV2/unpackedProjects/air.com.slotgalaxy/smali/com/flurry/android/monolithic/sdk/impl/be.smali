.class public final Lcom/flurry/android/monolithic/sdk/impl/be;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/android/monolithic/sdk/impl/co;


# static fields
.field static final a:Ljava/lang/String;

.field private static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/flurry/android/monolithic/sdk/impl/co;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/flurry/android/monolithic/sdk/impl/be;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/be;->a:Ljava/lang/String;

    .line 28
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/be;->a()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/be;->b:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    return-void
.end method

.method private static a(Ljava/lang/String;)Lcom/flurry/android/monolithic/sdk/impl/co;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/be;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/flurry/android/monolithic/sdk/impl/co;

    return-object p0
.end method

.method private static a(Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 65
    if-nez p0, :cond_0

    move-object v0, v2

    .line 92
    :goto_0
    return-object v0

    .line 69
    :cond_0
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;->d()Ljava/util/List;

    move-result-object v0

    .line 70
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    move-object v0, v2

    .line 71
    goto :goto_0

    .line 74
    :cond_2
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdFrame;

    .line 75
    if-nez v0, :cond_3

    move-object v0, v2

    .line 76
    goto :goto_0

    .line 79
    :cond_3
    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdFrame;->b()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 81
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;->e()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v3, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    if-eq v0, v3, :cond_4

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    .line 85
    :cond_4
    const-string v0, "FLURRY"

    goto :goto_0

    .line 88
    :cond_5
    const/4 v1, 0x4

    if-ne v0, v1, :cond_6

    .line 89
    const-string v0, "THIRD_PARTY"

    goto :goto_0

    :cond_6
    move-object v0, v2

    .line 92
    goto :goto_0
.end method

.method private static a()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/flurry/android/monolithic/sdk/impl/co;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 55
    const-string v1, "FLURRY"

    new-instance v2, Lcom/flurry/android/monolithic/sdk/impl/bg;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/flurry/android/monolithic/sdk/impl/bg;-><init>(Lcom/flurry/android/monolithic/sdk/impl/bf;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    const-string v1, "THIRD_PARTY"

    new-instance v2, Lcom/flurry/android/monolithic/sdk/impl/dd;

    invoke-direct {v2}, Lcom/flurry/android/monolithic/sdk/impl/dd;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a_(Landroid/content/Context;Lcom/flurry/android/impl/ads/FlurryAdModule;Lcom/flurry/android/monolithic/sdk/impl/m;Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;)Lcom/flurry/android/monolithic/sdk/impl/cn;
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 34
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    :cond_0
    move-object v0, v4

    .line 50
    :goto_0
    return-object v0

    .line 38
    :cond_1
    invoke-static {p4}, Lcom/flurry/android/monolithic/sdk/impl/be;->a(Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;)Ljava/lang/String;

    move-result-object v0

    .line 39
    if-nez v0, :cond_2

    move-object v0, v4

    .line 40
    goto :goto_0

    .line 43
    :cond_2
    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/be;->a(Ljava/lang/String;)Lcom/flurry/android/monolithic/sdk/impl/co;

    move-result-object v1

    .line 44
    if-nez v1, :cond_3

    .line 45
    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/be;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot create ad takeover for type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/flurry/android/monolithic/sdk/impl/ja;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v4

    .line 46
    goto :goto_0

    .line 49
    :cond_3
    const/4 v2, 0x3

    sget-object v3, Lcom/flurry/android/monolithic/sdk/impl/be;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Creating ad takeover for type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/flurry/android/monolithic/sdk/impl/co;->a_(Landroid/content/Context;Lcom/flurry/android/impl/ads/FlurryAdModule;Lcom/flurry/android/monolithic/sdk/impl/m;Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;)Lcom/flurry/android/monolithic/sdk/impl/cn;

    move-result-object v0

    goto :goto_0
.end method
