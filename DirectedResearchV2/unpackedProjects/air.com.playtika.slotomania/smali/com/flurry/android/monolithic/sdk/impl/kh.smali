.class Lcom/flurry/android/monolithic/sdk/impl/kh;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/Object;

.field private b:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 575
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/kh;->a:Ljava/lang/Object;

    iput-object p2, p0, Lcom/flurry/android/monolithic/sdk/impl/kh;->b:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/flurry/android/monolithic/sdk/impl/jj;)V
    .locals 0

    .prologue
    .line 573
    invoke-direct {p0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/kh;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 577
    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/kh;->a:Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/kh;

    move-object v1, v0

    iget-object v1, v1, Lcom/flurry/android/monolithic/sdk/impl/kh;->a:Ljava/lang/Object;

    if-ne v2, v1, :cond_0

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/kh;->b:Ljava/lang/Object;

    check-cast p1, Lcom/flurry/android/monolithic/sdk/impl/kh;

    iget-object v2, p1, Lcom/flurry/android/monolithic/sdk/impl/kh;->b:Ljava/lang/Object;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 580
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/kh;->a:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/kh;->b:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
