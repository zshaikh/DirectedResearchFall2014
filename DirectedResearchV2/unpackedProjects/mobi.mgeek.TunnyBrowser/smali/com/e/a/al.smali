.class Lcom/e/a/al;
.super Ljava/lang/Object;
.source "SVGParser.java"


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private b:I


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 563
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 564
    iput-object p1, p0, Lcom/e/a/al;->a:Ljava/util/ArrayList;

    .line 565
    iput p2, p0, Lcom/e/a/al;->b:I

    .line 566
    return-void
.end method

.method static synthetic a(Lcom/e/a/al;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 559
    iget-object v0, p0, Lcom/e/a/al;->a:Ljava/util/ArrayList;

    return-object v0
.end method
