.class final Lcom/dolphin/browser/controls/i;
.super Ljava/lang/Object;
.source "GridLayout.java"


# instance fields
.field public final a:Lcom/dolphin/browser/controls/n;

.field public final b:Lcom/dolphin/browser/controls/o;

.field public c:Z


# direct methods
.method public constructor <init>(Lcom/dolphin/browser/controls/n;Lcom/dolphin/browser/controls/o;)V
    .locals 1

    .prologue
    .line 1995
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1993
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/controls/i;->c:Z

    .line 1996
    iput-object p1, p0, Lcom/dolphin/browser/controls/i;->a:Lcom/dolphin/browser/controls/n;

    .line 1997
    iput-object p2, p0, Lcom/dolphin/browser/controls/i;->b:Lcom/dolphin/browser/controls/o;

    .line 1998
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2002
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/dolphin/browser/controls/i;->a:Lcom/dolphin/browser/controls/n;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/dolphin/browser/controls/i;->c:Z

    if-nez v0, :cond_0

    const-string v0, "+>"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/controls/i;->b:Lcom/dolphin/browser/controls/o;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "->"

    goto :goto_0
.end method
