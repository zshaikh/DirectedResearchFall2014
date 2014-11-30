.class public Lorg/c/a/c/i;
.super Lorg/c/a/c/p;
.source "BufferCache.java"


# instance fields
.field private final n:I

.field private o:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lorg/c/a/c/p;-><init>(Ljava/lang/String;)V

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/c/a/c/i;->o:Ljava/util/HashMap;

    .line 135
    iput p2, p0, Lorg/c/a/c/i;->n:I

    .line 136
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lorg/c/a/c/i;)V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lorg/c/a/c/i;->o:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 154
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/c/a/c/i;->o:Ljava/util/HashMap;

    .line 155
    :cond_0
    iget-object v0, p0, Lorg/c/a/c/i;->o:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    return-void
.end method

.method public w()I
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lorg/c/a/c/i;->n:I

    return v0
.end method
