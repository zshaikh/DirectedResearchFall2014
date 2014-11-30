.class public final Lcom/flurry/android/monolithic/sdk/impl/xv;
.super Lcom/flurry/android/monolithic/sdk/impl/xw;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 342
    invoke-direct {p0}, Lcom/flurry/android/monolithic/sdk/impl/xw;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/reflect/Method;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 349
    invoke-super {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/xw;->a(Ljava/lang/reflect/Method;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    .line 361
    :goto_0
    return v0

    .line 352
    :cond_0
    invoke-static {p1}, Lcom/flurry/android/monolithic/sdk/impl/adz;->a(Ljava/lang/reflect/Method;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    .line 353
    goto :goto_0

    .line 356
    :cond_1
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    .line 357
    const-class v1, Ljava/util/Collection;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_2

    const-class v1, Ljava/util/Map;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    move v0, v3

    .line 359
    goto :goto_0

    :cond_3
    move v0, v2

    .line 361
    goto :goto_0
.end method
