.class public Lorg/a/a/e;
.super Lorg/a/a/as;
.source "ASN1EncodableVector.java"


# instance fields
.field a:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lorg/a/a/as;-><init>()V

    .line 11
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/a/a/e;->a:Ljava/util/Vector;

    .line 16
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lorg/a/a/e;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public a(I)Lorg/a/a/ar;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lorg/a/a/e;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/a/a/ar;

    return-object v0
.end method

.method public a(Lorg/a/a/ar;)V
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lorg/a/a/e;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 21
    return-void
.end method
