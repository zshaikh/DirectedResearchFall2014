.class final Lcom/flurry/android/monolithic/sdk/impl/aec;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:I


# direct methods
.method constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/aec;->a:Ljava/lang/Object;

    iput p2, p0, Lcom/flurry/android/monolithic/sdk/impl/aec;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 28
    if-ne p1, p0, :cond_0

    move v0, v4

    .line 44
    :goto_0
    return v0

    .line 29
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/aec;->a:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    :cond_1
    move v0, v3

    .line 30
    goto :goto_0

    .line 32
    :cond_2
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    iget v1, p0, Lcom/flurry/android/monolithic/sdk/impl/aec;->b:I

    if-eq v0, v1, :cond_3

    move v0, v3

    goto :goto_0

    :cond_3
    move v0, v3

    .line 34
    :goto_1
    iget v1, p0, Lcom/flurry/android/monolithic/sdk/impl/aec;->b:I

    if-ge v0, v1, :cond_6

    .line 35
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/aec;->a:Ljava/lang/Object;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    .line 36
    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    .line 37
    if-ne v1, v2, :cond_5

    .line 34
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 38
    :cond_5
    if-eqz v1, :cond_4

    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    move v0, v3

    .line 40
    goto :goto_0

    :cond_6
    move v0, v4

    .line 44
    goto :goto_0
.end method
