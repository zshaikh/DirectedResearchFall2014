.class final Ljsr166y/ConcurrentReferenceHashMap$o;
.super Ljava/lang/ref/WeakReference;
.source "SourceFile"

# interfaces
.implements Ljsr166y/ConcurrentReferenceHashMap$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljsr166y/ConcurrentReferenceHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "o"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/ref/WeakReference",
        "<TV;>;",
        "Ljsr166y/ConcurrentReferenceHashMap$f;"
    }
.end annotation


# instance fields
.field final a:Ljava/lang/Object;

.field final b:I


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/ref/ReferenceQueue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Ljava/lang/Object;",
            "I",
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 308
    invoke-direct {p0, p1, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 309
    iput-object p2, p0, Ljsr166y/ConcurrentReferenceHashMap$o;->a:Ljava/lang/Object;

    .line 310
    iput p3, p0, Ljsr166y/ConcurrentReferenceHashMap$o;->b:I

    .line 311
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 314
    iget v0, p0, Ljsr166y/ConcurrentReferenceHashMap$o;->b:I

    return v0
.end method

.method public final b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Ljsr166y/ConcurrentReferenceHashMap$o;->a:Ljava/lang/Object;

    return-object v0
.end method
