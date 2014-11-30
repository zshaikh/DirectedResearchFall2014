.class public Lcom/facebook/orca/threads/ThreadSourceUtil;
.super Ljava/lang/Object;
.source "ThreadSourceUtil.java"


# instance fields
.field private final a:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/facebook/orca/threads/ThreadSourceUtil;->a:Landroid/content/res/Resources;

    .line 17
    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/orca/threads/Message;)I
    .locals 2

    .prologue
    .line 20
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->r()Ljava/lang/String;

    move-result-object v0

    .line 21
    const-string v1, "mobile"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 22
    const v0, 0x7f02005d

    .line 28
    :goto_0
    return v0

    .line 23
    :cond_0
    const-string v1, "chat"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 24
    const v0, 0x7f02005b

    goto :goto_0

    .line 25
    :cond_1
    const-string v1, "email"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 26
    const v0, 0x7f02005c

    goto :goto_0

    .line 28
    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public b(Lcom/facebook/orca/threads/Message;)Ljava/lang/String;
    .locals 3

    .prologue
    const v2, 0x7f0a010f

    .line 32
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->r()Ljava/lang/String;

    move-result-object v0

    .line 33
    const-string v1, "mobile"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 34
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadSourceUtil;->a:Landroid/content/res/Resources;

    const v1, 0x7f0a010e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 40
    :goto_0
    return-object v0

    .line 35
    :cond_0
    const-string v1, "chat"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 36
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadSourceUtil;->a:Landroid/content/res/Resources;

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 37
    :cond_1
    const-string v1, "email"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 38
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadSourceUtil;->a:Landroid/content/res/Resources;

    const v1, 0x7f0a0110

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 40
    :cond_2
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadSourceUtil;->a:Landroid/content/res/Resources;

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
