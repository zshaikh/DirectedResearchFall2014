.class final Ljsr166y/ConcurrentReferenceHashMap$j;
.super Ljava/lang/ref/SoftReference;
.source "SourceFile"

# interfaces
.implements Ljsr166y/ConcurrentReferenceHashMap$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljsr166y/ConcurrentReferenceHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "j"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/ref/SoftReference",
        "<TK;>;",
        "Ljsr166y/ConcurrentReferenceHashMap$f;"
    }
.end annotation


# instance fields
.field final a:I


# direct methods
.method constructor <init>(Ljava/lang/Object;ILjava/lang/ref/ReferenceQueue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 292
    invoke-direct {p0, p1, p3}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 293
    iput p2, p0, Ljsr166y/ConcurrentReferenceHashMap$j;->a:I

    .line 294
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 296
    iget v0, p0, Ljsr166y/ConcurrentReferenceHashMap$j;->a:I

    return v0
.end method

.method public final b()Ljava/lang/Object;
    .locals 0

    .prologue
    .line 300
    return-object p0
.end method
