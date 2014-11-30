.class public Lcom/b/a/d/e;
.super Lcom/b/a/d/c;
.source "TicketResponseParser.java"


# instance fields
.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/b/a/d/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/b/a/d/e;->d:Ljava/lang/String;

    return-object v0
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 35
    invoke-super {p0, p1, p2, p3}, Lcom/b/a/d/c;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    const-string v0, "ticket"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/b/a/d/e;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/d/e;->d:Ljava/lang/String;

    .line 39
    :cond_0
    return-void
.end method
