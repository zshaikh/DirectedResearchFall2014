.class public Lcom/flurry/android/monolithic/sdk/impl/aev;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field static final a:Lcom/flurry/android/monolithic/sdk/impl/aev;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 168
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/aev;

    invoke-direct {v0}, Lcom/flurry/android/monolithic/sdk/impl/aev;-><init>()V

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/aev;->a:Lcom/flurry/android/monolithic/sdk/impl/aev;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/flurry/android/monolithic/sdk/impl/aev;
    .locals 1

    .prologue
    .line 172
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/aev;->a:Lcom/flurry/android/monolithic/sdk/impl/aev;

    return-object v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 175
    const/4 v0, 0x0

    return v0
.end method

.method public synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/aev;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 182
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
