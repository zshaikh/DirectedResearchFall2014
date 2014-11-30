.class public Lcom/facebook/orca/share/ShareMediaVideoBuilder;
.super Ljava/lang/Object;
.source "ShareMediaVideoBuilder.java"


# annotations
.annotation build Ljavax/annotation/concurrent/NotThreadSafe;
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


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
    .line 21
    iget-object v0, p0, Lcom/facebook/orca/share/ShareMediaVideoBuilder;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/facebook/orca/share/ShareMediaVideoBuilder;->a:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/facebook/orca/share/ShareMediaVideoBuilder;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/facebook/orca/share/ShareMediaVideoBuilder;->b:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/facebook/orca/share/ShareMediaVideoBuilder;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/facebook/orca/share/ShareMediaVideoBuilder;->c:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/facebook/orca/share/ShareMediaVideoBuilder;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/facebook/orca/share/ShareMediaVideoBuilder;->d:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public e()Lcom/facebook/orca/share/ShareMediaVideo;
    .locals 1

    .prologue
    .line 53
    new-instance v0, Lcom/facebook/orca/share/ShareMediaVideo;

    invoke-direct {v0, p0}, Lcom/facebook/orca/share/ShareMediaVideo;-><init>(Lcom/facebook/orca/share/ShareMediaVideoBuilder;)V

    return-object v0
.end method
