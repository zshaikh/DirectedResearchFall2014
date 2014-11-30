.class public Lorg/apache/c/a/g;
.super Lorg/apache/c/a/c;
.source "StructMetaData.java"


# instance fields
.field public final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lorg/apache/c/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(BLjava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B",
            "Ljava/lang/Class",
            "<+",
            "Lorg/apache/c/b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lorg/apache/c/a/c;-><init>(B)V

    .line 29
    iput-object p2, p0, Lorg/apache/c/a/g;->a:Ljava/lang/Class;

    .line 30
    return-void
.end method
