.class public Lcom/flurry/org/apache/avro/io/parsing/SkipParser;
.super Lcom/flurry/org/apache/avro/io/parsing/Parser;
.source "SkipParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/org/apache/avro/io/parsing/SkipParser$SkipHandler;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final skipHandler:Lcom/flurry/org/apache/avro/io/parsing/SkipParser$SkipHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/flurry/org/apache/avro/io/parsing/SkipParser;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/flurry/org/apache/avro/io/parsing/SkipParser;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/flurry/org/apache/avro/io/parsing/Symbol;Lcom/flurry/org/apache/avro/io/parsing/Parser$ActionHandler;Lcom/flurry/org/apache/avro/io/parsing/SkipParser$SkipHandler;)V
    .locals 0
    .parameter "root"
    .parameter "symbolHandler"
    .parameter "skipHandler"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/flurry/org/apache/avro/io/parsing/Parser;-><init>(Lcom/flurry/org/apache/avro/io/parsing/Symbol;Lcom/flurry/org/apache/avro/io/parsing/Parser$ActionHandler;)V

    .line 49
    iput-object p3, p0, Lcom/flurry/org/apache/avro/io/parsing/SkipParser;->skipHandler:Lcom/flurry/org/apache/avro/io/parsing/SkipParser$SkipHandler;

    .line 50
    return-void
.end method


# virtual methods
.method public final skipRepeater()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    iget v1, p0, Lcom/flurry/org/apache/avro/io/parsing/SkipParser;->pos:I

    .line 80
    .local v1, target:I
    iget-object v2, p0, Lcom/flurry/org/apache/avro/io/parsing/SkipParser;->stack:[Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    iget v3, p0, Lcom/flurry/org/apache/avro/io/parsing/SkipParser;->pos:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/flurry/org/apache/avro/io/parsing/SkipParser;->pos:I

    aget-object v0, v2, v3

    .line 81
    .local v0, repeater:Lcom/flurry/org/apache/avro/io/parsing/Symbol;
    sget-boolean v2, Lcom/flurry/org/apache/avro/io/parsing/SkipParser;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->kind:Lcom/flurry/org/apache/avro/io/parsing/Symbol$Kind;

    sget-object v3, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Kind;->REPEATER:Lcom/flurry/org/apache/avro/io/parsing/Symbol$Kind;

    if-eq v2, v3, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 82
    :cond_0
    invoke-virtual {p0, v0}, Lcom/flurry/org/apache/avro/io/parsing/SkipParser;->pushProduction(Lcom/flurry/org/apache/avro/io/parsing/Symbol;)V

    .line 83
    invoke-virtual {p0, v1}, Lcom/flurry/org/apache/avro/io/parsing/SkipParser;->skipTo(I)V

    .line 84
    return-void
.end method

.method public final skipSymbol(Lcom/flurry/org/apache/avro/io/parsing/Symbol;)V
    .locals 1
    .parameter "symToSkip"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 91
    iget v0, p0, Lcom/flurry/org/apache/avro/io/parsing/SkipParser;->pos:I

    .line 92
    .local v0, target:I
    invoke-virtual {p0, p1}, Lcom/flurry/org/apache/avro/io/parsing/SkipParser;->pushSymbol(Lcom/flurry/org/apache/avro/io/parsing/Symbol;)V

    .line 93
    invoke-virtual {p0, v0}, Lcom/flurry/org/apache/avro/io/parsing/SkipParser;->skipTo(I)V

    .line 94
    return-void
.end method

.method public final skipTo(I)V
    .locals 4
    .parameter "target"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 59
    :goto_0
    iget v1, p0, Lcom/flurry/org/apache/avro/io/parsing/SkipParser;->pos:I

    if-ge p1, v1, :cond_3

    .line 60
    iget-object v1, p0, Lcom/flurry/org/apache/avro/io/parsing/SkipParser;->stack:[Lcom/flurry/org/apache/avro/io/parsing/Symbol;

    iget v2, p0, Lcom/flurry/org/apache/avro/io/parsing/SkipParser;->pos:I

    sub-int/2addr v2, v3

    aget-object v0, v1, v2

    .line 61
    .local v0, top:Lcom/flurry/org/apache/avro/io/parsing/Symbol;
    iget-object v1, v0, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->kind:Lcom/flurry/org/apache/avro/io/parsing/Symbol$Kind;

    sget-object v2, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Kind;->TERMINAL:Lcom/flurry/org/apache/avro/io/parsing/Symbol$Kind;

    if-eq v1, v2, :cond_2

    .line 62
    iget-object v1, v0, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->kind:Lcom/flurry/org/apache/avro/io/parsing/Symbol$Kind;

    sget-object v2, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Kind;->IMPLICIT_ACTION:Lcom/flurry/org/apache/avro/io/parsing/Symbol$Kind;

    if-eq v1, v2, :cond_0

    iget-object v1, v0, Lcom/flurry/org/apache/avro/io/parsing/Symbol;->kind:Lcom/flurry/org/apache/avro/io/parsing/Symbol$Kind;

    sget-object v2, Lcom/flurry/org/apache/avro/io/parsing/Symbol$Kind;->EXPLICIT_ACTION:Lcom/flurry/org/apache/avro/io/parsing/Symbol$Kind;

    if-ne v1, v2, :cond_1

    .line 64
    :cond_0
    iget-object v1, p0, Lcom/flurry/org/apache/avro/io/parsing/SkipParser;->skipHandler:Lcom/flurry/org/apache/avro/io/parsing/SkipParser$SkipHandler;

    invoke-interface {v1}, Lcom/flurry/org/apache/avro/io/parsing/SkipParser$SkipHandler;->skipAction()V

    goto :goto_0

    .line 66
    :cond_1
    iget v1, p0, Lcom/flurry/org/apache/avro/io/parsing/SkipParser;->pos:I

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/flurry/org/apache/avro/io/parsing/SkipParser;->pos:I

    .line 67
    invoke-virtual {p0, v0}, Lcom/flurry/org/apache/avro/io/parsing/SkipParser;->pushProduction(Lcom/flurry/org/apache/avro/io/parsing/Symbol;)V

    goto :goto_0

    .line 71
    :cond_2
    iget-object v1, p0, Lcom/flurry/org/apache/avro/io/parsing/SkipParser;->skipHandler:Lcom/flurry/org/apache/avro/io/parsing/SkipParser$SkipHandler;

    invoke-interface {v1}, Lcom/flurry/org/apache/avro/io/parsing/SkipParser$SkipHandler;->skipTopSymbol()V

    goto :goto_0

    .line 73
    .end local v0           #top:Lcom/flurry/org/apache/avro/io/parsing/Symbol;
    :cond_3
    return-void
.end method
