.class public Lcom/facebook/orca/share/SharePropertyBuilder;
.super Ljava/lang/Object;
.source "SharePropertyBuilder.java"


# annotations
.annotation build Ljavax/annotation/concurrent/NotThreadSafe;
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


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
    .line 20
    iget-object v0, p0, Lcom/facebook/orca/share/SharePropertyBuilder;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/facebook/orca/share/SharePropertyBuilder;->a:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/facebook/orca/share/SharePropertyBuilder;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/facebook/orca/share/SharePropertyBuilder;->b:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/facebook/orca/share/SharePropertyBuilder;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/facebook/orca/share/SharePropertyBuilder;->c:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public d()Lcom/facebook/orca/share/ShareProperty;
    .locals 1

    .prologue
    .line 44
    new-instance v0, Lcom/facebook/orca/share/ShareProperty;

    invoke-direct {v0, p0}, Lcom/facebook/orca/share/ShareProperty;-><init>(Lcom/facebook/orca/share/SharePropertyBuilder;)V

    return-object v0
.end method
