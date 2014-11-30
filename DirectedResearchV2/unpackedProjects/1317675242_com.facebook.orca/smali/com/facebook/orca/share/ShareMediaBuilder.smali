.class public Lcom/facebook/orca/share/ShareMediaBuilder;
.super Ljava/lang/Object;
.source "ShareMediaBuilder.java"


# annotations
.annotation build Ljavax/annotation/concurrent/NotThreadSafe;
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lcom/facebook/orca/share/ShareMediaPhoto;

.field private f:Lcom/facebook/orca/share/ShareMediaVideo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/facebook/orca/share/ShareMediaBuilder;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/facebook/orca/share/ShareMediaPhoto;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/facebook/orca/share/ShareMediaBuilder;->e:Lcom/facebook/orca/share/ShareMediaPhoto;

    .line 60
    return-void
.end method

.method public a(Lcom/facebook/orca/share/ShareMediaVideo;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/facebook/orca/share/ShareMediaBuilder;->f:Lcom/facebook/orca/share/ShareMediaVideo;

    .line 68
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/facebook/orca/share/ShareMediaBuilder;->a:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/facebook/orca/share/ShareMediaBuilder;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/facebook/orca/share/ShareMediaBuilder;->b:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/facebook/orca/share/ShareMediaBuilder;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/facebook/orca/share/ShareMediaBuilder;->c:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/facebook/orca/share/ShareMediaBuilder;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/facebook/orca/share/ShareMediaBuilder;->d:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public e()Lcom/facebook/orca/share/ShareMediaPhoto;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/facebook/orca/share/ShareMediaBuilder;->e:Lcom/facebook/orca/share/ShareMediaPhoto;

    return-object v0
.end method

.method public f()Lcom/facebook/orca/share/ShareMediaVideo;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/facebook/orca/share/ShareMediaBuilder;->f:Lcom/facebook/orca/share/ShareMediaVideo;

    return-object v0
.end method

.method public g()Lcom/facebook/orca/share/ShareMedia;
    .locals 1

    .prologue
    .line 71
    new-instance v0, Lcom/facebook/orca/share/ShareMedia;

    invoke-direct {v0, p0}, Lcom/facebook/orca/share/ShareMedia;-><init>(Lcom/facebook/orca/share/ShareMediaBuilder;)V

    return-object v0
.end method
