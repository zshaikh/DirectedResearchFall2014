.class public final Lcom/flurry/android/monolithic/sdk/impl/adb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/flurry/android/monolithic/sdk/impl/adb;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/adb;->b:Ljava/lang/Class;

    .line 35
    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/adb;->a:Ljava/lang/String;

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/flurry/android/monolithic/sdk/impl/adb;->c:I

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/adb;->b:Ljava/lang/Class;

    .line 42
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/adb;->a:Ljava/lang/String;

    .line 43
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/adb;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/flurry/android/monolithic/sdk/impl/adb;->c:I

    .line 44
    return-void
.end method


# virtual methods
.method public a(Lcom/flurry/android/monolithic/sdk/impl/adb;)I
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/adb;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/flurry/android/monolithic/sdk/impl/adb;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 19
    check-cast p1, Lcom/flurry/android/monolithic/sdk/impl/adb;

    invoke-virtual {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/adb;->a(Lcom/flurry/android/monolithic/sdk/impl/adb;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 75
    if-ne p1, p0, :cond_0

    move v0, v3

    .line 87
    :goto_0
    return v0

    .line 76
    :cond_0
    if-nez p1, :cond_1

    move v0, v2

    goto :goto_0

    .line 77
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    move v0, v2

    goto :goto_0

    .line 78
    :cond_2
    check-cast p1, Lcom/flurry/android/monolithic/sdk/impl/adb;

    .line 87
    iget-object v0, p1, Lcom/flurry/android/monolithic/sdk/impl/adb;->b:Ljava/lang/Class;

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/adb;->b:Ljava/lang/Class;

    if-ne v0, v1, :cond_3

    move v0, v3

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/adb;->c:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/adb;->a:Ljava/lang/String;

    return-object v0
.end method
