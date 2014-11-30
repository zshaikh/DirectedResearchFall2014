.class public Lcom/facebook/orca/threads/AttachmentInfoBuilder;
.super Ljava/lang/Object;
.source "AttachmentInfoBuilder.java"


# annotations
.annotation build Ljavax/annotation/concurrent/NotThreadSafe;
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Lcom/facebook/orca/threads/AttachmentInfoBuilder;
    .locals 0

    .prologue
    .line 35
    iput p1, p0, Lcom/facebook/orca/threads/AttachmentInfoBuilder;->b:I

    .line 36
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/facebook/orca/threads/AttachmentInfoBuilder;
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/facebook/orca/threads/AttachmentInfoBuilder;->a:Ljava/lang/String;

    .line 27
    return-object p0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/facebook/orca/threads/AttachmentInfoBuilder;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/facebook/orca/threads/AttachmentInfoBuilder;->b:I

    return v0
.end method

.method public b(I)Lcom/facebook/orca/threads/AttachmentInfoBuilder;
    .locals 0

    .prologue
    .line 62
    iput p1, p0, Lcom/facebook/orca/threads/AttachmentInfoBuilder;->e:I

    .line 63
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/facebook/orca/threads/AttachmentInfoBuilder;
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/facebook/orca/threads/AttachmentInfoBuilder;->c:Ljava/lang/String;

    .line 45
    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/facebook/orca/threads/AttachmentInfoBuilder;
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/facebook/orca/threads/AttachmentInfoBuilder;->d:Ljava/lang/String;

    .line 54
    return-object p0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/facebook/orca/threads/AttachmentInfoBuilder;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/facebook/orca/threads/AttachmentInfoBuilder;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/facebook/orca/threads/AttachmentInfoBuilder;->e:I

    return v0
.end method

.method public f()Lcom/facebook/orca/threads/AttachmentInfo;
    .locals 1

    .prologue
    .line 67
    new-instance v0, Lcom/facebook/orca/threads/AttachmentInfo;

    invoke-direct {v0, p0}, Lcom/facebook/orca/threads/AttachmentInfo;-><init>(Lcom/facebook/orca/threads/AttachmentInfoBuilder;)V

    return-object v0
.end method
