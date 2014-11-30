.class final Ljsr166y/ConcurrentReferenceHashMap$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljsr166y/ConcurrentReferenceHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final a:Ljava/lang/Object;

.field final b:I

.field volatile c:Ljava/lang/Object;

.field final d:Ljsr166y/ConcurrentReferenceHashMap$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljsr166y/ConcurrentReferenceHashMap$c",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;ILjsr166y/ConcurrentReferenceHashMap$c;Ljava/lang/Object;Ljsr166y/ConcurrentReferenceHashMap$ReferenceType;Ljsr166y/ConcurrentReferenceHashMap$ReferenceType;Ljava/lang/ref/ReferenceQueue;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Ljsr166y/ConcurrentReferenceHashMap$c",
            "<TK;TV;>;TV;",
            "Ljsr166y/ConcurrentReferenceHashMap$ReferenceType;",
            "Ljsr166y/ConcurrentReferenceHashMap$ReferenceType;",
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 359
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 360
    iput p2, p0, Ljsr166y/ConcurrentReferenceHashMap$c;->b:I

    .line 361
    iput-object p3, p0, Ljsr166y/ConcurrentReferenceHashMap$c;->d:Ljsr166y/ConcurrentReferenceHashMap$c;

    .line 362
    invoke-virtual {p0, p1, p5, p7}, Ljsr166y/ConcurrentReferenceHashMap$c;->a(Ljava/lang/Object;Ljsr166y/ConcurrentReferenceHashMap$ReferenceType;Ljava/lang/ref/ReferenceQueue;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljsr166y/ConcurrentReferenceHashMap$c;->a:Ljava/lang/Object;

    .line 363
    invoke-virtual {p0, p4, p6, p7}, Ljsr166y/ConcurrentReferenceHashMap$c;->b(Ljava/lang/Object;Ljsr166y/ConcurrentReferenceHashMap$ReferenceType;Ljava/lang/ref/ReferenceQueue;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljsr166y/ConcurrentReferenceHashMap$c;->c:Ljava/lang/Object;

    .line 364
    return-void
.end method

.method static final a(I)[Ljsr166y/ConcurrentReferenceHashMap$c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I)[",
            "Ljsr166y/ConcurrentReferenceHashMap$c",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 412
    new-array v0, p0, [Ljsr166y/ConcurrentReferenceHashMap$c;

    return-object v0
.end method


# virtual methods
.method final a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 388
    iget-object v0, p0, Ljsr166y/ConcurrentReferenceHashMap$c;->a:Ljava/lang/Object;

    instance-of v0, v0, Ljsr166y/ConcurrentReferenceHashMap$f;

    if-eqz v0, :cond_0

    .line 389
    iget-object p0, p0, Ljsr166y/ConcurrentReferenceHashMap$c;->a:Ljava/lang/Object;

    check-cast p0, Ljava/lang/ref/Reference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 391
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ljsr166y/ConcurrentReferenceHashMap$c;->a:Ljava/lang/Object;

    goto :goto_0
.end method

.method final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 400
    instance-of v0, p1, Ljsr166y/ConcurrentReferenceHashMap$f;

    if-eqz v0, :cond_0

    .line 401
    check-cast p1, Ljava/lang/ref/Reference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 403
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method final a(Ljava/lang/Object;Ljsr166y/ConcurrentReferenceHashMap$ReferenceType;Ljava/lang/ref/ReferenceQueue;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljsr166y/ConcurrentReferenceHashMap$ReferenceType;",
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 368
    sget-object v0, Ljsr166y/ConcurrentReferenceHashMap$ReferenceType;->WEAK:Ljsr166y/ConcurrentReferenceHashMap$ReferenceType;

    if-ne p2, v0, :cond_0

    .line 369
    new-instance v0, Ljsr166y/ConcurrentReferenceHashMap$n;

    iget v1, p0, Ljsr166y/ConcurrentReferenceHashMap$c;->b:I

    invoke-direct {v0, p1, v1, p3}, Ljsr166y/ConcurrentReferenceHashMap$n;-><init>(Ljava/lang/Object;ILjava/lang/ref/ReferenceQueue;)V

    .line 373
    :goto_0
    return-object v0

    .line 370
    :cond_0
    sget-object v0, Ljsr166y/ConcurrentReferenceHashMap$ReferenceType;->SOFT:Ljsr166y/ConcurrentReferenceHashMap$ReferenceType;

    if-ne p2, v0, :cond_1

    .line 371
    new-instance v0, Ljsr166y/ConcurrentReferenceHashMap$j;

    iget v1, p0, Ljsr166y/ConcurrentReferenceHashMap$c;->b:I

    invoke-direct {v0, p1, v1, p3}, Ljsr166y/ConcurrentReferenceHashMap$j;-><init>(Ljava/lang/Object;ILjava/lang/ref/ReferenceQueue;)V

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 373
    goto :goto_0
.end method

.method final b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 395
    iget-object v0, p0, Ljsr166y/ConcurrentReferenceHashMap$c;->c:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Ljsr166y/ConcurrentReferenceHashMap$c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method final b(Ljava/lang/Object;Ljsr166y/ConcurrentReferenceHashMap$ReferenceType;Ljava/lang/ref/ReferenceQueue;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Ljsr166y/ConcurrentReferenceHashMap$ReferenceType;",
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 378
    sget-object v0, Ljsr166y/ConcurrentReferenceHashMap$ReferenceType;->WEAK:Ljsr166y/ConcurrentReferenceHashMap$ReferenceType;

    if-ne p2, v0, :cond_0

    .line 379
    new-instance v0, Ljsr166y/ConcurrentReferenceHashMap$o;

    iget-object v1, p0, Ljsr166y/ConcurrentReferenceHashMap$c;->a:Ljava/lang/Object;

    iget v2, p0, Ljsr166y/ConcurrentReferenceHashMap$c;->b:I

    invoke-direct {v0, p1, v1, v2, p3}, Ljsr166y/ConcurrentReferenceHashMap$o;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/ref/ReferenceQueue;)V

    .line 383
    :goto_0
    return-object v0

    .line 380
    :cond_0
    sget-object v0, Ljsr166y/ConcurrentReferenceHashMap$ReferenceType;->SOFT:Ljsr166y/ConcurrentReferenceHashMap$ReferenceType;

    if-ne p2, v0, :cond_1

    .line 381
    new-instance v0, Ljsr166y/ConcurrentReferenceHashMap$k;

    iget-object v1, p0, Ljsr166y/ConcurrentReferenceHashMap$c;->a:Ljava/lang/Object;

    iget v2, p0, Ljsr166y/ConcurrentReferenceHashMap$c;->b:I

    invoke-direct {v0, p1, v1, v2, p3}, Ljsr166y/ConcurrentReferenceHashMap$k;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/ref/ReferenceQueue;)V

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 383
    goto :goto_0
.end method

.method final c(Ljava/lang/Object;Ljsr166y/ConcurrentReferenceHashMap$ReferenceType;Ljava/lang/ref/ReferenceQueue;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Ljsr166y/ConcurrentReferenceHashMap$ReferenceType;",
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 407
    invoke-virtual {p0, p1, p2, p3}, Ljsr166y/ConcurrentReferenceHashMap$c;->b(Ljava/lang/Object;Ljsr166y/ConcurrentReferenceHashMap$ReferenceType;Ljava/lang/ref/ReferenceQueue;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljsr166y/ConcurrentReferenceHashMap$c;->c:Ljava/lang/Object;

    .line 408
    return-void
.end method
