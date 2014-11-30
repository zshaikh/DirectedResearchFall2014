.class public Lcom/dolphin/browser/update/model/b;
.super Ljava/lang/Object;
.source "MergedInfo.java"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/update/model/UpdateInfo;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/update/model/DialogButton;",
            ">;"
        }
    .end annotation
.end field

.field private e:Z

.field private f:Z


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/update/model/UpdateInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/dolphin/browser/update/model/b;->a:Ljava/util/List;

    .line 16
    invoke-direct {p0, p1}, Lcom/dolphin/browser/update/model/b;->a(Ljava/util/List;)V

    .line 17
    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/update/model/UpdateInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 20
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 21
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/update/model/UpdateInfo;

    .line 22
    invoke-virtual {v0}, Lcom/dolphin/browser/update/model/UpdateInfo;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/dolphin/browser/update/model/b;->b:Ljava/lang/String;

    .line 23
    invoke-virtual {v0}, Lcom/dolphin/browser/update/model/UpdateInfo;->c()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/dolphin/browser/update/model/b;->c:Ljava/lang/String;

    .line 24
    invoke-virtual {v0}, Lcom/dolphin/browser/update/model/UpdateInfo;->f()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/dolphin/browser/update/model/b;->d:Ljava/util/List;

    .line 25
    invoke-virtual {v0}, Lcom/dolphin/browser/update/model/UpdateInfo;->h()Z

    move-result v1

    iput-boolean v1, p0, Lcom/dolphin/browser/update/model/b;->e:Z

    .line 26
    invoke-virtual {v0}, Lcom/dolphin/browser/update/model/UpdateInfo;->g()Z

    move-result v0

    iput-boolean v0, p0, Lcom/dolphin/browser/update/model/b;->f:Z

    .line 28
    :cond_0
    return-void
.end method


# virtual methods
.method public a()Lcom/dolphin/browser/update/model/UpdateInfo;
    .locals 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/dolphin/browser/update/model/b;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/update/model/UpdateInfo;

    return-object v0
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/update/model/UpdateInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lcom/dolphin/browser/update/model/b;->a:Ljava/util/List;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/dolphin/browser/update/model/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/dolphin/browser/update/model/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/update/model/DialogButton;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lcom/dolphin/browser/update/model/b;->d:Ljava/util/List;

    return-object v0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/dolphin/browser/update/model/b;->f:Z

    return v0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/dolphin/browser/update/model/b;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/update/model/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
