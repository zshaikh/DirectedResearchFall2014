.class Lorg/c/a/e/r;
.super Lorg/c/a/e/u;
.source "WebSocketClientFactory.java"


# instance fields
.field private final a:Lorg/c/a/e/o;


# direct methods
.method public constructor <init>(Lorg/c/a/e/o;Lorg/c/a/e/d;Lorg/c/a/c/s;Lorg/c/a/e/k;JILjava/lang/String;Ljava/util/List;ILorg/c/a/e/b;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/c/a/e/o;",
            "Lorg/c/a/e/d;",
            "Lorg/c/a/c/s;",
            "Lorg/c/a/e/k;",
            "JI",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/c/a/e/a;",
            ">;I",
            "Lorg/c/a/e/b;",
            ")V"
        }
    .end annotation

    .prologue
    .line 576
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-wide/from16 v4, p5

    move/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move/from16 v9, p10

    move-object/from16 v10, p11

    invoke-direct/range {v0 .. v10}, Lorg/c/a/e/u;-><init>(Lorg/c/a/e/d;Lorg/c/a/c/s;Lorg/c/a/e/k;JILjava/lang/String;Ljava/util/List;ILorg/c/a/e/b;)V

    .line 577
    iput-object p1, p0, Lorg/c/a/e/r;->a:Lorg/c/a/e/o;

    .line 578
    return-void
.end method


# virtual methods
.method public c()V
    .locals 1

    .prologue
    .line 583
    invoke-super {p0}, Lorg/c/a/e/u;->c()V

    .line 584
    iget-object v0, p0, Lorg/c/a/e/r;->a:Lorg/c/a/e/o;

    invoke-virtual {v0, p0}, Lorg/c/a/e/o;->b(Lorg/c/a/e/t;)Z

    .line 585
    return-void
.end method
