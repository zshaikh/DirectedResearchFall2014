.class public Lcom/flurry/android/monolithic/sdk/impl/gi;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/gi;->e:Ljava/lang/String;

    .line 21
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/gi;->a:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcom/flurry/android/monolithic/sdk/impl/gi;->b:Ljava/lang/String;

    .line 23
    iput-object p3, p0, Lcom/flurry/android/monolithic/sdk/impl/gi;->c:Ljava/lang/String;

    .line 24
    iput-object p4, p0, Lcom/flurry/android/monolithic/sdk/impl/gi;->d:Ljava/lang/String;

    .line 25
    iput-object p5, p0, Lcom/flurry/android/monolithic/sdk/impl/gi;->e:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 38
    if-ne p1, p0, :cond_0

    move v0, v3

    .line 55
    :goto_0
    return v0

    .line 41
    :cond_0
    if-nez p1, :cond_1

    move v0, v2

    .line 42
    goto :goto_0

    .line 44
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    move v0, v2

    .line 45
    goto :goto_0

    .line 48
    :cond_2
    check-cast p1, Lcom/flurry/android/monolithic/sdk/impl/gi;

    .line 49
    iget-object v0, p1, Lcom/flurry/android/monolithic/sdk/impl/gi;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/gi;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/flurry/android/monolithic/sdk/impl/gi;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/gi;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v3

    .line 52
    goto :goto_0

    :cond_3
    move v0, v2

    .line 55
    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    const/16 v1, 0x24

    .line 62
    .line 65
    mul-int v0, v1, v1

    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/gi;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x510

    .line 66
    mul-int/2addr v0, v1

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/gi;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 68
    return v0
.end method
