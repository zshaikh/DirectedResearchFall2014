.class final Lcom/flurry/android/monolithic/sdk/impl/al;
.super Lcom/flurry/android/monolithic/sdk/impl/aj;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 199
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/al;->a()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/al;->a:Ljava/util/Map;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 198
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/aj;-><init>(Lcom/flurry/android/monolithic/sdk/impl/ag;)V

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 241
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/al;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    return-object p0
.end method

.method private static a()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 230
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 231
    const-string v1, "b"

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    const-string v1, "t"

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    const-string v1, "m"

    const/16 v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    const-string v1, "c"

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    const-string v1, "l"

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    const-string v1, "r"

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lcom/flurry/android/impl/ads/avro/protocol/v6/AdSpaceLayout;)Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    .prologue
    .line 208
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/al;->b(Lcom/flurry/android/impl/ads/avro/protocol/v6/AdSpaceLayout;)I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/al;->c(Lcom/flurry/android/impl/ads/avro/protocol/v6/AdSpaceLayout;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 210
    invoke-virtual {p1}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdSpaceLayout;->f()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 211
    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 212
    array-length v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 214
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-static {v2}, Lcom/flurry/android/monolithic/sdk/impl/al;->a(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 215
    if-eqz v2, :cond_0

    .line 216
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 220
    :cond_0
    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-static {v1}, Lcom/flurry/android/monolithic/sdk/impl/al;->a(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 221
    if-eqz v1, :cond_1

    .line 222
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 226
    :cond_1
    return-object v0
.end method

.method public g(Lcom/flurry/android/impl/ads/avro/protocol/v6/AdSpaceLayout;)I
    .locals 1

    .prologue
    .line 203
    const/4 v0, -0x1

    return v0
.end method
