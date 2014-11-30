.class public Lcom/facebook/orca/server/ModifyThreadParamsBuilder;
.super Ljava/lang/Object;
.source "ModifyThreadParamsBuilder.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private c:Ljava/lang/String;

.field private d:Lcom/facebook/orca/attachments/MediaResource;

.field private e:Z

.field private f:Z

.field private g:Lcom/facebook/orca/notify/NotificationSetting;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/orca/attachments/MediaResource;)Lcom/facebook/orca/server/ModifyThreadParamsBuilder;
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/facebook/orca/server/ModifyThreadParamsBuilder;->d:Lcom/facebook/orca/attachments/MediaResource;

    .line 65
    return-object p0
.end method

.method public a(Lcom/facebook/orca/notify/NotificationSetting;)Lcom/facebook/orca/server/ModifyThreadParamsBuilder;
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/facebook/orca/server/ModifyThreadParamsBuilder;->g:Lcom/facebook/orca/notify/NotificationSetting;

    .line 83
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/facebook/orca/server/ModifyThreadParamsBuilder;
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/facebook/orca/server/ModifyThreadParamsBuilder;->a:Ljava/lang/String;

    .line 29
    return-object p0
.end method

.method public a(Z)Lcom/facebook/orca/server/ModifyThreadParamsBuilder;
    .locals 0

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/facebook/orca/server/ModifyThreadParamsBuilder;->b:Z

    .line 38
    return-object p0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/facebook/orca/server/ModifyThreadParamsBuilder;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/facebook/orca/server/ModifyThreadParamsBuilder;
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/facebook/orca/server/ModifyThreadParamsBuilder;->c:Ljava/lang/String;

    .line 47
    return-object p0
.end method

.method public b(Z)Lcom/facebook/orca/server/ModifyThreadParamsBuilder;
    .locals 0

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/facebook/orca/server/ModifyThreadParamsBuilder;->e:Z

    .line 56
    return-object p0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/facebook/orca/server/ModifyThreadParamsBuilder;->b:Z

    return v0
.end method

.method public c(Z)Lcom/facebook/orca/server/ModifyThreadParamsBuilder;
    .locals 0

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/facebook/orca/server/ModifyThreadParamsBuilder;->f:Z

    .line 74
    return-object p0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/facebook/orca/server/ModifyThreadParamsBuilder;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/facebook/orca/server/ModifyThreadParamsBuilder;->e:Z

    return v0
.end method

.method public e()Lcom/facebook/orca/attachments/MediaResource;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/facebook/orca/server/ModifyThreadParamsBuilder;->d:Lcom/facebook/orca/attachments/MediaResource;

    return-object v0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/facebook/orca/server/ModifyThreadParamsBuilder;->f:Z

    return v0
.end method

.method public g()Lcom/facebook/orca/notify/NotificationSetting;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/facebook/orca/server/ModifyThreadParamsBuilder;->g:Lcom/facebook/orca/notify/NotificationSetting;

    return-object v0
.end method

.method public h()Lcom/facebook/orca/server/ModifyThreadParams;
    .locals 1

    .prologue
    .line 87
    new-instance v0, Lcom/facebook/orca/server/ModifyThreadParams;

    invoke-direct {v0, p0}, Lcom/facebook/orca/server/ModifyThreadParams;-><init>(Lcom/facebook/orca/server/ModifyThreadParamsBuilder;)V

    return-object v0
.end method
