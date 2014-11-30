.class public Lcom/facebook/orca/share/ShareBuilder;
.super Ljava/lang/Object;
.source "ShareBuilder.java"


# annotations
.annotation build Ljavax/annotation/concurrent/NotThreadSafe;
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/share/ShareMedia;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/share/ShareProperty;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/share/ShareBuilder;->e:Ljava/util/List;

    .line 22
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/share/ShareBuilder;->f:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/facebook/orca/share/ShareBuilder;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/facebook/orca/share/ShareBuilder;->a:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/share/ShareMedia;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 53
    iput-object p1, p0, Lcom/facebook/orca/share/ShareBuilder;->e:Ljava/util/List;

    .line 54
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/facebook/orca/share/ShareBuilder;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/facebook/orca/share/ShareBuilder;->b:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/share/ShareProperty;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 69
    iput-object p1, p0, Lcom/facebook/orca/share/ShareBuilder;->f:Ljava/util/List;

    .line 70
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/facebook/orca/share/ShareBuilder;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/facebook/orca/share/ShareBuilder;->c:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/share/ShareMedia;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Lcom/facebook/orca/share/ShareBuilder;->e:Ljava/util/List;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/facebook/orca/share/ShareBuilder;->d:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/facebook/orca/share/ShareBuilder;->d:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/share/ShareProperty;",
            ">;"
        }
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lcom/facebook/orca/share/ShareBuilder;->f:Ljava/util/List;

    return-object v0
.end method

.method public g()Lcom/facebook/orca/share/Share;
    .locals 1

    .prologue
    .line 73
    new-instance v0, Lcom/facebook/orca/share/Share;

    invoke-direct {v0, p0}, Lcom/facebook/orca/share/Share;-><init>(Lcom/facebook/orca/share/ShareBuilder;)V

    return-object v0
.end method
