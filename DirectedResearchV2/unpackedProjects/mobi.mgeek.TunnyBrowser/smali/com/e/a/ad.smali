.class public Lcom/e/a/ad;
.super Ljava/lang/Object;
.source "SVGDrawable.java"

# interfaces
.implements Lcom/e/a/a;


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput p1, p0, Lcom/e/a/ad;->a:I

    .line 87
    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/e/a/ad;->a:I

    if-nez v0, :cond_0

    .line 95
    :goto_0
    return p1

    :cond_0
    iget p1, p0, Lcom/e/a/ad;->a:I

    goto :goto_0
.end method
